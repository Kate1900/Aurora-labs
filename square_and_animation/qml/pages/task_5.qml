import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Rectangle{
        id: yellowRect
        color: "yellow"
        width: 100;height: 100
        anchors.horizontalCenter: parent.horizontalCenter
        Text {
            id: textRect
            text: qsTr("Я расту !")
            color: "black"
            font.pointSize: 10
            anchors.centerIn: parent
        }
        //x:250;//y:250
        ParallelAnimation{
            running: true
            PropertyAnimation{
                loops: Animation.Infinite
                target: yellowRect
                properties: "y"
                from: 0
                to: 800
                duration: 5000
            }
            PropertyAnimation{
                loops: Animation.Infinite
                target: yellowRect
                properties: "width"
                from: 100
                to: 450
                duration: 5000
            }
            PropertyAnimation{
                loops: Animation.Infinite                
                target: yellowRect
                properties: "height"
                from: 100
                to: 450
                duration: 5000
            }
            PropertyAnimation{
                loops: Animation.Infinite
                target: textRect
                properties: "font.pointSize"
                from: 10; to: 80; duration: 5000
            }
        }

    }

}
