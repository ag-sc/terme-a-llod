/virtuoso_data/virtuoso.sh

cp /usr/local/virtuoso-opensource/share/virtuoso/vad/fct_dav.vad /virtuoso_data/
cd /tmp/server && isql-v 1111 dba dba fctinstall.db

#su - jetty -c "cd /var/lib/jetty/ && /usr/bin/java -jar /usr/local/jetty/start.jar -Djava.io.tmpdir=/tmp/jetty/ -Djetty.http.port=9000" &
#su - jetty -c "java -Dorg.eclipse.jetty.util.log.class=org.eclipse.jetty.util.log.StdErrLog -Dorg.eclipse.jetty.LEVEL=INFO -jar jetty-runner.jar --port 9000 --path / /tmp/server/pubby/webapp/" &
java -Dorg.eclipse.jetty.util.log.class=org.eclipse.jetty.util.log.StdErrLog -Dorg.eclipse.jetty.LEVEL=INFO -jar jetty-runner.jar --port 9000 --path / /tmp/server/pubby/webapp/ &

cd /tmp/server/
npm start 
