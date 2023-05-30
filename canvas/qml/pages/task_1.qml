import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    Canvas{
        width: parent.width
        height: parent.height
        onPaint: {
            var ctx = getContext("2d");
            ctx.fillStyle = "lawngreen";
            ctx.fillRect(0,0,width,height);
            ctx.fillStyle = "deepskyblue";
            ctx.fillRect(0, 0, width, height/1.5);
            ctx.fillStyle = "darkorange";
            ctx.fillRect(width/2-230, height/3+310, 460, 355)
            ctx.fillStyle = "maroon"
            ctx.fillRect(width/2+100, height/3+70, 50, 150)
            ctx.fillStyle = "dimgray"
            ctx.beginPath()
            ctx.moveTo(width/2, height/2.5);
            ctx.lineTo(width/2+300, height/2+100);
            ctx.lineTo(width/2-300, height/2+100);
            ctx.fill();
            ctx.closePath();
            ctx.fillStyle = "saddlebrown"
            ctx.fillRect(width/2-50, height/1.5, 200, 240)
            ctx.fillStyle = "peru"
            ctx.fillRect(width/2-30, height/1.5+10, 160, 230)
            ctx.fillStyle = "black"
            ctx.fillRect(width/4-10,height/1.5-80,100,100)
            ctx.fillRect(width/4-10,height/1.5+60,100,100)
            ctx.fillStyle = "paleturquoise"
            ctx.fillRect(width/4,height/1.5-70,80,80)
            ctx.fillRect(width/4,height/1.5+70,80,80)

        }

    }
}
