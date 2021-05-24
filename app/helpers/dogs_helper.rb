module DogsHelper
  def humanize seconds
    i =0;
    t = " "
    days = 0
    weeks = 0
     ActiveSupport::Duration.build(seconds).parts.map do |key, value|
       next if "#{key}" == "seconds"
       next if "#{key}" == "minutes"
       next if "#{key}" == "hours"
       if "#{key}" == "days" then days =  value; next end
         if "#{key}" == "weeks" then t = "#{t} #{value * 7 + days} days"
         else
           t = "#{t} #{value} #{key}"
          end

      end

      return t
  end

  def humanize_gender value
    case value
    when true
      'samiec'
    when false
      'samica'
    end
  end


  def humanize_vaccination value
    case value
    when 1
      'Brak Wymaganych szczepień'
    when 2
      'Wymagane szczepienia'
    when 3
      'Wymagane szczepienia i dodatkowe'
    end
  end


  def humanize_size value
    case value
    when 1
      'Mały'
    when 2
      'Niżej średni'
    when 3
      'Średni'
    when 4
      'Duży'
    when 5
      'Ogromny'
    end
  end


  def humanize_apartment_size value
    case value
    when 1
      'Jakikolwiek dach nad głową'
    when 2
      'Małe mieszkanie'
    when 3
      'Duże mieszkanie'
    when 4
      'Mieszkanie z ogrodem'
    when 5
      'Duża połać terenu'
    end
  end

  def humanize_childerns value
    case value
    when 1
      'Pies kocha dzieci, nigdy nie miał z nimi problemu'
    when 2
      'Pies kocha dzieci, jednak powinno się nadzorować jego kontakt z nimi'
    when 3
      'Kontakt z dziećmi tylko nadzorowany'
    when 4
      'Należy uważnie obserować psa podczas kontaktu z dzieckiem'
    when 5
      'Nie powinien przebywać z dziećmi'
    end
  end

  def humanize_time_to_spent value
    case value
    when 1
      'Pies potrafi przebywac samemu, nie potrzebuje stałego kontaktu'
    when 2
      'Pies potrafi zostać sam do 9-10 godzin'
    when 3
      'Pies powinien bez problemu sobie samemu radzić do 4-5 godzin'
    when 4
      'Pies źle znosi rozłąkę'
    when 5
      'PIes traumatycznie reaguje na pozostawienie go samemu'
    end
  end

  def humanize_owner_with_dogs value
    case value
    when 1
      'Właściciel nie miewa kontaktu z psami'
    when 2
      'Właściciel ma stałe kontakty z psami'
    when 3
      'W rodzinie kiedyś był pies'
    when 4
      'Posiadał psa w przeszłości'
    when 5
      'Właściciel ma/miał wiele psów i ma dobre z nimi doświadczenie'
    end
  end

  def humanize_animals value
    case value
    when 1
      'Pies bardzo dobrze czuje się przy innych zwierzetach i dobrze się zachowuje'
    when 2
      'PIes dobrze czuje się przy innych zwierzętach, jednakże zdarzy mu się pogonić np. kota'
    when 3
      'Pies nie powinien być pozostawiony bez nadzoru przy innych zwierzętach'
    when 4
      'Pies ma tendencje do atakowania innych zwierząt'
    when 5
      'Pies ma tendencje do atakowania innych psów'
    end
  end

  def humanize_noise value
    case value
    when 1
      'Pies jest cichy, bardzo rzadko szczeka'
    when 2
      'Psu zdarzy się szczeknąć w typowych dla tego sytuacjach'
    when 3
      'Pies często szczeka'
    when 4
      'Pies szczeka głośno'
    when 5
      'Pies szczeka bardzo głośno i bardzo często'
    end
  end

  def humanize_energy value
    case value
    when 1
      'Pies całymi dniami leży i raczej nie potrzebuje wiele ruchu'
    when 2
      'Pies jest spokojny, ale należy zabrać go na spacer 2-3 razy dziennie'
    when 3
      'Pies lubi spacery i zabawy na świeżym powietrzu'
    when 4
      'Pies jest pełen energii, należy zabierać go na długie spacery'
    when 5
      'Pies wymaga długich spacerów codziennie, ciężko go zmęczyć'
    end
  end

  def humanize_dispoition value
    case value
    when 1
      'Pies jest spokojny, łagodny, brak mu usposobienia obronnego'
    when 2
      'Pies jest spokojny i łagodny, jednak reaguje na zagrażające sytuacje'
    when 3
      'Pies jest spokojny, ma obronne usposobienie. Z chęcią obszczeka każdego intruza'
    when 4
      'Pies jest spokojny, jednak posiada obronne usposobienie'
    when 5
      'Pies bywa agresywny wobec obcych, jest nieufny'
    end
  end

  def humanize_coat value
    case value
    when 1
      'Krótka sierść'
    when 2
      'Sierść średniej długości'
    when 3
      'Długa sierść'
    when 4
      'Długa podwójna sierść'
    end
  end

  def humanize_drooling value
    case value
    when 1
      'Pies prawie się nie ślini'
    when 2
      'Pies czasami się slini'
    when 3
      'Pies trochę się ślini'
    when 4
      'Pies ślini się przez większość czasu'
    when 5
      'Pies ma ślinotok'
    end
  end

  def humanize_obedience value
    case value
    when 1
      'Pies zna wszystkie podstawowe komendy wraz ze sztuczkami'
    when 2
      'Pies zna wszystkie podstawowe komendy i wykonuje bez problemu'
    when 3
      'Pies zna wszystkie podstawowe komendy'
    when 4
      'Pies bywa uparty, jednak reaguje na najważniejsze komendy'
    when 5
      'Pies nie reaguje na komendy, potrafi jednak chodzić na smyczy'
    when 6
      'Pies nie potrafi nawet chodzić na smyczy'
    end
  end


end
