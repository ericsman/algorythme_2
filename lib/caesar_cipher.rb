def caesar_cipher(chaine, nombre)
    chaine_x = ""
    tab_x = Array.new
    tab_phrase=chaine.split(" ")
    tab_phrase.each do |x|
        x.each_byte do |y|
            if y >= 65 && y <= 90
                maj = y + nombre
                if  maj > 90
                    chaine_x << (maj - 91 + 65).chr
                else 
                    chaine_x << maj.chr
                end
            elsif y >= 97 && y <= 122
                maj = y + nombre
                if maj > 122
                    chaine_x << (maj - 123 + 97).chr
                else 
                    chaine_x << maj.chr
                end
            else
                chaine_x << y.chr   
            end
        end 
        tab_x << chaine_x  
        chaine_x = ""
    end
        

    return tab_x.join(" ")
end
puts caesar_cipher("maman va au marché?", 5)