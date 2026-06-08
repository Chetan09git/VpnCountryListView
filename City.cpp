#include "City.h"

City::City(QString cityName,int cityIp,QObject *parent)
    : QObject{parent}
{
    m_cityName = cityName;
    m_pinCode = cityIp;
}

int City::getPinCode() const
{
    return m_pinCode;
}


QString City::getCityName() const
{
    return m_cityName;
}

void City::setPinCode(int newPinCode)
{
    m_pinCode = newPinCode;
}

void City::setCityName(const QString &newCityName)
{
    m_cityName = newCityName;
}
