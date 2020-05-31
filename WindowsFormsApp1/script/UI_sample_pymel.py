# 2ボタン
from __future__ import (absolute_import, unicode_literals, print_function, division)
import pymel.core as pc
from functools import partial
class test1(object):
    def __init__(self):
        self.win_name = 'tst1'
    def cmd_tmp(self, value, sender=None, btn=None):
        print('value = {}'.format(value))
        print('sender = {}'.format(sender))
        print('btn = {}'.format(btn))
        print(type(sender))
        if isinstance(sender, pc.uitypes.Button):
            pc.deleteUI(self.win)

    def win_name_create(self):
        if pc.window(self.win_name, ex=True):
            pc.deleteUI(self.win_name)
        self.win = pc.window(
            self.win_name, title='import_warning_ui', widthHeight=[331, 116])
        with self.win:
            with pc.formLayout(nd=100) as mainForm:
                with pc.columnLayout(adjustableColumn=True) as clmLyut:
                    pc.text(l='<注意>\n処理を開始しますか？', align='center')
                    self.chk1 = pc.checkBox()
                    self.chk1.setChangeCommand(partial(self.cmd_tmp, sender=self.chk1))
                self.b1 = pc.button(label='はい')
                self.b1.setCommand(partial(self.cmd_tmp, sender=self.b1, btn='yes'))
                self.b3 = pc.button(label='いいえ')
                self.b3.setCommand(partial(self.cmd_tmp, sender=self.b3, btn='no'))
                pc.formLayout(
                    mainForm, e=True,
                    # フォームにエッジをアタッチ
                    # [コントローラ, エッジ, オフセット]
                    # エッジ:'top|bottom|left|right'
                    attachForm=(
                        [self.b1, 'left', 5], [self.b1, 'bottom', 5],
                        [self.b3, 'bottom', 5], [self.b3, 'right',5]),
                    # エッジ位置指定
                    # [コントローラ, エッジ, オフセット, 位置(%)]
                    attachPosition=(
                        [self.b1, 'right', 0, 49], [self.b3, 'left', 0, 51], [clmLyut, 'right', 0, 100],
                        [clmLyut, 'left', 0, 0], [clmLyut, 'top', 0, 5]),
                    # エッジをアタッチしない
                    # [コントローラ, エッジ]
                    attachNone=([self.b1, 'top'], [self.b3, 'top']),
                    # コントローラAのエッジをコントローラBにアタッチ
                    # [コントローラA, エッジ, オフセット, コントローラB]
                    attachControl=[clmLyut, 'bottom', 5, self.b3])
        pc.showWindow(self.win_name)
cls1 = test1()
cls1.win_name_create()


# 3ボタン
from __future__ import (absolute_import, unicode_literals, print_function, division)
import pymel.core as pc
from functools import partial
def cmd_tmp(*args):
    print(args)
def win_sample():
    win_name = 'test_win'
    if pc.window(win_name, exists=True):
        pc.deleteUI(win_name, window=True)
    win = pc.window(win_name, title='TEST WINDOW',widthHeight=(600,350))
    main_form = pc.formLayout( numberOfDivisions=100 )
    b1 = pc.button(label='Command 1', height=26, command=partial(cmd_tmp, 'A', 'B', 'C'))
    b2 = pc.button(label='Command 2', height=26, command=partial(cmd_tmp, 'D', 'E', 'F'))
    b3 = pc.button(label='Command 3', height=26, command=partial(cmd_tmp, 'G', 'H', 'I'))
    pc.formLayout(
        main_form, edit=True,
        #フォームの境界にボタンのどのエッジを固定するかの指定。
        # オフセット値を5としている。
        attachForm = (
            [ b1, 'left', 5 ], [ b1, 'bottom', 5 ], [ b2, 'bottom', 5 ],
            [ b3, 'bottom', 5 ], [ b3, 'right', 5 ]),
        #ボタンをフォームのどの位置に固定するかの指定。
        # b1の右辺を33%の位置に、b3の左辺を67%の位置に。
        attachPosition = ([ b1, 'right' , 0, 33], [ b3, 'left' , 0, 67]),
        #真ん中のボタンb2が左右のボタンの隣接する辺に固定ための設定。
        attachControl = ([ b2, 'left', 4,  b1 ], [ b2, 'right', 4, b3 ]),
        #すべてのボタンの上辺は固定しない。
        attachNone = ([ b1, 'top' ], [ b2, 'top' ], [ b3, 'top' ]))
    pc.showWindow(win)
win_sample()
