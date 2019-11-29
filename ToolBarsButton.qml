import QtQuick 2.0
import QtQuick.Controls 2.12

Button
{
    width: 100
    visible: true

    property string displayText: ""
    property int fontSize: 15
    property color rectangleBorderColor: "white"

    Text
    {
        text: qsTr(displayText)
        anchors.centerIn: parent
        color: "#91994B"
        font.pointSize: fontSize
        font.bold: true
    }

    background : Rectangle
    {
        color: "black"
        border.color: rectangleBorderColor
        border.width: 2
    }

    MouseArea
    {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: rectangleBorderColor = "red"
        onExited: rectangleBorderColor = "white"
    }
}
