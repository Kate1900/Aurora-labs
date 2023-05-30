import QtQuick 2.0
import Sailfish.Silica 1.0

Item {
    id: tick
    property int milisec: 0
    property int sec: 0
    property int min: 0
    property int hours: 0
    property string txt
    Rectangle{
        width: 300
        height: 300
        color: "transparent"
        border.color: "#000000"
        border.width: 3
        radius: width*0.5
        Text {
            id: time
            anchors.centerIn: parent
            text: txt
        }
    }

}
