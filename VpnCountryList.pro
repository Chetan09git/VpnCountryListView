QT += quick

SOURCES += \
        City.cpp \
        Country.cpp \
        CountryManagementViewModel.cpp \
        CountryManager.cpp \
        JsonFileManager.cpp \
        SortFiltterModule.cpp \
        main.cpp

resources.files = main.qml \
                  ListViewApplicationComponent.qml\
                  ListViewDeleagateComponent.qml\
                  BorderComponent.qml \
                  CountryListComponent.qml \
                  SerachComponent.qml \
                  HeaderComponent.qml \
                  CustomImage.qml

resources.prefix = /$${TARGET}
RESOURCES += resources \
    qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    City.h \
    Country.h \
    CountryManagementViewModel.h \
    CountryManager.h \
    FileManager.h \
    JsonFileManager.h \
    SortFiltterModule.h

DISTFILES += \
    BorderComponent.qml \
    CountryListComponent.qml \
    CustomImage.qml \
    HeaderComponent.qml \
    ListViewApplicationComponent.qml \
    ListViewDeleagateComponent.qml \
    SerachComponent.qml
