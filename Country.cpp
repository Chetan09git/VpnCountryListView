#include "Country.h"
#include "City.h"

Country::Country(QString newCountryName,int newCountryIp, QObject *parent)
    : QObject{parent}
{

    m_country = newCountryName;
    m_countryIp = newCountryIp;
}


QString Country::getCountry() const
{
    return m_country;
}

int Country::countryIp() const
{
    return m_countryIp;
}


void Country::addCity(QString cityName, int cityIp)
{
    m_city = new City(cityName,cityIp);

    m_cityList.push_back(m_city);
}


QList<City *> Country::getCityList() const
{
    return m_cityList;
}


void Country::setCountryIp(int newCountryIp)
{
    m_countryIp = newCountryIp;
}

void Country::setCountry(const QString &newCountry)
{
    m_country = newCountry;
}
