# -*- coding: utf-8 -*-
"""------------------------------------------------------------------------------
概要：背骨リグ

実行例：
import traceback
import maya.mel
maya.mel.eval('sy_IllbeBack;')
try:
    import makeSpineRig;reload(makeSpineRig)
    makeSpineRig.main()
except:
    raise Exception(traceback.format_exc(sys.exc_info()))
------------------------------------------------------------------------------"""

from __future__ import (print_function, unicode_literals, absolute_import, generators, division)
# import traceback

import maya.cmds as cmds
# import maya.api.OpenMaya as om2

import sycmn as c1
reload(c1)


def main(_jnts=None):
    hide_bones_stat = True
    base_jnts = _jnts

    if not base_jnts:
        tree_all = cmds.ls('C_Spine01', dag=True)
        if tree_all:
            base_jnts = [node for node in tree_all if node.startswith('C_Spine')]
            if base_jnts:
                if cmds.objExists('C_Neck01'):
                    base_jnts.append('C_Neck01')
    if not base_jnts:
        return

    rig_root_leg = c1.makeNode(fit=base_jnts[0], name='rigRootLeg')

    # 腰ルートコントローラA
    waist_a_ctl = c1.makeNode(
        fit=rig_root_leg,
        name='waistACtl',
        shpTyp='cube',
        scl=[.5, 3., 3.],
        p=rig_root_leg
    )
    # 不要アトリビュートロック
    c1.lockAttrs(waist_a_ctl, t=False, r=False, s=True)

    # 腰ルートコントローラB
    waist_b_ctl = c1.makeNode(
        fit=rig_root_leg,
        name='waistBCtl',
        shpTyp='cube',
        scl=[.5, 2., 2.],
        p=waist_a_ctl
    )
    # 不要アトリビュートロック
    c1.lockAttrs(waist_b_ctl, t=False, r=False, s=True)

    # 骨階層複製
    dup_chain1 = []
    for _i in range(len(base_jnts)):
        djnt = cmds.duplicate(base_jnts[_i], renameChildren=True, parentOnly=True)[0]
        if 0 == _i:
            cmds.parent(djnt, waist_a_ctl)
        else:
            cmds.parent(djnt, dup_chain1[-1])
        dup_chain1.append(djnt)
    cmds.makeIdentity(dup_chain1[0], apply=1, rotate=1)
    if hide_bones_stat:
        c1.hideBones(dup_chain1)

    # # ターゲット骨・一旦非表示
    # cmds.setAttr('{}.visibility'.format(base_jnts[0]), False)

    # 先端捻りコントローラ用仕込み -------------------
    # _up3 =
    c1.makeNode(fit=rig_root_leg, name='up3', p=waist_a_ctl)

    # 先端捻りコントローラオフセット1
    twist_end_origin1 = c1.makeNode(name='twistEndOrigin1', p=rig_root_leg)

    # 先端捻りコントローラオフセット2
    twist_end_origin2 = c1.makeNode(name='twistEndOrigin2', p=twist_end_origin1)
    cmds.setAttr('{}.inheritsTransform'.format(twist_end_origin2), False)
    cmds.scaleConstraint(rig_root_leg, twist_end_origin2)

    # 先端捻りコントローラトップ
    twist_end_ctl_top = c1.makeNode(name='twistEndCtlTop', p=twist_end_origin2)
    cmds.setAttr('.rz'.format(twist_end_ctl_top), 90.)

    # 先端捻りコントローラ
    twist_end_ctl = cmds.circle(
        name='twistEndCtl',
        radius=2.5,
        degree=1,
        sections=5,
        constructionHistory=False,
        normal=[1., 0., 0.])[0]
    # cmds.setAttr('.rx'.format(twist_end_ctl), 90.)
    # cmds.makeIdentity(twist_end_ctl, apply=1, rotate=1)
    cmds.parent(twist_end_ctl, twist_end_ctl_top)
    c1.setTR(twist_end_ctl, tFit=twist_end_ctl_top, rFit=twist_end_ctl_top)
    # 不要アトリビュートロック
    c1.lockAttrs(twist_end_ctl, atrs=['tx', 'ty', 'tz', 'ry', 'rz', 'sx', 'sy', 'sz'])

    # IK設定1(spring)
    _ikhandle, _ikEff, _ikCrv = cmds.ikHandle(
        startJoint=dup_chain1[0],
        endEffector=dup_chain1[-1],
        solver='ikSplineSolver',
        simplifyCurve=True,
        rootOnCurve=True,
        parentCurve=False)

    cmds.parent(_ikhandle, _ikCrv, rig_root_leg)

    _md1 = cmds.createNode('multiplyDivide')
    cmds.connectAttr('{}.rx'.format(twist_end_ctl), '{}.input2X'.format(_md1))
    cmds.setAttr('{}.input1X'.format(_md1), -1)
    cmds.connectAttr('{}.outputX'.format(_md1), '{}.twist'.format(_ikhandle))

    mot_path = cmds.pathAnimation(
        twist_end_origin2,
        curve=_ikCrv,
        fractionMode=True,
        follow=True,
        followAxis='x',
        upAxis='y',
        worldUpType='objectrotation',
        worldUpVector=[0, 1, 0],
        worldUpObject='up3',
        inverseUp=False,
        inverseFront=False,
        bank=False,
        startTimeU=0
    )
    cmds.cutKey(mot_path, clear=True, at='uValue')
    cmds.setAttr('{}.uValue'.format(mot_path), 1.)
    cmds.setAttr('{}.sideTwist'.format(mot_path), 90.)

    # 移動コントローラ用仕込み -------------------
    clstr_lst = []
    # pos_ctl_top_lst = []
    # pos_ctl_lst = []
    curve_cv_lst = cmds.ls('{0}.cv[:]'.format(_ikCrv), fl=True)
    for _i in range(len(curve_cv_lst)):
        # 腰以外はコントローラを生成
        if _i != 0:
            # 移動コントローラトップ
            _wp = cmds.pointPosition(curve_cv_lst[_i], world=True)
            pos_ctl_top = c1.makeNode(
                fitT=_wp,
                fitR=waist_b_ctl,
                name='posCtlTop{}'.format(_i + 1),
                p=waist_a_ctl
            )
            # pos_ctl_top_lst.append(pos_ctl_top)

            _scl = [.5, 1.5, 1.5]
            if _i == len(curve_cv_lst) - 1:
                _scl = [0.5, 3., 3.]

            # 移動コントローラ
            pos_ctl = c1.makeNode(
                fit=pos_ctl_top,
                name='posCtl{}'.format(_i + 1),
                shpTyp='cube',
                scl=_scl,
                p=pos_ctl_top
            )
            # pos_ctl_lst.append(pos_ctl)

            # 不要アトリビュートロック
            c1.lockAttrs(pos_ctl, t=False, r=True, s=True)

        if _i == 1:
            # 腰の次のコントローラを腰に追従させる
            cmds.parentConstraint(waist_b_ctl, pos_ctl_top, mo=1)

        # カーブCVクラスター
        _clstr = cmds.cluster(curve_cv_lst[_i], relative=1)[1]
        clstr_lst.append(_clstr)
        if _i == 0:
            cmds.pointConstraint(waist_b_ctl, _clstr)
        else:
            cmds.pointConstraint(pos_ctl, _clstr)

    # # 腰の次のコントローラを腰に追従させる
    # cmds.parentConstraint(waist_b_ctl, pos_ctl_top_lst[0], mo=1)
    # # 最後のコントローラで末端骨の回転を制御
    # cmds.orientConstraint(pos_ctl_lst[-1], dup_chain1[-1])

    # カーブCVクラスタートップ
    clstr_top = c1.makeNode(name='clstrTop', p=rig_root_leg)

    cmds.parent(clstr_lst, clstr_top)

    # ターゲット骨拘束
    cmds.pointConstraint(dup_chain1[0], base_jnts[0])
    for _dup, _bas in zip(dup_chain1, base_jnts):
        cmds.orientConstraint(_dup, _bas, mo=True)
