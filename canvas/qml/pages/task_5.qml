import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {

    Audio{
        id: music
        source: "jony-kometa.mp3"
//        hasAudio: true
//        source: "https://previews.customer.envatousercontent.com/files/423515637/preview.mp3"
        volume: 0.5
    }

    IconButton{
        anchors.centerIn: parent
        id: play
        icon.source: "image://theme/icon-m-play"
        onClicked: {
            if (play.icon.source == "image://theme/icon-m-play") {
                music.play();
                play.icon.source = "image://theme/icon-m-pause"
            } else {
                music.pause()
                play.icon.source = "image://theme/icon-m-play"
            }
        }
    }
}
