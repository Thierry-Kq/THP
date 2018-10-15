def cesar(str, unknow)
  x = unknow % 26
  my_pass = str.bytes
  my_pass.map! do |asc_tab|
    if asc_tab > 96 && asc_tab < 123 || asc_tab > 64 && asc_tab < 91
      asc_tab += x
      unless asc_tab > 96 && asc_tab < 123 || asc_tab > 64 && asc_tab < 91
        asc_tab -= 26
      end
    end
    print asc_tab.chr
  end
  puts ""
end

cesar("J'aime les cookies !!!!!!???? _- ", -1)
