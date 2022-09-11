#ifndef DATAFITTING_GLOBAL_H
#define DATAFITTING_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(DATAFITTING_LIBRARY)
#  define DATAFITTING_EXPORT Q_DECL_EXPORT
#else
#  define DATAFITTING_EXPORT Q_DECL_IMPORT
#endif

#endif // DATAFITTING_GLOBAL_H
