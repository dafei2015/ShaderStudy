﻿using UnityEngine;
using System.Collections;

//添加组件菜单
[AddComponentMenu("浅墨's Toolkit v1.1/ShowUI")]
public class ShowUI : MonoBehaviour
{
    public Texture2D midBottomPic;//用于修饰的横条

    void OnGUI()
    {
        if (midBottomPic)
        {
            //--------------------------【中下方横条的绘制】-------------------------
            GUI.DrawTexture(new Rect(Screen.width / 2 - midBottomPic.width / 2, 0, midBottomPic.width, midBottomPic.height), midBottomPic);
        }

    }
}
