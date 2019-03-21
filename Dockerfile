FROM barpilot/captain:0

LABEL version="0.0.1"
LABEL repository="https://github.com/barpilot/captain-actions"
LABEL homepage="https://github.com/barpilot/captain-actions"
LABEL maintainer="Guilhem Lettron <guilhem@barpilot.io>"

LABEL com.github.actions.name="GitHub Action for captain"
LABEL com.github.actions.description="Release your docker images with."
LABEL com.github.actions.icon="package"
LABEL com.github.actions.color="blue"
COPY LICENSE README.md /
