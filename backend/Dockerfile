FROM elixir:1.19.3
WORKDIR /app
COPY mix.exs mix.lock ./
RUN mix do deps.get, deps.compile

COPY . .
RUN mix deps.get
RUN mix compile
EXPOSE 4000
CMD ["mix", "phx.server"]