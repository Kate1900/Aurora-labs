import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page3
    property string txt1 : ""
    property string full_text: "" + txt1
    Column {
        PageHeader{}
        Button {
            text: "Вызов диалогого окна"
            onClicked: {
                var dialog_text = pageStack.push(Qt.resolvedUrl("dialog_text.qml"),{saved_text: full_text})
                dialog_text.accepted.connect(function(){

                    txt1 = dialog_text.txt

                })
            }
        }
        Label {text: "Текстовое поле"}
        Text {
            id: tx
            text: "" + txt1
        }
    }
}
