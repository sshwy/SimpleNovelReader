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
    title: qsTr("Simple Novel Reader 0.0")
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
