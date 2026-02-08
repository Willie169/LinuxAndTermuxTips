cd ~
git clone https://github.com/yzyray/lizzieyzy.git
cd lizzieyzy
git checkout 2.5.3
mvn clean package
cd ..
## Run with
# java -jar lizzieyzy/target/lizzie-yzy2.5.3-shaded.jar
## You may set an alias for it. Example:
# alias lizzieyzy='java -jar $HOME/lizzieyzy/target/lizzie-yzy2.5.3-shaded.jar'
