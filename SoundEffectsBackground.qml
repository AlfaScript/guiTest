import QtQuick 2.0

Item
{
    id: _backgroundMixer
    anchors.fill: parent
    Rectangle
    {
        x: parent.width / 5
        y: 0
        width: 5
        height: parent.height
        color: "black"
    }

    Rectangle
    {
        x: 2 * parent.width / 5
        y: 0
        width: 5
        height: parent.height
        color: "black"
    }

    Rectangle
    {
        x: 3 * parent.width / 5
        y: 0
        width: 5
        height: parent.height
        color: "black"
    }

    Rectangle
    {
        x: 4 * parent.width / 5
        y: 0
        width: 5
        height: parent.height
        color: "black"
    }

    Rectangle
    {
        x: 0
        y: parent.height / 5
        width: parent.width
        height: 5
        color: "black"
    }

    Rectangle
    {
        x: 0
        y: 2 * parent.height / 5
        width: parent.width
        height: 5
        color: "black"
    }

    Rectangle
    {
        x: 0
        y: 3 * parent.height / 5
        width: parent.width
        height: 5
        color: "black"
    }

    Rectangle
    {
        x: 0
        y: 4 * parent.height / 5
        width: parent.width
        height: 5
        color: "black"
    }

    Rectangle
    {
        id: _centerLine
        x: 0
        y: parent.height / 2
        width: parent.width
        height: 2
        color: "#91994B"
    }
}
