def read()
    puts "Введите строку: "
    str=gets
end

def find_date(str)
    #st = "\033[7m"
    #en = "\033[m"
    return str.scan(/(?:[1-9]|[12][\d]|[3][01]) (?:декабря|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября) (?:[1-9]{1}\d*)/)
end

def rus(str)
  return str.scan(/[А-я]+/).length
end


def latin(str)
  return str.scan(/[a-z]+/)
end

def mini(str)
  return str.scan(/[\d]/).min
end

    #puts "Минимальное число: #{mini(read())}"
    #puts "Латинские буквы: #{latin(read())}"
    #puts "Количество русских букв: #{rus(read())}"
    puts "Все даты: #{find_date(read())}"