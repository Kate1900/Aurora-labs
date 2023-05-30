import QtQuick 2.0
import Sailfish.Silica 1.0

ApplicationWindow{
    initialPage: Component{
        Page{
            PageHeader{id: header1}

            Button{
                text: "Суммировать"
                color: "blue"
                backgroundColor: "white"
                highlightColor: "cyan"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                onClicked: {
                    var dialogForSum = pageStack.push(Qt.resolvedUrl("Dialog_Sum.qml"))
                    dialogForSum.accepted.connect(function(){
                        console.log("Результат суммирования ваших чисел равен = " + dialogForSum.sum)
                    })
                }
            }
        }
    }
}
