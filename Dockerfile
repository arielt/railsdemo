FROM rails:onbuild

COPY agent /
COPY agent_conf /
COPY config.yml.erb /
COPY config.yml config/

RUN bin/rake db:migrate RAILS_ENV=development

