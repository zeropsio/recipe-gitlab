external_url = "http://gitlab.zerops"

postgresql['enable'] = false

gitlab_rails['initial_root_password'] = '$$GITLAB_ROOT_PASSWORD$$'
gitlab_rails['db_adapter'] = 'postgresql'
gitlab_rails['db_encoding'] = 'utf8'
gitlab_rails['db_host'] = 'db'
gitlab_rails['db_port'] = 5432
gitlab_rails['db_username'] = '$$db_user$$'
gitlab_rails['db_password'] = '$$db_password$$'
