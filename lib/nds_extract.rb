$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'



  
  def directors_totals(nds)
  director_grosses = {}
  row_counter = 0
  #represents each director or each element of #the 
    #overall array
  while row_counter < nds.length do
    #this will cycle through each director
    total_gross = 0
    #this will reset each director's total gross #to 0 before summing each iteration
    column_counter = 0
    #this represents the movies of each director
      while column_counter < nds[row_counter][:movies].length
      
      #the length of the array of values tied to #a particular director's movies
        total_gross += nds[row_counter][:movies][column_counter][:worldwide_gross]
        #this represents a particular director's #particluar movie's worldwide gross #summed over all of that director's #movies 
        column_counter += 1
      end
      directors_name = nds[row_counter][:name]
      #this is the particular director's name for #this iteration of rows
     director_grosses[:directors_name] = total_gross
     #this adds a key value pair to the #directors_grosses hash of director and #that director's total gross
     row_counter += 1
  end
  director_grosses
  #this returns the hash of director's grosses
end









