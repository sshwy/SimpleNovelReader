/***
# SimpleNovelReader

## *v0.1*

设计了开始界面StartWindow，设计了球形按钮

## 简介

利用网络爬虫，自动抓取小说，在本地阅读，内嵌阅读器

## 工程计划

语言：`Qt5` `Python`

基本架构：Qt5前端GUI，Python用于后端网络爬虫

平台：`Windows` `Linux`

## 功能预设

* [ ] 爬取网站上的文本小说，进行文件的整合；不同的网站设计不同的爬虫架构
* [ ] 添加源网站，判断爬虫架构的可行性
* [ ] 内嵌阅读器，支持本地阅读
* [ ] 爬取连载小说
* [ ] 爬取带图片的小说，排除广告
* [ ] 自动识别小说章节，优化阅读体验
* [ ] 云同步

## 开发人员

`sscyc `团队

## 代码体系设计

见别文
***/
import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.3
import QtQuick.Controls 1.2
ApplicationWindow {//主窗口
    id: root
    visible: true
    width: 1080
    height: 720
    title: qsTr("Simple Novel Reader 0.1")
    color: "#DCDCDC"
    StartWindow{
        visible: true
    }


    /*Row{//顶部状态栏
        id: top_status
        anchors.top: parent.top
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        spacing: 2
        Rectangle{//退出按钮
            width: 48
            height: 20
            Text{
                anchors.centerIn: parent
                text: qsTr("Quit")
            }
            MouseArea{
                anchors.fill: parent
                onClicked: Qt.quit();
            }
        }
        Rectangle{//帮助弹窗
            width: 48
            height: 20
            Text{
                anchors.centerIn: parent
                text: qsTr("Help")
            }
            Dialog{
                id: help_dialog
                Label{
                    text: qsTr("This is a dialog for help!\nSNR")
                }
            }
            MouseArea{
                anchors.fill: parent
                onClicked: help_dialog.open();
            }
        }
    }
    Rectangle{//侧边栏
        id: side_bar
        width: parent.width/5
        height: parent.height-50
        anchors.top: top_status.bottom
        anchors.topMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        Text{
            anchors.centerIn: parent
            text: qsTr("side_bar")
        }
    }
    Rectangle{//正文部分
        id: field_area
        width: parent.width-side_bar.width-24
        height: side_bar.height
        anchors.top: top_status.bottom
        anchors.topMargin: 8
        anchors.left: side_bar.right
        anchors.leftMargin: 8
        Text{
            anchors.centerIn: parent
            text: qsTr("field_area")
        }
    }*/
}
