import QtQuick 2.0

Canvas
{
    anchors.fill: parent

    property int lineWidth: 5
    property color lineColor: "#E2AE1A"
    property int startX: 0
    property int startY: 0
    property int endX: 0
    property int endY: 0

    onPaint:
    {
        var ctx = getContext("2d")
        ctx.lineWidth = lineWidth;
        ctx.strokeStyle = lineColor

        ctx.beginPath()
        ctx.moveTo(startX, startY)
        ctx.lineTo(endX, endY)
        ctx.stroke()
    }
}
