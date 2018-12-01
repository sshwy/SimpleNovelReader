import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle{
    width: parent.width
    height: parent.height
    visible: true
    Image {
        id: startwindow_background
        source: "image/startwindow_background.jpg"
        anchors.fill: parent
    }
    TobeDev{
        id: tobeDev
        visible: false
    }
    Row{
        spacing:100
        anchors.centerIn: parent
        Circle{
            width: 400
            color: "red"
            Label{
                text: qsTr("Read")
                font.pixelSize: 70
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("PushButton: [Read]");
                    tobeDev.show()
                }
            }
        }
        Circle{
            width: 400
            color: "blue"
            Label{
                text: qsTr("Search")
                font.pixelSize: 70
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("PushButton: [Search]");
                    tobeDev.show()
                }
            }
        }
    }
}
