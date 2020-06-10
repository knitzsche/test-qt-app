import QtQuick 2.0
import QtQuick.Layouts 1.1

ColumnLayout{
    spacing: 2
    id: page
    Text {
        id: helloText
        text: "Hello world! test-qt-app snap"
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
    TextEdit {
        width: 240
        text: "Edit me"
        anchors.horizontalCenter: page.horizontalCenter
        font.family: "Helvetica"
        font.pointSize: 20
        color: "blue"
        focus: true
    }
}
