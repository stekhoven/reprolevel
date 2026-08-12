-- Keep the six-column framework summary and its preceding caption together on
-- a landscape PDF page. HTML retains the responsive table from the source.
function Pandoc(document)
  if not FORMAT:match("latex") then
    return document
  end

  local output = {}
  for _, block in ipairs(document.blocks) do
    if block.t == "Table" and #block.colspecs == 6 then
      local caption = table.remove(output)
      local widths = { 0.13, 0.18, 0.18, 0.17, 0.16, 0.18 }
      for index, width in ipairs(widths) do
        block.colspecs[index] = { pandoc.AlignLeft, width }
      end

      table.insert(output,
        pandoc.RawBlock("latex", "\\begin{landscape}\\begingroup\\scriptsize"))
      if caption then
        table.insert(output, caption)
      end
      table.insert(output, block)
      table.insert(output,
        pandoc.RawBlock("latex", "\\endgroup\\end{landscape}"))
    else
      table.insert(output, block)
    end
  end

  document.blocks = output
  return document
end
