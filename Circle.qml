import QtQuick 2.0

Rectangle
{
    height: 30
    width: 30
    radius: width * 0.5
    color: "white"
    border.color: "black"
    border.width: 2

    MouseArea
    {
        anchors.fill: parent
        drag.target: parent
        drag.axis: Drag.YAxis
        drag.minimumY: _headerToolBar.height + 100
        drag.maximumY: _mixer.height - _timelineButtons.height - 100
    }
}
