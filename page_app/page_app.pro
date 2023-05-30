# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = page_app

CONFIG += sailfishapp

SOURCES += src/page_app.cpp

DISTFILES += qml/page_app.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/dialog_date.qml \
    qml/pages/dialog_text.qml \
    qml/pages/dialog_time.qml \
    qml/pages/task_1.qml \
    qml/pages/task_10.qml \
    qml/pages/task_11.qml \
    qml/pages/task_2.qml \
    qml/pages/task_2_2.qml \
    qml/pages/task_3.qml \
    qml/pages/task_4.qml \
    qml/pages/task_5.qml \
    qml/pages/task_6.qml \
    qml/pages/task_7.qml \
    qml/pages/task_8.qml \
    qml/pages/task_9.qml \
    rpm/page_app.changes.in \
    rpm/page_app.changes.run.in \
    rpm/page_app.spec \
    rpm/page_app.yaml \
    translations/*.ts \
    page_app.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/page_app-de.ts
