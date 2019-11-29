import QtQuick 2.0

Rectangle
{
    x: 0
    width: parent.width
    rotation: 90
    gradient : Gradient
    {
        GradientStop { position: 0; color: "#999932" }
        GradientStop { position: 0.25; color: "#FEC806" }
        GradientStop { position: 0.6; color: "#F19034" }
        GradientStop { position: 1; color: "#293517" }
    }
}
