import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page10
    ListModel {
        id: task_model
        ListElement { name: "Ноль" }
        ListElement { name: "Целковый" }
        ListElement { name: "Подружка" }
        ListElement { name: "Ватрушка" }
        ListElement { name: "Квизи" }
        ListElement { name: "Ёрик" }
    }

    SilicaListView {
        anchors.fill: parent
        model: task_model
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                anchors.horizontalCenter: parent.horizontalCenter
                text: name + " #" + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                id: contmenu
                MenuLabel { text: "Context Menu" }
                MenuItem {
                    text: "Ким-за-за"
                    onClicked: console.log("выбран элемент " + text + " с индексом элемента списка " +  index)
                }
                MenuItem {
                    text: "Киш-Мыш"
                    onClicked: console.log("выбран элемент " + text + " с индексом элемента списка " + index)
                }
            }

        }
        VerticalScrollDecorator {}
    }
}
