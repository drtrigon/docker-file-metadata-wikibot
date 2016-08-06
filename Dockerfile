FROM pywikibotcatfiles/file-metadata
MAINTAINER DrTrigon <dr.trigon@surfeu.ch>

RUN pip show pip

# Installation of most recent (nightly) pywikibot
#RUN git clone --branch 2.0 --recursive https://gerrit.wikimedia.org/r/pywikibot/core.git
RUN wikibot-filemeta-log || \
  pip install git+https://gerrit.wikimedia.org/r/pywikibot/core.git#egg=pywikibot --update

# Show some info about usage of wikibot commands
RUN wikibot-filemeta-log || true
RUN wikibot-filemeta-log -help
RUN wikibot-filemeta-simple || true
RUN wikibot-filemeta-simple -help


### vvv  seperate Dockerfile for testing  vvv ###

# Setup hacky login work-a-round for testing
#RUN wikibot-create-config

#ADD user-config.py .
#ADD pywikibot.lwp.hack .
#ADD login-hack.py .

# Bot test runs
#RUN wikibot-filemeta-log -search:'eth-bib' -limit:5 -logname:test -dry
#RUN wikibot-filemeta-simple -cat:SVG_files -limit:5
