do
function run(msg, matches)
send_document(get_receiver(msg),'file/images.webp',ok_cb,false)
local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
local text = jdat.FAdate..'\n'..jdat.ENdate
return text
end
return {
  patterns = {
  "^[!/#]([Dd]ate)$",
  "^[!/#]([Tt]ime)$"
  }, 
run = run 
} 
end
