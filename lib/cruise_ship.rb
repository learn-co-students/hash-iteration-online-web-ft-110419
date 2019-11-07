 passengers = {
suite_a: "Amanda Presley", 
suite_b: "Seymour Hoffman", 
suite_c: "Alfred Tennyson", 
suite_d: "Charlie Chaplin", 
suite_e: "Crumpet the Elf"
}

def select_winner(passengers)
  # add the code snippet here!
  passengers.each do |key , value|
     if passengers[key].start_with?('A')
       return passengers[key]
     end
  end
end