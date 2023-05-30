#include <sailfishapp.h>
#include "mycount.h"
#include "mylist.h"
#include <QtQuick>
#include <QScopedPointer>
#include <QGuiApplication>
#include <QQuickView>

int main(int argc, char *argv[])
{
    // SailfishApp::main() will display "qml/classes_components.qml", if you need more
    // control over initialization, you can use:
    //
    //   - SailfishApp::application(int, char *[]) to get the QGuiApplication *
    //   - SailfishApp::createView() to get a new QQuickView * instance
    //   - SailfishApp::pathTo(QString) to get a QUrl to a resource file
    //   - SailfishApp::pathToMainQml() to get a QUrl to the main QML file
    //
    // To display the view, call "show()" (will show fullscreen on device).

    qmlRegisterType<MyCountClass>("harbour.appname.MyModule", 1, 0, "MyCountClass");
    qmlRegisterType<mylist>("harbour.appname.MyModule", 1, 0, "MyListClass");


    QScopedPointer<QGuiApplication> app(SailfishApp::application(argc, argv));
    app->setApplicationName("classes_components");
    app->setOrganizationName("ru.test");

    QScopedPointer<QQuickView> view(SailfishApp::createView());
    view->setSource(SailfishApp::pathToMainQml());
    view->showFullScreen();

    return app->exec();
}
