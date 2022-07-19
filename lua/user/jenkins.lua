local status_ok, jenkins = pcall(require, "jenkinsfile_linter")
if not status_ok then
	print("require jenkinsfile_linter plugin command failed")
	return
end

jenkins.validate()
