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
TARGET = buttons_pickers_sliders

CONFIG += sailfishapp

SOURCES += src/buttons_pickers_sliders.cpp

DISTFILES += qml/buttons_pickers_sliders.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/SecondPage.qml \
    qml/pages/extra_task.qml \
    qml/pages/task_1.qml \
    qml/pages/task_2.qml \
    qml/pages/task_3.qml \
    qml/pages/task_4.qml \
    qml/pages/task_5.qml \
    qml/pages/task_6.qml \
    qml/pages/task_7.qml \
    qml/pages/task_8.qml \
    qml/pages/task_9.qml \
    rpm/buttons_pickers_sliders.changes.in \
    rpm/buttons_pickers_sliders.changes.run.in \
    rpm/buttons_pickers_sliders.spec \
    rpm/buttons_pickers_sliders.yaml \
    translations/*.ts \
    buttons_pickers_sliders.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/buttons_pickers_sliders-de.ts
