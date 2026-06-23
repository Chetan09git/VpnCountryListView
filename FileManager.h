#ifndef FILEMANAGER_H
#define FILEMANAGER_H
#include <QObject>


class CountryManager;

class FileManager
{

public:

    virtual bool writeJson(const QString &fileName,
                           CountryManager *manager) = 0;
    virtual bool readJson(const QString &fileName,
                          CountryManager *manager) = 0;
};

#endif // FILEMANAGER_H
