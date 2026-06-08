#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "CountryManagementViewModel.h"
#include "SortFiltterModule.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    CountryManagementViewModel countryModel;

    SortFiltterModule filterModel;
    filterModel.setSourceModel(&countryModel);


    QQmlApplicationEngine engine;

    engine.rootContext()->setContextProperty("countryModel", &filterModel);

    const QUrl url(QStringLiteral("qrc:/VpnCountryList/main.qml"));

    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl)
        {
            if (!obj && objUrl == url)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);

    engine.load(url);

    return app.exec();
}