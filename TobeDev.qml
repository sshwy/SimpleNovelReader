import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
Window{
    visible: false
    width: 400
    height: 100
    Rectangle{
        width: parent.width
        height: parent.height
        color: "#DCDCDC"
        Label{
            text: qsTr("To be Dev...")
            font.pixelSize: 70
            font.bold: true
            anchors.centerIn: parent
        }
    }
}
