# Boris bikes
This was the first weeks challenge at Makers Academy. The task was to build a command line app in pure ruby to emulate the boris bikes system currently used in London. The main objective of this challenge was to introduce myself to the main concepts of the OOP paradigm. 

It was also my first introduction to using Rspec for TDD.

Tech Used:
* Ruby
* RSpec



## To run
Firstly, clone the repo

```
cd boris-bikes
bundle install
irb
require './lib/dockingstation.rb'

```
create a docking station by doing the following:
```
docking_station(40) = DockingStation.new

```
and create some bikes
```
bike = Bike.new
bike2 = Bike.new

```
You can dock and release bikes at a docking station, if a bike is broken you can report it broken
```
docking_station.dock(bike)
docking_station.release_bike
bike.report_broken

```



## To test

Clone the repo
```
cd boris-bikes
bundle install
rspec
```
To check test coverage after running rspec do the following:
```
open coverage.index.html

```


