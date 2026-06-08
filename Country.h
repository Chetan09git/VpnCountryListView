#ifndef COUNTRY_H
#define COUNTRY_H

#include <QObject>
#include <QList>
#include "City.h"

class Country : public QObject
{
    Q_OBJECT
public:
    explicit Country(QString newCountryName, int newCountryIp, QObject *parent = nullptr);

    void setCountry(const QString &newCountry);
    QString getCountry()const;

    int countryIp() const;
    void setCountryIp(int newCountryIp);
    void addCity(QString cityName, int cityIp);


    QList<City *> getCityList() const;

private:
    QString m_country;
    int m_countryIp;

    City *m_city;
    QList< City*> m_cityList ;
};

#endif // COUNTRY_H
