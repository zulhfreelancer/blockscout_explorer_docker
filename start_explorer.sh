#!/bin/sh
printenv
sleep 5
mix do ecto.drop --force, ecto.create, ecto.migrate
mix phx.server
