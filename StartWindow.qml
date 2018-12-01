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
                hoverEnabled: true
                onClicked: {
                    console.log("PushButton: [Read]");
                    tobeDev.show();
                }
                onEntered: {
                    console.log("onEntered: [Read]");
                    parent.color="lightcoral"
                }
                onExited: {
                    console.log("onExited: [Read]");
                    parent.color="red"
                }

                onPressed: {
                    console.log("onPressed: [Read]");
                    parent.color="firebrick"
                }
                onReleased: {
                    parent.color="red"
                    console.log("onReleased: [Read]");
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
                hoverEnabled: true
                onClicked: {
                    console.log("PushButton: [Search]");
                    tobeDev.show();
                }
                onEntered: {
                    console.log("onEntered: [Search]");
                    parent.color="skyblue"
                }
                onExited: {
                    console.log("onExited: [Search]");
                    parent.color="blue"
                }

                onPressed: {
                    console.log("onPressed: [Search]");
                    parent.color="navy"
                }
                onReleased: {
                    parent.color="blue"
                    console.log("onReleased: [Search]");
                }
            }
        }
    }
}
