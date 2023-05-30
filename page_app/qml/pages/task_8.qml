import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page8
    ListModel {
        id: task_list
        ListElement { name: "Поваляться в кровати"; date:"25.10.2022";}
        ListElement { name: "Посидеть в одиночестве";date:"25.10.2022";}
        ListElement { name: "Посмотреть фильм"; date:"28.10.2022";}
        ListElement { name: "Выпрыгнуть из окна"; date:"30.10.2022";}
    }
    SlideshowView {
        id: view
        anchors.centerIn: parent
        height: width
        itemHeight: width; itemWidth: width;
        model: task_list
        delegate: Rectangle {
            width: view.itemWidth;
            height: view.itemHeight;
            color: "transparent"
            border.color: "black"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 40
                text: "Дата: " + date + "\nЗадача: " + name
            }
        }
    }
}

