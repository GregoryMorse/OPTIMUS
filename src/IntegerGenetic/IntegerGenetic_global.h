#ifndef INTEGERGENETIC_GLOBAL_H
#define INTEGERGENETIC_GLOBAL_H

#include <QtCore/qglobal.h>

#if defined(INTEGERGENETIC_LIBRARY)
#  define INTEGERGENETIC_EXPORT Q_DECL_EXPORT
#else
#  define INTEGERGENETIC_EXPORT Q_DECL_IMPORT
#endif

#endif // INTEGERGENETIC_GLOBAL_H
