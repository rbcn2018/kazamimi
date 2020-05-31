# -*- coding: utf-8 -*-

from maya import cmds, mel
import maya.api.OpenMaya as om
#from PySide2 import QtWidgets, QtGui, QtCore
from libs.Qt import QtWidgets, QtGui, QtCore

class ChildrenListModel(QtCore.QAbstractListModel):
    def __init__(self, items, parent=None):
        super(ChildrenListModel, self).__init__(parent)
        self.items = items

    def rowCount(self, parent=QtCore.QModelIndex()):
        return len(self.items)

    def refresh(self, items):
        self.items = items
        self.layoutAboutToBeChanged.emit()
        self.beginResetModel()
        self.endResetModel()
        self.layoutChanged.emit()

    def data(self, index, role=QtCore.Qt.DisplayRole):
        if not index.isValid():
            return None
        row = index.row()
        item = self.items[row]
        if role == QtCore.Qt.DisplayRole:
            return item.split('|')[-1]

        if role == QtCore.Qt.UserRole:
            return item

        else:
            return None

    def flags(self, index):
        return QtCore.Qt.ItemIsSelectable | QtCore.Qt.ItemIsEnabled

class ChildrenList(QtWidgets.QListView):
    def __init__(self, node_types=[], parent=None):
        super(ChildrenList, self).__init__()
        self.node_types = node_types
        self.init_ui()

    def init_ui(self):
        self.setSelectionMode(QtWidgets.QAbstractItemView.ExtendedSelection)
        self.get_items()
        self.model = ChildrenListModel(self.items, parent=self)
        self.proxy_model = QtCore.QSortFilterProxyModel()
        self.setModel(self.proxy_model)
        self.proxy_model.setSourceModel(self.model)

        self.sel_model = QtCore.QItemSelectionModel(self.proxy_model)
        self.setSelectionModel(self.sel_model)

        self.add_selection_changed_event()

        self.sel_model.selectionChanged.connect(self.select_node)

    def get_items(self):
        sel_obj = cmds.ls(sl=True)
        if not sel_obj:
            items = cmds.ls(type='transform')
            if 'shape' in self.node_types:
                items += cmds.ls(shapes=True)
        else:
            items = cmds.ls(sl=True, dag=True, type='transform')
            if 'shape' in self.node_types:
                items += cmds.ls(sl=True, dag=True, shapes=True)
            sel_sets = cmds.ls(sl=True, sets=True)
            for sel_set in sel_sets:
                set_member = cmds.sets(sel_set, q=True)
                items += set_member
        constraints = []
        if not 'constraint' in self.node_types:
            constraints = cmds.ls(type='constraint')
        self.items = list(set(items) - set(constraints))
        self.items.sort()

    def select_node(self, selected, deselected):
        self.remove_callback_event()
        indexes = self.sel_model.selectedIndexes()
        if not indexes:
            return
        nodes = []
        for index in indexes:
            index = self.proxy_model.mapToSource(index)
            node = index.data(role=QtCore.Qt.UserRole)
            nodes.append(node)
        cmds.select(nodes, r=True)
        self.add_selection_changed_event()

    def selection_changed_event(self, client_data):
        self.get_items()
        self.model.refresh(self.items)

    def add_selection_changed_event(self):
        self.selection_callback = om.MEventMessage.addEventCallback(
            'SelectionChanged', self.selection_changed_event
        )

    def remove_callback_event(self):
        try:
            om.MMessage.removeCallback(self.selection_callback)
        except:
            pass

    def closeEvent(self, event):
        self.remove_callback_event()
        self.deleteLater()

class ChildrenListViewer(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(ChildrenListViewer, self).__init__()
        self.setWindowTitle('Search Children')
        self.init_ui()

    def init_ui(self):
        self.search_bar = QtWidgets.QLineEdit()
        self.search_bar.setPlaceholderText('Search...')
        #self.search_bar.setClearButtonEnabled(True)

        include_radio = QtWidgets.QRadioButton('Incrude')
        include_radio.setChecked(True)
        start_radio = QtWidgets.QRadioButton('Start')
        end_radio = QtWidgets.QRadioButton('End')
        self.radio_group = QtWidgets.QButtonGroup()
        self.radio_group.addButton(include_radio)
        self.radio_group.addButton(start_radio)
        self.radio_group.addButton(end_radio)

        radio_layout = QtWidgets.QHBoxLayout()
        radio_layout.addWidget(include_radio)
        radio_layout.addWidget(start_radio)
        radio_layout.addWidget(end_radio)

        self.const_check = QtWidgets.QCheckBox('Constraint')
        self.shape_check = QtWidgets.QCheckBox('Shape')
        check_layout = QtWidgets.QHBoxLayout()
        check_layout.addWidget(self.const_check)
        check_layout.addWidget(self.shape_check)

        self.list_view = ChildrenList()
        main_layout = QtWidgets.QVBoxLayout()
        main_layout.addLayout(check_layout)
        main_layout.addWidget(self.search_bar)
        main_layout.addLayout(radio_layout)
        main_layout.setAlignment(radio_layout, QtCore.Qt.AlignRight)
        main_layout.addWidget(self.list_view)
        self.setLayout(main_layout)

        self.search_bar.textChanged.connect(self.filter_items)
        self.radio_group.buttonClicked.connect(self.filter_items)
        self.const_check.toggled.connect(self.refresh_items)
        self.shape_check.toggled.connect(self.refresh_items)

    def filter_items(self, text):
        text = self.search_bar.text()
        filter_type = self.radio_group.checkedId()
        if filter_type == -3:
            text = '^' + text
        if filter_type == -4:
            text += '$'
        reg_exp = QtCore.QRegExp(
            text, QtCore.Qt.CaseInsensitive)
        self.list_view.proxy_model.setFilterRegExp(reg_exp)

    def refresh_items(self):
        self.node_types = []
        if self.const_check.isChecked():
            self.node_types.append('constraint')
        if self.shape_check.isChecked():
            self.node_types.append('shape')
        self.list_view.node_types = self.node_types
        self.list_view.get_items()
        self.list_view.model.refresh(self.list_view.items)


def get_parent_window(name):
    for widget in QtWidgets.QApplication.topLevelWidgets():
        if widget.objectName() == name:
            return widget
    return None

def main():
    main_window = get_parent_window('MayaWindow')
    window = ChildrenListViewer()
    window.setParent(main_window, QtCore.Qt.Window)
    window.resize(280, 420)
    window.show()
