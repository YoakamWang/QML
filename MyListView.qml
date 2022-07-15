import QtQuick 2.0
import QtQuick.Controls 2.5
ListView{
    id:list
    width:180
    height:200
    //model:["Button","Rectangle","MouseArea","Checkbox"]
    model:ListModel{

        ListElement{
            name:"John"
            number:"552 3264"
            myValue:123
        }
        ListElement{
            name:"Andy"
            number:"443 3264"
            myValue:456
        }
    }

    spacing: 10
    highlight:Rectangle{
        color: "grey"
        radius: 2
    }

    delegate: Rectangle{
        color: "transparent"
        width:list.width
        height:50
        Text{
            id:txt
            text:name
        }
        MouseArea{
            anchors.fill:parent
            onClicked: {
                //console.log(index)
                //console.log(list.currentIndex)
                currentIndex=index
            }
        }
    }

//    delegate: Button{  //控制每一项数据是如何绘制的
//        text:name+" "+number+" "+myValue
//    }
}
