classroom = {
  fith_grade:{
    desk_types:{
      standing_desks: 8,
      sitting_desks:4
    },
    supplies: ["pencils","paper", "tape", "markers", "ruler", "scissors"],
    teachers: {
      classroom1: 'Mr. Knowitall',
      classroom2: 'Mrs. Supercool',
      classroom3: 'Mr. Badnews'
    },
  }
}




puts classroom[:fith_grade][:teachers][:classroom1]

puts classroom[:fith_grade][:desk_types][:standing_desks]

puts classroom[:fith_grade][:supplies][3]

puts classroom[:fith_grade][:teachers][:classroom2].upcase