function foreach(table, callback)
  for key in pairs(table) do
    callback(table[key], key)
  end
end
