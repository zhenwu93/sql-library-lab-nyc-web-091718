def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, books.year
  FROM books
  JOIN series
  ON books.series_id = series_id
  GROUP BY books.year
  HAVING series_id = 1"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  ORDER BY motto
  ASC LIMIT 1"
end


def select_value_and_count_of_most_prolific_species
  "SELECT MAX(species), COUNT(species)
  FROM characters
  GROUP BY species
  ORDER BY COUNT(species)
  DESC LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  JOIN series
  ON series.author_id = authors.id
  JOIN subgenres
  ON series.subgenre_id = subgenres.id"
end

def select_series_title_with_most_human_characters
  "SELECT series.title
  FROM series
  JOIN characters
  ON series.author_id = characters.author_id
  ORDER BY series.title
  ASC LIMIT 1 "
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(characters.series_id)
  FROM characters
  JOIN character_books
  ON character_books.character_id = characters.id
  JOIN books
  ON character_books.book_id = books.id
  GROUP BY characters.name
  ORDER BY COUNT(characters.series_id)
  DESC"
end
