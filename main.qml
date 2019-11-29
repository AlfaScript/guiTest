import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

// import QtQuick.Layouts 1.12

ApplicationWindow
{
    visible: true
    visibility: "FullScreen"
    /*width: 1920
    maximumWidth: 1920
    minimumWidth: 1920
    height: 980
    maximumHeight: 980
    minimumHeight: 980*/
    title: qsTr("NANO DAW")
    color: "grey"

    Rectangle // Header Tool Bar
    {
        id: _headerToolBar
        x: 0
        y: 0
        height: 30
        width: parent.width
        gradient : Gradient
        {
            orientation: Gradient.Horizontal
            GradientStop { position: 0; color: "#999932" }
            GradientStop { position: 0.25; color: "#FEC806" }
            GradientStop { position: 0.6; color: "#F19034" }
            GradientStop { position: 1; color: "#293517" }
        }

        ToolBarsButton
        {
            id: _headerButtonQuit
            height: parent.height
            anchors.left: parent.left
            displayText: qsTr("QUIT")
            fontSize: 10
            MouseArea
            {
                anchors.fill: parent
                onClicked: Qt.quit();
            }

        }

        ToolBarsButton
        {
            id: _headerButtonSettings
            height: parent.height
            anchors.left: _headerButtonQuit.right
            fontSize: 10
            displayText: qsTr("SETTINGS")
        }
    }

    Rectangle // Bottom Tool Bar
    {
        id: _timelineButtons
        x: 0
        y: parent.height - 100
        height: 100
        width: parent.width

        gradient : Gradient
        {
            orientation: Gradient.Horizontal
            GradientStop { position: 0; color: "#999932" }
            GradientStop { position: 0.25; color: "#FEC806" }
            GradientStop { position: 0.6; color: "#F19034" }
            GradientStop { position: 1; color: "#293517" }
        }

        Text
        {
            id: _soundsName
            text: qsTr("SOUNDS NAME")
            x: parent.width / 2
        }

        Rectangle
        {
            id: _timeline
            height: 10
            color: "black"
            border.color: "black"
            border.width: 1
            width: parent.width - 50
            x: 25
            y: parent.height - 80
            visible: true
        }

        Rectangle
        {
            id: _timelineStartPoint
            height: 40
            width: 3
            color: "black"
            x: 25
            y: _timeline.y - height / 2
            visible: true
            MouseArea
            {
                anchors.fill: parent
                drag.target: _timelineStartPoint
                drag.axis: Drag.XAxis
                drag.minimumX: _timeline.x
                drag.maximumX: _timeline.width + _timeline.x
            }
        }

        ToolBarsButton
        {
            id: _timelineButtonPlay
            height: parent.height / 2
            width: 100
            x: parent.width / 2 - width / 2
            y: parent.height - height
            displayText: "PLAY"

            property bool isPlay: false
            MouseArea
            {
                anchors.fill: parent
                onClicked:
                {
                    if(!parent.isPlay)
                    {
                        parent.displayText = "PAUSE"
                        parent.isPlay = true
                    }
                    else
                    {
                        parent.displayText = "PLAY"
                        parent.isPlay = false
                    }
                    parent.rectangleBorderColor = "yellow"
                }
            }
        }

        ToolBarsButton
        {
            id: _timelineButtonStop
            height: parent.height / 2
            width: 100
            x: parent.width / 2 - _timelineButtonPlay.width - width / 2 - 100
            y: parent.height - height
            displayText: "STOP"
        }
    }

    Item
    {
        id: _mixer
        anchors.fill: parent

        Rectangle
        {
            id: _centerLine
            x: 0
            y: parent.height / 2
            width: parent.width
            height: 10
            color: "black"
        }

        Circle
        {
            id: _mixer1
            x: parent.width / 6
            y: parent.height / 2
        }

        Circle
        {
            id: _mixer2
            x: 2 * parent.width / 6
            y: parent.height / 2
        }

        Circle
        {
            id: _mixer3
            x: 3 * parent.width / 6
            y: parent.height / 2
        }

        Circle
        {
            id: _mixer4
            x: 4 * parent.width / 6
            y: parent.height / 2
        }

        Circle
        {
            id: _mixer5
            x: 5 * parent.width / 6
            y: parent.height / 2
        }
    }
}
