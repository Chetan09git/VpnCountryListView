#ifndef JSONFILEMANAGER_H
#define JSONFILEMANAGER_H

#include "FileManager.h"
#include <QObject>

class CountryManager;

class JsonFileManager : public FileManager
{
public:
    bool writeJson(const QString &fileName,
                   CountryManager *manager);
    bool readJson(const QString &fileName,
                  CountryManager *manager);
};

#endif