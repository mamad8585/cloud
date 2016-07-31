do

function run(msg, matches)
       if not is_momod(msg) then
        return "❗️Only For Owner And Sudo❗️"
       end
    local data = load_data(_config.moderation.data)
      local group_link = data[tostring(msg.to.id)]['settings']['set_link']
       if not group_link then 
        return "✍🏻need to build new links please Type /newlink❗️"
       end
         local text = "#Link For "..msg.to.title.."\n➖➖➖➖➖➖➖➖➖➖➖\n"..group_link.."\n➖➖➖➖➖➖➖➖➖➖➖"
          send_large_msg('user#id'..msg.from.id, text, ok_cb, false)
           return "❗️Send Link To Pv❗️"
end

return {
  patterns = {
    "^[/#!]([Ll]inkpv)$"
  },
  run = run
}

end
