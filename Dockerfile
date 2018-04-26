FROM spaceapplicationsservices/docker-python-npm:latest

# xml and xslt for lxml, a html5lib dependency
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    gettext \
    postgresql-client libpq-dev \
    libxml2-dev libxslt-dev \
    # For pyldap
    libldap2-dev \
    libsasl2-dev \
    libmemcached-dev \
    # Dev
    psmisc \
    tree \
    nano \
    # For djangosaml2
    xmlsec1 \
 && rm -rf /var/lib/apt/lists/*
