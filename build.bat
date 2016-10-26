rem eecho off
set BUILD_DIR=build

set HOGE_BUILD_DIR=%BUILD_DIR%\hogeclass
mkdir %HOGE_BUILD_DIR%
javac -encoding "utf-8" -d %HOGE_BUILD_DIR% hoge/Hoge.java 
jar cvf %BUILD_DIR%\hoge.jar -C %HOGE_BUILD_DIR% .

set PIYO_BUILD_DIR=%BUILD_DIR%\piyoclasses
mkdir %PIYO_BUILD_DIR%\META-INF\services
copy org.codehaus.groovy.runtime.ExtensionModule %PIYO_BUILD_DIR%\META-INF\services
javac -encoding "utf-8" -cp %BUILD_DIR%\hoge.jar -d %PIYO_BUILD_DIR% -sourcepath ext ext\piyo\HogeExtension.java
jar cvf %BUILD_DIR%\hoge.ext.jar -C %PIYO_BUILD_DIR% .



