def select_books_titles_and_years_in_first_series_order_by_year
  "select title, year from books where series_id = 1 order by year"
end

def select_name_and_motto_of_char_with_longest_motto
  "select name, motto from characters order by length(motto) desc limit 1"
end


def select_value_and_count_of_most_prolific_species
  "select species, count(id) from characters group by species order by count(id) desc limit 1"
end

def select_name_and_series_subgenres_of_authors
  "select a.name, c.name from authors a left join series b on a.id = b.author_id left join subgenres c on b.subgenre_id = c.id"
end

def select_series_title_with_most_human_characters
  "select title from (select b.title, count(character_id) from characters a left join series b on a.series_id = b.id where species = 'human' group by b.series_name order by count(character_id) desc) d limit 1"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
end
