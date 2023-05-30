import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page2
    // The effective value will be restricted by ApplicationWindow.allowedOrientations
    allowedOrientations: Orientation.All

    Column {
        anchors.fill: parent
        PageHeader {
            title: "Первая страница"
        }
        Button {
            text: "Добавить 2 страницу"
            onClicked: pageStack.pushAttached(Qt.resolvedUrl("task_2_2.qml"))
        }
        Button {
            text: "Удалить 2 страницу"
            onClicked: pageStack.popAttached()
        }
    }
}
