FROM pywikibotcatfiles/file-metadata
MAINTAINER DrTrigon <dr.trigon@surfeu.ch>

#RUN git clone --branch 2.0 --recursive https://gerrit.wikimedia.org/r/pywikibot/core.git

# Installation of most recent (nightly) pywikibot
RUN wikibot-filemeta-log || \
  pip install git+https://gerrit.wikimedia.org/r/pywikibot/core.git#egg=pywikibot
