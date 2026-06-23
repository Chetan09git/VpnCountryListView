#ifndef COUNTRYMANAGER_H
#define COUNTRYMANAGER_H

#include "Country.h"
#include <QObject>
#include <QMap>

class CountryManager : public QObject
{
    Q_OBJECT
    explicit CountryManager(QObject *parent = nullptr);
public:

    QMap<int, Country *> getCountryList() const;

    static CountryManager *init();

    void addCountry(QString newCountryName, int newcountryIp);
signals:
    void countryAdded(const QString &newCountryName);

private:

    static CountryManager *m_countryManager;

    void countryInitializer();
    Country *m_Country;
    QMap<int,Country*> m_countryList;
};

#endif // COUNTRYMANAGER_H
