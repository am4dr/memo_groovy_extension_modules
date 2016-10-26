mkdir hogeclasses
javac -encoding "utf-8" -d hogeclasses hoge/Hoge.java 
jar cvf hoge.jar -C hogeclasses .

mkdir piyoclasses\META-INF\services
copy org.codehaus.groovy.runtime.ExtensionModule piyoclasses\META-INF\services
javac -encoding "utf-8" -cp hoge.jar -d piyoclasses -sourcepath ext ext\piyo\HogeExtension.java
jar cvf hoge.ext.jar -C piyoclasses .



