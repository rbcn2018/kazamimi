# -*- coding: utf-8 -*-
"""search_node_tool

import search_node_tool
reload(search_node_tool)
search_node_tool.SearchNodeTool().show_ui()


Partial Match(Default)
    e.g.:
        text:joint
        match:hip_joint,spinejoint_end,...

Starts with
    There is "^" at the start.
    e.g.:
        text:^joint1
        match:joint1,joint10,...

Backward match
    There is "$" at the end.
    e.g.:
        text:joint1$
        match:joint1,LeftArm_joint1,

Perfect match
    There is "^" at the start and "$" at the end.
    e.g.:
        text:*joint1$
        match:joint1

"""

import maya.cmds as cmds
import pymel.core as pc


class SearchNodeTool():
    def show_ui(self):
        wname = "SearchNodeTool"
        if pc.window(wname, q=True, ex=True):
            pc.deleteUI(wname)
        with pc.window(wname, maximizeButton=False, minimizeButton=False):
            with pc.formLayout() as form1:
                self.txt_ui = pc.textField(textChangedCommand=self.change_condition)
                self.ex_ns_chk_ui = pc.checkBox(label='Exclude namespace', changeCommand=self.change_condition)#, value=True)
                self.rec_case_chk_ui = pc.checkBox(label='Recognize case', changeCommand=self.change_condition)
                self.alltype_chk_ui = pc.checkBox(label='Include all types', changeCommand=self.change_condition)
                self.node_lst_ui = pc.textScrollList(allowMultiSelection=True, selectCommand=self.change_select)
                aflst = [[self.node_lst_ui, 'bottom', 0],
                         [self.node_lst_ui, 'left', 0],
                         [self.node_lst_ui, 'right', 0],
                         [self.txt_ui, 'left', 0],
                         [self.txt_ui, 'right', 0],
                         ]
                aclst = [[self.node_lst_ui, 'top', 0, self.txt_ui],
                         [self.txt_ui, 'top', 0, self.rec_case_chk_ui],
                         [self.rec_case_chk_ui, 'top', 0, self.alltype_chk_ui],
                         [self.alltype_chk_ui, 'top', 0, self.ex_ns_chk_ui],
                         ]
                pc.formLayout(form1, e=True, attachForm=aflst, attachControl=aclst)

        all_typ = self.alltype_chk_ui.getValue()
        typ = dict() if all_typ else dict(type='transform')
        all_nodes = cmds.ls(**typ)
        if not all_typ:
            ex_type = cmds.ls(all_nodes, type=['animCurve', 'constraint'])
            all_nodes = list(set(all_nodes) - set(ex_type))
        for node in sorted(all_nodes):
            self.node_lst_ui.append(node)

    def change_condition(self, *arg):
        status = 'Partial'
        txt = self.txt_ui.getText()
        if txt.startswith('^') and txt.endswith('$'):
            status = 'Perfect'
            txt = txt[1:-1]
        elif txt.startswith('^'):
            status = 'Starts'
            txt = txt[1:]
        elif txt.endswith('$'):
            status == 'Ends'
            txt = txt[:-1]

        self.node_lst_ui.removeAll()

        all_typ = self.alltype_chk_ui.getValue()
        case_chk = self.rec_case_chk_ui.getValue()
        ex_ns = self.ex_ns_chk_ui.getValue()

        typ = dict() if all_typ else dict(type='transform')
        txt2 = txt if case_chk else txt.lower()
        all_nodes = cmds.ls(**typ)
        if not all_typ:
            ex_type = cmds.ls(all_nodes, type=['animCurve', 'constraint'])
            all_nodes = list(set(all_nodes) - set(ex_type))
        for node in sorted(all_nodes):
            if not txt2:
                self.node_lst_ui.append(node)
                continue

            node2 = node if case_chk else node.lower()
            if ex_ns:
                node2 = node2.rsplit(':')[-1]

            if status == 'Partial':
                if txt2 in node2:
                    self.node_lst_ui.append(node)

            elif status == 'Perfect':
                if txt2 == node2:
                    self.node_lst_ui.append(node)

            elif status == 'Starts':
                if node2.startswith(txt2):
                    self.node_lst_ui.append(node)

            elif status == 'Ends':
                if node2.endswith(txt2):
                    self.node_lst_ui.append(node)

    def change_select(self):
        selected = self.node_lst_ui.getSelectItem()
        cmds.select(selected)
