require 'pry'
require 'pry-byebug'

class Car
  attr_accessor :doors, :cylinders, :color
  def initialize(doors,cylinders,color)
    @doors=doors
    @cylinders=cylinders
    @color=color
  end 
end

def read_file
  @lines=[]
  file = File.open('text.txt','r')
  while line = file.gets
    @lines << line
  end
  file.close
end

def instance_create
  @car_arr=[]
  x=0
  @lines.each do |car| 
    car_v = car.split("|")
    color=car_v[2].split("").select{|x| x!="\n"}.join()
    car_v.pop()
    car_v.push(color)
    car = Car.new(car_v[0],car_v[1],car_v[2])
    @car_arr << car 
  end 
  
end

def set_create
  # Testing yield
  yield
  @set2 = @car_arr.select{ |item| item.doors == "4" }
end

def printing_set1
  puts "** SET 1 **"
  puts "There are #{@set1.length} cars"
  @set1.each_with_index do |item,index|
    if item.color == "prime"
      item.color = "red"
    elsif item.color == "white"
      item.color = "green"
    else
      item.color = "undefined"
    end
    puts "Car #{index} features:"
    puts "- #{item.doors} doors"
    puts "- #{item.cylinders} cylinders"
    puts "- #{item.color} color"
    puts "-" * 20 
    puts 
  end
end

def printing_set2
  puts "** SET 2 **"
  puts "There are #{@set2.length} cars"
  @set2.each_with_index do |item,index|
    if item.color == "white"
      item.color = "black"
    elsif item.color == "yellow"
      item.color = "gray"
    else
      item.color = "undefined"
    end
    puts "Car #{index} features:"
    puts "- #{item.doors} doors"
    puts "- #{item.cylinders} cylinders"
    puts "- #{item.color} color"
    puts "-" * 20 
    puts 
  end
end

# Calling all methods
read_file
instance_create
# Testing yield
set_create {@set1 = @car_arr.select{|item| item.doors == "2" }}
printing_set1
printing_set2

binding.pry