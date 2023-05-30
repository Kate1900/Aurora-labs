import QtQuick 2.0
import Sailfish.Silica 1.0


CoverBackground {
    Label {
        id: label
        anchors.centerIn: parent
        text: "Текущий счёт:\n" + coverAction.count
    }

    CoverActionList {
        property int count: 0
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-m-add"
            onTriggered: coverAction.count++

        }

        CoverAction {
            iconSource: "image://theme/icon-m-clear"
            onTriggered: coverAction.count = 0
        }
    }
}
