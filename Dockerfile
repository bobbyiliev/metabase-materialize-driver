ARG METABASE_VERSION=latest
FROM metabase/metabase:${METABASE_VERSION}

ADD target/dist/materialize-driver.jar /plugins/
RUN chmod 744 /plugins/materialize-driver.jar
