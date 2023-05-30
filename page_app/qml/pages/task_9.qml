import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page9
    property string txt1 : ""

    SilicaListView {
        PullDownMenu {
            MenuItem {
                text: "Убийца - садовник"
                onClicked: {txt1 = text}
            }
            MenuItem {
                text: "Котопёс"
                onClicked: {txt1 = text}
            }
            MenuLabel { text: qsTr("Верхнее меню") }
        }
        PushUpMenu {
            MenuLabel { text: qsTr("Нижнее меню") }
            MenuItem {
                text: "Агент Смит"
                onClicked: {txt1 = text}
            }
            MenuItem {
                text: "Хрен с винтом"
                onClicked: {txt1 = text}
            }
        }

        anchors.fill: parent
        header: PageHeader { title: "Менюшки" }

    }

    Label {
        id: lb
        anchors.centerIn: parent
        text: "Текстовое поле для элемента:"
    }
    Text {
        anchors.top: lb.bottom
        anchors.horizontalCenter: lb.horizontalCenter
        id: tx
        text: "" + txt1
    }
}
