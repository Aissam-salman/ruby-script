#mode algo simple 
a = 1
b = 1
c = 0
print "1,1,"
while c < 100
    c = a + b 
    print "#{c},"
    a = b 
    b = c 
end
