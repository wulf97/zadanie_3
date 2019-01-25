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

        BASEDIR = $${IN_PWD}

	CONFIG += staticlib

        RCC_DIR = $${_PRO_FILE_PWD_}/build
        MOC_DIR = $${_PRO_FILE_PWD_}/build
        OBJECTS_DIR = $${_PRO_FILE_PWD_}/build
        UI_DIR = $${_PRO_FILE_PWD_}/build
}

win32 {
        BASEDIR = $${IN_PWD}
        CONFIG(debug, debug|release) {
                CONFIG += DebugBuild
                DESTDIR = $${_PRO_FILE_PWD_}/../debug
        } else:CONFIG(release, debug|release) {
                CONFIG += ReleaseBuild
                DESTDIR = $${_PRO_FILE_PWD_}/../release
        } else {
                error(Unsupported build)
        }

        CONFIG += staticlib

        RCC_DIR = $${_PRO_FILE_PWD_}/build
        MOC_DIR = $${_PRO_FILE_PWD_}/build
        OBJECTS_DIR = $${_PRO_FILE_PWD_}/build
        UI_DIR = $${_PRO_FILE_PWD_}/build

        message(BASEDIR $$BASEDIR DESTDIR $$DESTDIR TARGET $$TARGET)
}
