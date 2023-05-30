import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page6
    ListModel {
        id: task_list
        ListElement { name: "Поваляться в кровати"; date:"25.10.2022";}
        ListElement { name: "Посидеть в одиночестве";date:"25.10.2022";}
        ListElement { name: "Посмотреть фильм"; date:"28.10.2022";}
        ListElement { name: "Выпрыгнуть из окна"; date:"30.10.2022";}
    }
    SilicaListView {
        anchors.fill: parent
        model: task_list
        header: PageHeader { title: "Задачи на неделю" }
        section {
            property: 'date'
            delegate: SectionHeader { text: section }
        }
        delegate: Text { text: name }
    }
}
