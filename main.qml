import QtQuick 2.13
import QtQuick.Window 2.13
import QtQuick.Controls 2.5
Window {//root控件，x y是相对于父控件，window的父控件为平台的桌面
    visible: true
    width: 400
    height: 300
    title: qsTr("MY QML")




//    Button{
//        id:btn
//        width:150
//        height:50
//        autoRepeat: true
//        background: Rectangle{
//            anchors.fill:btn
//            color: {
//                if(btn.pressed){
//                    return "green"
//                }else{
//                    return "blue"
//                }
//            }
//            border.color: {
//                if(btn.pressed){
//                    return "black"
//                }else{
//                    return "red"
//                }
//            }
//        }
//    }

//    MouseArea{
//        id:mouseArea
//        width:200
//        height:200
//        acceptedButtons: Qt.LeftButton|Qt.RightButton
//        cursorShape: Qt.CrossCursor
//        hoverEnabled: true
//        Rectangle{
//            anchors.fill:parent
//            color:"red"
//        }
//        onClicked: {
//            console.log("clicked")
//        }
//        onHoveredChanged: {
//            console.log("on Hover changed")
//        }

//        onPressed: {
//            var ret=pressedButtons&Qt.LeftButton
//            console.log(ret?"left":"right")
//            console.log("pressed")
//        }
//        onReleased: {
//            console.log("released")
//        }
//    }

//    Component{
//        id:com
//        Rectangle{
//            id:rect
//            width:200
//            height:100
//            color:"black"
//            Component.onCompleted: {
//                console.log("onCompleted",width,height,color)
//            }
//        }


//    Rectangle {
//         width: 75; height: 75
//         id: button
//         state: "RELEASED"

//         MouseArea {
//             anchors.fill: parent
//             onPressed: button.state = "PRESSED"
//             onReleased: button.state = "RELEASED"
//         }

//         states: [
//             State {
//                 name: "PRESSED"
//                 PropertyChanges { target: button; color: "lightblue"}
//             },
//             State {
//                 name: "RELEASED"
//                 PropertyChanges { target: button; color: "lightsteelblue"}
//             }
//         ]

//         transitions: [
//             Transition {
//                 from: "PRESSED"
//                 to: "RELEASED"
//                 ColorAnimation { target: button; duration: 200}
//             },
//             Transition {
//                 from: "RELEASED"
//                 to: "PRESSED"
//                 ColorAnimation { target: button; duration: 200}
//             }
//         ]
//     }


//    Rectangle{
//        id:rect
//        width:100
//        height:100
//        color: "red"
//        PropertyAnimation on x{
//            to:100
//            duration: 2000
//        }
//        PropertyAnimation on y{
//            to:100
//            duration: 1000
//        }
//        SequentialAnimation on color{

//            ColorAnimation {
//                from: "white"
//                to: "black"
//                duration: 2000
//            }
//            ColorAnimation {
//                from: "black"
//                to: "red"
//                duration: 2000
//            }
//        }

//        ColorAnimation on color{
//            from: "white"
//            to: "black"
//            duration: 2000
//        }
    }

//    Rectangle{
//        id:flashingblob
//        width:100
//        height: 100
//        color:"black"
//        MouseArea{
//            anchors.fill:parent
//            onClicked: {
//                animateColor.start()
//                animateOpacity.start()
//                animateWidth.start()
//            }
//        }
//        PropertyAnimation{
//            id:animateColor
//            target: flashingblob
//            properties: "color"
//            to:"green"
//            duration: 2000
//        }
//        PropertyAnimation{
//            id:animateOpacity
//            target: flashingblob
//            properties: "opacity"
//            to:"0.5"
//            duration: 2000
//        }
//        PropertyAnimation{
//            id:animateWidth
//            target: flashingblob
//            properties: "width"
//            to:300
//            duration: 2000
//        }
//    }

//    Rectangle {
//        id: banner
//        width: 150; height: 100; border.color: "black"

//        Column {
//            anchors.centerIn: parent
//            Text {
//                id: code
//                text: "Code less."
//                opacity: 0.01
//            }
//            Text {
//                id: create
//                text: "Create more."
//                opacity: 0.01
//            }
//            Text {
//                id: deploy
//                text: "Deploy everywhere."
//                opacity: 0.01
//            }
//        }

//        MouseArea {
//            anchors.fill: parent
//            onPressed: playbanner.start()
//        }

//        SequentialAnimation {
//            id: playbanner
//            running: false
//            NumberAnimation { target: code; property: "opacity"; to: 1.0; duration: 200}
//            NumberAnimation { target: create; property: "opacity"; to: 1.0; duration: 200}
//            NumberAnimation { target: deploy; property: "opacity"; to: 1.0; duration: 200}
//        }
//    }

//    Rectangle{
//        id:root
//        width: 100;height:100
//        state: "normal"
//        states: [
//                State {
//                    name: "normal"
//                    PropertyChanges {
//                        target: root
//                        color:"black"

//                    }
//                },
//            State {
//                name: "red_color"
//                PropertyChanges {
//                    target: root
//                    color:"red"
//                    width:300                }
//            },
//            State {
//                name: "blue_color"
//                PropertyChanges {
//                    target: root
//                    color:"blue"

