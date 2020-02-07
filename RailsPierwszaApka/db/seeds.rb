kolekcja1 = (1..3) #do projectsow
kolekcja2 = (1..3) #do todolist
kolekcja3 = (1..6) #do taskow
kolekcja4 = (1..4) #do commentsow

kolekcja1.each do |numer1|
  projecty = Project.create("name"=>"Nazwa_nr_#{numer1}", "description"=>"Opis_nr_#{numer1}")
  kolekcja2.each do |numer2|
    todolisty = ToDoList.create("name"=>"Moja_todolista_#{numer2}", "project"=> projecty)
    kolekcja3.each do |numer3|
      Task.create("name"=>"Moje_imie_nr_#{numer3}", "description"=>"Opis mojego taska nr #{numer3}", "due_date"=>"2#{numer1}#{numer2}#{numer3}-09-20", "position"=>numer3+1, "done_status"=>true, "to_do_list"=>todolisty)
    end
    kolekcja4.each do |numer4|
      Comment.create("user_name"=>"Taki username_#{numer4}", "post_date"=>"2#{numer1}#{numer2}#{numer4}-04-03", "body"=>"Moj_maly_komentarz_#{numer4}", "file"=>"Tekst#{numer4}" ,"to_do_list"=>todolisty)
    end
  end
end
