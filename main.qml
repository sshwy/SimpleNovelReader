/***
# SimpleNovelReader

## *v0.2*

设计了初步GUI框架（QML）

## *v0.1*

设计了开始界面StartWindow，设计了球形按钮

## 简介

利用网络爬虫，自动抓取小说，在本地阅读，内嵌阅读器

## 工程计划

语言：`QML` `Python` `C++`

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

    TobeDev{
        id: tobeDev
    }
    Dialog{
        id: help_dialog
        Label{
            text: qsTr("This is a dialog for help!\nSNR")
        }
    }

    Item{
        id: startwindow
        anchors.fill: parent
        visible: true
        Image {//背景图片
            id: startwindow_background
            source: "image/startwindow_background.jpg"
            anchors.fill: parent
            opacity: 0.5
        }
        Label{
            text: qsTr("Simple Novel Reader v0.1")
            font.pixelSize: 50
            font.bold: true
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
        }
        Column{
            anchors.centerIn: parent
            spacing: 10
            Row{//两个按钮
                spacing:100
                Circle{//阅读器按钮
                    width: 400
                    color: "red"
                    opacity: 0.7
                    Label{
                        text: qsTr("Read")
                        font.pixelSize: 70
                        font.bold: true
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            console.log("PushButton: [Read]");
                            startwindow.visible=false
                            readwindow.visible=true
                        }
                        onPressed: parent.color="firebrick"
                        onReleased: parent.color="red"
                    }
                }
                Circle{//爬虫界面按钮
                    width: 400
                    color: "blue"
                    opacity: 0.7
                    Label{
                        text: qsTr("Search")
                        font.pixelSize: 70
                        font.bold: true
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            console.log("PushButton: [Search]");
                            startwindow.visible=false
                            searchwindow.visible=true
                        }
                        onPressed: parent.color="navy"
                        onReleased: parent.color="blue"
                    }
                }
            }
            Row{
                spacing:50
                Circle{//帮助按钮
                    width: 150
                    color: "blue"
                    opacity: 0.7
                    Label{
                        text: qsTr("Help")
                        font.pixelSize: parent.width/4
                        font.bold: true
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            console.log("PushButton: [Help]");
                            tobeDev.show()
                        }
                        onPressed: parent.color="navy"
                        onReleased: parent.color="blue"
                    }
                }
                Circle{//退出按钮
                    width: 150
                    color: "blue"
                    opacity: 0.7
                    Label{
                        text: qsTr("Quit")
                        font.pixelSize: parent.width/4
                        font.bold: true
                        anchors.centerIn: parent
                    }
                    MouseArea{
                        anchors.fill: parent
                        hoverEnabled: true
                        onClicked: {
                            console.log("PushButton: [Quit]");
                            Qt.quit()
                        }
                        onPressed: parent.color="navy"
                        onReleased: parent.color="blue"
                    }
                }
            }
        }
    }
    Item{
        id: readwindow
        visible: false
        anchors.fill: parent
        Rectangle{
            width: parent.width
            height: parent.height
            color:"#DCDCDC"
            Row{//顶部状态栏
                id: readwindow_topstatus
                visible: true
                anchors.top: parent.top
                anchors.topMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                spacing: 4
                Rectangle{//返回主菜单按钮
                    width: 60
                    height: 30
                    Label{
                        anchors.centerIn: parent
                        text: qsTr("Back")
                        font.bold: true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            readwindow.visible=false
                            startwindow.visible=true
                        }
                    }
                }
                Rectangle{//帮助弹窗
                    width: 60
                    height: 30
                    Label{
                        anchors.centerIn: parent
                        text: qsTr("Help")
                        font.bold: true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: help_dialog.open();
                    }
                }
            }
            Rectangle{//侧边栏
                id: readwindow_sidebar
                width: parent.width/4
                height: parent.height-readwindow_topstatus.height-24
                anchors.top: readwindow_topstatus.bottom
                anchors.topMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                Label{
                    anchors.centerIn: parent
                    text: qsTr("side_bar")
                }
            }
            Rectangle{//正文部分
                id: readwindow_fieldarea
                width: parent.width-readwindow_sidebar.width-24
                height: readwindow_sidebar.height
                anchors.top: readwindow_topstatus.bottom
                anchors.topMargin: 8
                anchors.left: readwindow_sidebar.right
                anchors.leftMargin: 8
                Label{
                    anchors.centerIn: parent
                    text: qsTr("field_area")
                }
            }
        }
    }
    Item{
        id: searchwindow
        visible: false
        anchors.fill: parent
        Rectangle{
            width: parent.width
            height: parent.height
            color:"#DCDCDC"
            Row{//顶部状态栏
                id: searchwindow_topstatus
                visible: true
                anchors.top: parent.top
                anchors.topMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                spacing: 4
                Rectangle{//返回主菜单按钮
                    width: 60
                    height: 30
                    Label{
                        anchors.centerIn: parent
                        text: qsTr("Back")
                        font.bold: true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            searchwindow.visible=false
                            startwindow.visible=true
                        }
                    }
                }
                Rectangle{//帮助弹窗
                    width: 60
                    height: 30
                    Label{
                        anchors.centerIn: parent
                        text: qsTr("Help")
                        font.bold: true
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: help_dialog.open();
                    }
                }
            }
            Rectangle{//侧边栏
                id: searchwindow_sidebar
                width: parent.width/2
                height: parent.height-searchwindow_topstatus.height-24
                anchors.top: searchwindow_topstatus.bottom
                anchors.topMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 8
                Label{
                    anchors.centerIn: parent
                    text: qsTr("side_bar")
                }
            }
            Rectangle{//正文部分
                id: searchwindow_fieldarea
                width: parent.width-searchwindow_sidebar.width-24
                height: searchwindow_sidebar.height
                anchors.top: searchwindow_topstatus.bottom
                anchors.topMargin: 8
                anchors.left: searchwindow_sidebar.right
                anchors.leftMargin: 8
                Label{
                    anchors.centerIn: parent
                    text: qsTr("field_area")
                }
            }
        }
    }
}
