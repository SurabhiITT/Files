f1 = File.readlines('./File1.txt')
f2 = File.readlines('./File2.txt')
f3=File.readlines('./File3.txt')



File.open("./joined.txt","a") { |f| f.puts ['File1.txt', 'File2.txt' ,'File3.txt' ].map{ |s| IO.read(s) }}
#File.open("./joined.txt","a") { |f| f.puts ['File1.txt', 'File2.txt' ,'File3.txt' ].sort}