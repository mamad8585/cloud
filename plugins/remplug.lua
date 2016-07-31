function run(msg, matches)
text = io.popen("cd plugins && rm -rf  " .. matches[1]):read('*all')
  return "🔆NAME PLUGIN🔆 "..matches[1].."\n❗️REMOVED❗️"
end
return {
  patterns = {
    "^[!/#]remplugin (.*)$"
  },
  run = run,
  moderated = true
}