//                }
//            }
//            ]
//        MouseArea{
//            anchors.fill:parent
//            onPressed: {
//                root.state="red_color"
//            }
//            onReleased: {
//                root.state="blue_color"
//            }
//        }
//    }


////    MyRectangle{
////        x:100
////        y:50
////        width:200
////        height: 100
////        myTopMargin: 5
////        myBottomMargin: 5
////    }

////    Rectangle{
////        width:100
////        height:50
////        color: "black"
////        border.width: 5
////        border.color: "blue"
//////        rotation: 30
//////        scale: 2
////        border.width: 2
////        border.color: "red"
////        radius: 15  //矩形的圆角
////        gradient: Gradient {
////            GradientStop { position: 0.0; color: "red" }
////            GradientStop { position: 0.33; color: "yellow" }
////            GradientStop { position: 1.0; color: "green" }
////        }
//    }
//Rectangle{
//    id:root
//    width: 100;height:100
//    state: "normal"
//    states: [
//            State {
//                name: "normal"
//                PropertyChanges {
//                    target: root
//                    color:"black"

//                }
//            },
//        State {
//            name: "red_color"
//            PropertyChanges {
//                target: root
//                color:"red"
//                width:300                }
//        },
//        State {
//            name: "blue_color"
//            PropertyChanges {
//                target: root
//                color:"blue"

//            }
//        }
//        ]
//    MouseArea{
//        anchors.fill:parent
//        onPressed: {
//            root.state="red_color"
//        }
//        onReleased: {
//            root.state="blue_color"
//        }
//    }
//}


//    MyRectangle{
//        x:100
//        y:50
//        width:200
//        height: 100
//        myTopMargin: 5
//        myBottomMargin: 5
//    }

//    Rectangle{
//        width:100
//        height:50
//        color: "black"
//        border.width: 5
//        border.color: "blue"
////        rotation: 30
////        scale: 2
//        border.width: 2
//        border.color: "red"
//        radius: 15  //矩形的圆角
//        gradient: Gradient {
//            GradientStop { position: 0.0; color: "red" }
//            GradientStop { position: 0.33; color: "yellow" }
//            GradientStop { position: 1.0; color: "green" }
//        }


//    Rectangle{
//          id:rect1
//           width:100
//           height:50
//           color: "blue"
//           //anchors.horizontalCenter: parent.horizontalCenter
//           anchors.centerIn: parent
//    }
//    Rectangle{
//       // x:rect1.width+50
//          anchors.left: rect1.right
//          anchors.leftMargin: 50
//          id:rect2
//           width:100
//           height:50
//           color: "black"
//    }

//    Rectangle{
//        x:100
//        y:100
//        width:100
//        height:50
//        color: "blue"
//        focus: true
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                console.log("on clicked")
//            }
//        }
//        Keys.onReturnPressed: {
//            console.log("on return pressed")
//        }
//    }

//    color:"blue"
//    property int myValue: 0
//    x:50
//    y:350
//    minimumHeight: 300
//    minimumWidth: 400
//    maximumHeight: 500
//    maximumWidth: 500
//    opacity: 0.9//0 - 1

////    signal mySig()
////    onMySig: {

////    }
//    onWidthChanged: {
//        console.log("width:",width)
//    }
//    Button{
//        id:btn1
//        focus: true
//        width:50
//        height:50
//        objectName: "btn1"
//        background:Rectangle{
//            border.color: btn1.focus ? "blue":"Nlack"
//        }
//        onClicked: {
//    Rectangle{
//          id:rect1
//           width:100
//           height:50
//           color: "blue"
//           //anchors.horizontalCenter: parent.horizontalCenter
//           anchors.centerIn: parent
//    }
//    Rectangle{
//       // x:rect1.width+50
//          anchors.left: rect1.right
//          anchors.leftMargin: 50
//          id:rect2
//           width:100
//           height:50
//           color: "black"
//    }

//    Rectangle{
//        x:100
//        y:100
//        width:100
//        height:50
//        color: "blue"
//        focus: true
//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                console.log("on clicked")
//            }
//        }
//        Keys.onReturnPressed: {
//            console.log("on return pressed")
//        }
//    }

//    color:"blue"
//    property int myValue: 0
//    x:50
//    y:350
//    minimumHeight: 300
//    minimumWidth: 400
//    maximumHeight: 500
//    maximumWidth: 500
//    opacity: 0.9//0 - 1

////    signal mySig()
////    onMySig: {

////    }
//    onWidthChanged: {
//        console.log("width:",width)
//    }
//    Button{
//        id:btn1
//        focus: true
//        width:50
//        height:50
//        objectName: "btn1"
//        background:Rectangle{
//            border.color: btn1.focus ? "blue":"Nlack"
//        }
//        onClicked: {
//            console.log("btn1 clicked")
//        }
//        Keys.onRightPressed: {
//            btn2.focus=true
//        }
//    }
//    Button{
//        id:btn2
//        x:100
//        width:50
//        height:50
//        objectName: "btn2"
//        background:Rectangle{
//            border.color: btn2.focus ? "blue":"Nlack"
//        }
//        onClicked: {
//            console.log("btn2 clicked")
//        }
//        Keys.onLeftPressed: {
//            btn1.focus=true
//        }
//    }
//    onActiveFocusItemChanged: {
//        console.log("Active focus item changed: ",activeFocusItem.objectName)
//    }
