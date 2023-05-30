import QtQuick 2.0
import Sailfish.Silica 1.0
import QtMultimedia 5.6

Page {
    Audio {
        id: audio
        playlist: Playlist {
            id: playlist
            playbackMode: Playlist.Loop
            PlaylistItem { source: "jony-kometa.mp3" }
            PlaylistItem { source: "jony-nikak.mp3" }
            PlaylistItem { source: "jony-pustota.mp3" }
        }
    }
    Row {
        anchors.centerIn: parent
        IconButton {
            icon.source: "image://theme/icon-m-previous"
            onClicked: {
                audio.playlist.previous()
            }
        }
        IconButton {
            id: play
            icon.source: "image://theme/icon-m-play"
            onClicked: {
                if (play.icon.source == "image://theme/icon-m-play") {
                    audio.play();
                    play.icon.source = "image://theme/icon-m-pause"
                } else {
                    audio.pause()
                    play.icon.source = "image://theme/icon-m-play"
                }
            }
        }
        IconButton {
            icon.source: "image://theme/icon-m-next"
            onClicked: {
                audio.playlist.next()
            }
        }
    }
}
