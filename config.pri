CONFIG += c++11

unix {
        CONFIG(debug, debug|release) {
		CONFIG += DebugBuild
		LIBS += -L$${_PRO_FILE_PWD_}/../debug/
		DESTDIR = $${_PRO_FILE_PWD_}/../debug/
        } else {
		CONFIG += ReleaseBuild
		LIBS += -L$${_PRO_FILE_PWD_}/../release/
		DESTDIR = $${_PRO_FILE_PWD_}/../release/
        }

	CONFIG += staticlib

        RCC_DIR = $${_PRO_FILE_PWD_}/build
        MOC_DIR = $${_PRO_FILE_PWD_}/build
        OBJECTS_DIR = $${_PRO_FILE_PWD_}/build
        UI_DIR = $${_PRO_FILE_PWD_}/build
}

win32 {
        CONFIG(debug, debug|release) {
                CONFIG += DebugBuild
                LIBS += $${_PRO_FILE_PWD_}/../debug/
                DESTDIR = $${_PRO_FILE_PWD_}/../debug/
        } else {
                CONFIG += ReleaseBuild
                LIBS += $${_PRO_FILE_PWD_}/../release/
                DESTDIR = $${_PRO_FILE_PWD_}/../release/
        }

        CONFIG += staticlib

        RCC_DIR = $${_PRO_FILE_PWD_}/build
        MOC_DIR = $${_PRO_FILE_PWD_}/build
        OBJECTS_DIR = $${_PRO_FILE_PWD_}/build
        UI_DIR = $${_PRO_FILE_PWD_}/build
}
