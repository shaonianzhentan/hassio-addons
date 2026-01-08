FROM mcr.microsoft.com/playwright/python:v1.43.0-jammy

ENV PLAYWRIGHT_BROWSERS_PATH=/ms-playwright

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
