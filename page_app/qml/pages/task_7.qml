import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page7
    SilicaWebView {
        id: webView
        anchors {
            top: parent.top; bottom: urlField.top;
            left: parent.left; right: parent.right;
        }
        url: "https://www.tv-asahi.co.jp/goodmorning/uranai/#mizugame"
    }
    TextField {
        id: urlField
        anchors {
            left: parent.left; right: parent.right;
            bottom: parent.bottom
        }
        text: webView.url
        label: "Прогресс: " + webView.loadProgress + "\nЗаголовок: " + webView.title
        EnterKey.onClicked: webView.url = text
    }
}
