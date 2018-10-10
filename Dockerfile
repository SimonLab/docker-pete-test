FROM elixir:1.7.3

RUN mix local.hex --force \
  && mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez --force \
  && apt-get update \
  && curl -sL https://deb.nodesource.com/setup_8.x | bash \
  && apt-get install -y apt-utils \
  && apt-get install -y nodejs \
  && apt-get install -y build-essential \
  && apt-get install -y inotify-tools \
  && mix local.rebar --force

ENV APP_HOME /app
WORKDIR $APP_HOME


CMD ["mix", "phx.server"]
