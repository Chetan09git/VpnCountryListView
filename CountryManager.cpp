#include "CountryManager.h"
#include <QDebug>
#include <QTimer>

CountryManager *CountryManager::m_countryManager = nullptr;

CountryManager::CountryManager(QObject *parent)
    : QObject{parent}
{
    // countryInitializer();
}

QMap<int, Country *> CountryManager::getCountryList() const
{
    return m_countryList;
}

void CountryManager::addCountry(QString newCountryName,int newcountryIp)
{
    m_Country = new Country(newCountryName,newcountryIp);
    m_countryList.insert(newcountryIp,m_Country);
    emit countryAdded(newCountryName);
}

CountryManager *CountryManager::init()
{
    if(m_countryManager == nullptr)
    {
        m_countryManager = new CountryManager;
        return m_countryManager;
    }
    else
        return m_countryManager;
}

void CountryManager::countryInitializer()
{
    // addCountry("India", 91);
    // addCountry("United States", 1);
    // addCountry("United Kingdom", 44);
    // addCountry("Canada", 11);
    // addCountry("Australia", 61);
    // addCountry("Germany", 49);
    // addCountry("France", 33);
    // addCountry("Japan", 81);
    // addCountry("China", 86);
    // addCountry("Brazil", 55);
    // addCountry("Russia", 7);
    // addCountry("Italy", 39);
    // addCountry("Spain", 34);
    // addCountry("South Korea", 82);
    // addCountry("Mexico", 52);
    // addCountry("Singapore", 65);
    // addCountry("Netherlands", 31);
    // addCountry("Sweden", 46);
    // addCountry("Norway", 47);
    // addCountry("South Africa", 27);
    // Country *country = m_countryList.value(91);
    // country->addCity("Bengalore",11);
    // country->addCity("mumbai",12);
    // country = m_countryList.value(1);
    // country->addCity("California",22);
    // QTimer::singleShot(10000, this, [this]() {
    //     addCountry("Ch", 19);
    // });


 }
