# -*- coding: utf-8 -*-
"""search_node_tool

import search_node_tool
reload(search_node_tool)
search_node_tool.SearchNodeTool().show_ui()

Starts with(Default)
    e.g.:
        text:joint1
        match:joint1,joint10,...

Perfect match
    There is "$" at the end.
    e.g.:
        text:joint1$
        match:joint1

Backward match
    There is "*" at the start and "$" at the end.
    e.g.:
        text:*joint1$
        match:joint1,LeftArm_joint1,

Partial Match
    There is "*" at the start.
    e.g.:
        text:*joint
        match:hip_joint,spinejoint_end,...

TODO:
    Exclude namespace (checkbox)

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
                self.case_chk_ui = pc.checkBox(label='Recognize case', changeCommand=self.change_condition)
                self.all_chk_ui = pc.checkBox(label='Include all types', changeCommand=self.change_condition)
                self.node_lst_ui = pc.textScrollList(allowMultiSelection=True, selectCommand=self.change_select)
                aflst = [[self.node_lst_ui, 'bottom', 0],
                         [self.node_lst_ui, 'left', 0],
                         [self.node_lst_ui, 'right', 0],
                         [self.txt_ui, 'left', 0],
                         [self.txt_ui, 'right', 0],
                         [self.case_chk_ui, 'left', 0],
                         [self.case_chk_ui, 'right', 0],
                         [self.all_chk_ui, 'left', 0],
                         [self.all_chk_ui, 'right', 0],
                         ]
                aclst = [[self.node_lst_ui, 'top', 0, self.txt_ui],
                         [self.txt_ui, 'top', 0, self.all_chk_ui],
                         [self.all_chk_ui, 'top', 0, self.case_chk_ui],
                         ]
                pc.formLayout(form1, e=True, attachForm=aflst, attachControl=aclst)

        typ = dict() if self.all_chk_ui.getValue() else dict(type='transform')
        all_nodes = cmds.ls(**typ)
        for node in all_nodes:
            self.node_lst_ui.append(node)

    def change_condition(self, *arg):
        status = 'Starts'
        pfx = ''
        sfx = '*'
        txt = self.txt_ui.getText()
        if txt.startswith('*') and txt.endswith('$'):
            status == 'Ends'
            pfx = '*'
            sfx = ''
            txt = txt[1:-1]
        elif txt.startswith('*'):
            status = 'Partial'
            pfx = '*'
            sfx = '*'
            txt = txt[1:]
        elif txt.endswith('$'):
            status = 'Perfect'
            pfx = ''
            sfx = ''
            txt = txt[:-1]

        self.node_lst_ui.removeAll()

        typ = dict() if self.all_chk_ui.getValue() else dict(type='transform')

        if not self.case_chk_ui.getValue():
            fil_nodes = cmds.ls(pfx + txt + sfx, **typ)
            for node in fil_nodes:
                self.node_lst_ui.append(node)
        else:
            txt_low = txt.lower()
            all_nodes = cmds.ls(**typ)
            for node in all_nodes:
                node_low = node.lower()
                if status == 'Partial':
                    if txt_low in node_low:
                        self.node_lst_ui.append(node)
                elif status == 'Perfect':
                    if txt_low == node_low:
                        self.node_lst_ui.append(node)
                elif status == 'Starts':
                    if node_low.startswith(txt_low):
                        self.node_lst_ui.append(node)
                elif status == 'Ends':
                    if node_low.endswith(txt_low):
                        self.node_lst_ui.append(node)

    def change_select(self):
        selected = self.node_lst_ui.getSelectItem()
        cmds.select(selected)
