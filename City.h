#ifndef CITY_H
#define CITY_H

#include <QObject>

class City : public QObject
{
    Q_OBJECT
public:
    explicit City(QString cityName,int cityIp,QObject *parent = nullptr);

    int getPinCode() const;
    void setPinCode(int newPinCode);

    QString getCityName() const;

    void setCityName(const QString &newCityName);

private:
    QString m_cityName;
    int m_pinCode;
};

#endif // CITY_H
