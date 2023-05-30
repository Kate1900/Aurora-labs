import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id:page
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Rectangle{
        color: "cyan"
        width: 300;height: 300
        //y:950

        Text {
            id: before
            color: "black"
            anchors.centerIn: parent
            font.pointSize: 40
            textFormat: Text.RichText
            text: qsTr("<b>A</b>")
        }
        Rectangle{
            //color: parent.color
            color: "cyan"
            width: parent.width;height: parent.height
            transform: [Scale{xScale:0.5}, Rotation{angle:40},Translate{x:600;y:50}]

            Text {
                id: after
                color: "black"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                transform: Scale{xScale:1.5}
                font.pointSize: 40
                textFormat: Text.RichText
                text: qsTr("<b>B</b>")
            }
        }
    }

}
