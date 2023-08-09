@echo off

set PROMTOOL_PATH=C:\Program Files (x86)\prometheus-2.46.0.windows-amd64
set RULES_FILE_PATH=C:\Repos\oncall\rules\alerts.rules.yml
set TESTS_FILE_PATH=C:\Repos\oncall\rules\test.yml

cd /d %PROMTOOL_PATH%

promtool check rules %RULES_FILE_PATH%
promtool test rules %TESTS_FILE_PATH%
