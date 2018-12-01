import QtQuick 2.0
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.2
Window{
    visible: false
    width: 400
    height: 100
    Label{
        text: qsTr("To be Dev...")
        font.pixelSize: 70
        font.bold: true
        anchors.centerIn: parent
    }
}
