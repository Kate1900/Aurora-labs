import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Button {
        id: butt
        anchors.centerIn: parent
        text: "Кнопка"
        highlightColor: "skyblue"

        onClicked: {
            //console.log("Вы нажали кнопку")
            butt.down = true

        }
    }
}
