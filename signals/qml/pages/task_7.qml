import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page{
    id: page7

    ConfigurationValue {
        id: pushed
        key: "/cnt_push"
        value : 0
    }

    ConfigurationValue {
        id: poped
        key: "/cnt_pop"
        value : 0
    }
    ConfigurationGroup {
        id: conf_group
        path: "/path"
    }
    signal pushAndpop(int pushed,int poped)
    onPushAndpop: {
        console.log("Pushed: " + pushed)
        console.log("Poped: " + poped)
    }

    Column{
        spacing: 10
        Row{
            spacing: 20
            Button{
                id: butt_push
                text: "push"
                onClicked: {
//                    count_push ++;
                    pageStack.push(Qt.resolvedUrl("ExamplePage.qml"))
                    conf_group.setValue("cnt_push", pushed + 1)
                    conf_group.setValue("cnt_pop", 0)
                    pushAndpop(conf_group.value("cnt_push"),conf_group.value("cnt_pop"))
//                    console.log(cnt_push.value)
                }
            }
            Button{
                id: butt_pop
                text: "pop"
                onClicked: {
//                    count_pop++;
                    pageStack.pop(pageStack.current_page)
                    conf_group.setValue("cnt_push", 0)
                    var pop = poped.value+1;
                    conf_group.setValue("cnt_pop", pop)
                    pushAndpop(conf_group.value("cnt_push"),conf_group.value("cnt_pop"))
                }
            }
        }

    }
    Component.onCompleted: {
        butt_push.clicked.connect(pushAndpop)
        butt_pop.clicked.connect(pushAndpop)
    }
}
