# -*- coding:utf-8 -*-
"""汎用関数
"""

from __future__ import (print_function, unicode_literals, absolute_import, generators, division)

import maya.cmds as cmds
import maya.api.OpenMaya as om2


def makeNode(fit=None, fitT=None, fitR=None, resetT=None, resetR=None, name=None,
             shpTyp=None, scl=None, move=None, p=None, lock=None):
    """ノード生成
    """

    if not move:
        move = [0.0, 0.0, 0.0]

    if not scl:
        scl = [1.0, 1.0, 1.0]

    if not shpTyp:
        node = cmds.group(em=True, world=True)

    if 'loc' == shpTyp:
        node = cmds.spaceLocator()[0]

    elif 'cube' == shpTyp:
        node = crvCube(scl, move)

    if name:
        node = cmds.rename(node, name)

    if p:
        cmds.parent(node, p)

    if fit:
        setTR(node, tFit=fit, rFit=fit)

    else:
        setTR(node, tFit=fitT, rFit=fitR)

    if resetT or resetR:
        setTR(node, tReset=resetT, rReset=resetR)

    # 不要アトリビュートロック
    if lock:
        lockAttrs(node, **lock)

    return node


def changeTransform2Joint(node):
    _par = cmds.listRelatives(node, p=True, fullPath=True)
    _shp = cmds.listRelatives(node, s=True, noIntermediate=True, fullPath=True)[0]
    _jnt = cmds.createNode('joint')
    cmds.setAttr(_jnt + '.drawStyle', 2)
    cmds.parent([_shp, _jnt], add=True, shape=True, noConnections=True)
    cmds.delete(node)
    cmds.rename(_jnt, node)
    if _par:
        cmds.parent(_jnt, _par)


def crvCube(scl, move):
    xscl = scl[0]
    yscl = scl[1]
    zscl = scl[2]
    posx = move[0]
    posy = move[1]
    posz = move[2]
    pos1 = (-xscl + posx, -yscl + posy, zscl + posz)
    pos2 = (-xscl + posx, yscl + posy, zscl + posz)
    pos3 = (xscl + posx, yscl + posy, zscl + posz)
    pos4 = (xscl + posx, -yscl + posy, zscl + posz)
    pos5 = (xscl + posx, -yscl + posy, -zscl + posz)
    pos6 = (xscl + posx, yscl + posy, -zscl + posz)
    pos7 = (-xscl + posx, yscl + posy, -zscl + posz)
    pos8 = (-xscl + posx, -yscl + posy, -zscl + posz)
    crv = cmds.curve(degree=True, point=[
        pos1, pos2, pos3, pos4,
        pos5, pos6, pos7, pos8,
        pos1, pos4, pos3, pos6,
        pos5, pos8, pos7, pos2])
    changeTransform2Joint(crv)
    return crv


def setTR(tgt, tFit=None, rFit=None, tReset=False, rReset=False):
    """移動、回転値を指定値に設定、もしくは指定オブジェクトにマッチさせる
    """
    print('tgt = ', tgt)
    print('tFit = ', tFit)
    print('rFit = ', rFit)
    if tReset:
        cmds.move(0.0, 0.0, 0.0, tgt, a=True, ws=True)

    if rReset:
        cmds.rotate(0.0, 0.0, 0.0, tgt, a=True, ws=True)

    if tFit:
        if isinstance(tFit, list):
            t1 = tFit

        else:
            t1 = cmds.xform(tFit, q=True, ws=True, t=True)

        cmds.xform(tgt, ws=True, t=t1)

    if rFit:
        if isinstance(rFit, list):
            r1 = rFit

        else:
            r1 = cmds.xform(rFit, q=True, ws=True, ro=True)

        cmds.xform(tgt, ws=True, ro=r1)
        if 'joint' == cmds.objectType(tgt):
            print('joint ok')
            joReset(tgt)


def lockAttrs(tgt, atrs=None, _t=False, _r=False, _s=False):
    """不要アトリビュートロック
    """
    if not atrs:
        atrs = []
        atrs += ['tx', 'ty', 'tz'] if _t else []
        atrs += ['rx', 'ry', 'rz'] if _r else []
        atrs += ['sx', 'sy', 'sz'] if _s else []

    print('atrs = ', atrs)
    for atr in atrs:
        cmds.setAttr('{}.{}'.format(tgt, atr), lock=True, keyable=False, channelBox=False)


def hideBones(_jnts):
    """骨のドロースタイルを無しに設定
    """
    for _jnt in _jnts:
        cmds.setAttr('{}.drawStyle'.format(_jnt), 2)
        cmds.setAttr('{}.displayLocalAxis'.format(_jnt), False)


def mirrorNode(mst, slv, jo=None):
    """ビヘイビアミラー
    """
    # slvをmstのミラー状態に
    m1 = om2.MMatrix(cmds.getAttr(mst + '.worldMatrix'))
    m2 = om2.MMatrix((
        m1[0], -m1[1], -m1[2], 0.,
        m1[4], -m1[5], -m1[6], 0.,
        m1[8], -m1[9], -m1[10], 0.,
        -m1[12], m1[13], m1[14], 1.))
    cmds.xform(slv, matrix=m2, ws=True)
    if jo:
        joReset(slv)
        cmds.setAttr(slv + '.jo', *cmds.getAttr(slv + '.r')[0])
        cmds.setAttr(slv + '.r', 0.0, 0.0, 0.0)


def joReset(tgt):
    """JointOrientリセット
    """
    print('tgt = ', tgt)
    world_rot = cmds.xform(tgt, q=True, ro=True, ws=True)
    print('world_rot = ', world_rot)
    cmds.setAttr(tgt + '.jo', 0.0, 0.0, 0.0)
    cmds.xform(tgt, ro=world_rot, ws=True)


def nodeName(_name):
    """ノード名取得
    """
    if not isinstance(_name, basestring):
        _name = _name.name()

    if ':' in _name:
        _name = _name.split(':')[-1]

    if '|' in _name:
        _name = _name.split('|')[-1]

    return _name


# def makeLinerCurve(srcLst):
#     """リニアカーブ生成

#     Args:
#         srcLst ([type]): [description]
#     """
#     pos_lst = [cmds.xform(node, q=True, ws=True, t=True) for node in srcLst]
#     print('pos_lst = ', pos_lst)
#     crv = cmds.curve(degree=True, point=pos_lst)


def makeFitCurve():
    """チェインに沿ったCV4つのカーブを生成
    """
    _ikh, _eff, _crv = cmds.ikHandle(
        startJoint='C_Spine01',
        endEffector='C_Spine08',
        solver='ikSplineSolver',
        simplifyCurve=False,
    )
    cmds.delete(_ikh)
    cmds.rebuildCurve(
        _crv,
        constructionHistory=True,
        replaceOriginal=False,
        rebuildType=0,
        endKnots=1,
        keepRange=0,
        keepControlPoints=False,
        keepEndPoints=True,
        keepTangents=0,
        spans=1,
        degree=2,
        tolerance=0.01)
