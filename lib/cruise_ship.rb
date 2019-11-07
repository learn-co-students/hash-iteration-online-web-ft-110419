 passengers = {
 suite_a: "Amanda Presley",
 suite_b: "Seymour Hoffman",
 suite_c: "Alfred Tennyson",
 suite_d: "Charlie Chaplin",
 suite_e: "Crumpet the Elf"
 }

def select_winner(passengers)
  passengers[:suite_a] if passengers[:suite_a][0] == "A"
end
