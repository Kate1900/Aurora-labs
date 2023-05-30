import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Item {
        Rectangle{
            color: "red"
            width: 200; height: 200
            //y:250
        }
        Rectangle{
            color: "green"
            width: 200;height: 200
            x:200;y:100
        }
        Rectangle{
            color: "blue"
            width: 200;height: 200
            x:300;//y:250
            z:1

            Text {
                id: sq
                color: "white"
                anchors.centerIn: parent
                font.pointSize: 30
                textFormat: Text.RichText
                text: qsTr("<b>Квадрат</b>")
            }
        }
    }
}
