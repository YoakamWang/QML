import QtQuick 2.0

Rectangle{
    id:borderRect

    property int myTopMargin: 0
    property int myBottomMargin: 0
    color:"black"
    Rectangle{
        id:innerRect
        color: "blue"
        anchors.fill:parent
        anchors.topMargin: myTopMargin
        anchors.bottomMargin: myBottomMargin
        anchors.leftMargin: 0
        anchors.rightMargin: 0
    }
}
