# Redmine plugin

Плагин Redmine добавляет новое поле ext_id к существующей модели Issue.

### Установка

1. Из корня проекта Redmine перейдите в директорию plugins
```
cd plugins
```
2. Клонируйте репозиторий в текущую директорию
```
git clone git@github.com:an280420/redmine-plug-add-column.git
```
3. Запустите миграцию для добавления колонки в таблицу issues

linux:
```
RAILS_ENV=production bundle exec rails redmine:plugins:migrate
```
windows:
```
bundle exec rails redmine:plugins:migrate RAILS_ENV=production
```
### Доступ по API

1. В настройках проекта redmine активируйте доступ по API

2. Скопируйте Ваш API-Key

3. Отредактируйте issue запустив команду с вашим API-Key
```
curl -X PUT -H "Content-Type: application/json" -H "X-Redmine-API-Key: d96e0affc70b73386308e852c76efd93d111111" -d'{"issue":{"subject": "Subject changed", "notes": "The subject was changed", "ext_id": 99999}}' http://localhost:3000/issues/1.json
```
### Удаление плагина

1. Откатите миграцию 

```
RAILS_ENV=production bundle exec rails redmine:plugins:migrate NAME=add_ext_id_to_issues VERSION=0
```
2. Удалите плагин из директории `plugins/`
```
cd plugins/
rm -rf add_ext_id_to_issues
```
