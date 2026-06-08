#include "CountryManagementViewModel.h"
#include "CountryManager.h"
#include "Country.h"
#include "City.h"
#include <QStringList>

CountryManagementViewModel::CountryManagementViewModel(QObject *parent)
    : QAbstractListModel(parent)
{
    m_countryManager = CountryManager::init();
    connect(m_countryManager, &CountryManager::countryAdded,
            this, &CountryManagementViewModel::handleCountryAdded);
}

int CountryManagementViewModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return m_countryManager->getCountryList().size();
}

QVariant CountryManagementViewModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    const auto &countryMap = m_countryManager->getCountryList();
    Country *country =countryMap.values().at(row);

    if (role == NameRole)
        return country->getCountry();

    else if (role == IpRole)
        return country->countryIp();

    else if (role == CitiesRole) {

        QStringList list;
        for (City *city : country->getCityList()) {
            list.append(city->getCityName());
        }
        return list;
    }

    return QVariant();
}

QHash<int, QByteArray> CountryManagementViewModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[NameRole] = "countryName";
    roles[IpRole] = "countryIp";
    roles[CitiesRole] = "cities";
    return roles;
}

void CountryManagementViewModel::handleCountryAdded(const QString &countryName)
{
    const auto countries = m_countryManager->getCountryList().values();

    int index = -1;

    for (int i = 0; i < countries.size(); ++i)
    {
        if (countries[i]->getCountry() == countryName)
        {
            index = i;
            break;
        }
    }

    if (index != -1)
    {
        beginInsertRows(QModelIndex(), index, index);
        endInsertRows();
    }
}
