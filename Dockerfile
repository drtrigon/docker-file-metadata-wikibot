FROM pywikibotcatfiles/file-metadata
MAINTAINER DrTrigon <dr.trigon@surfeu.ch>

# Installation of most recent (nightly) pywikibot
#RUN git clone --branch 2.0 --recursive https://gerrit.wikimedia.org/r/pywikibot/core.git
RUN wikibot-filemeta-log || true
RUN pip install git+https://gerrit.wikimedia.org/r/pywikibot/core.git#egg=pywikibot

# Show some info about usage of wikibot commands
RUN wikibot-filemeta-log -help || true
RUN wikibot-filemeta-simple -help || true
