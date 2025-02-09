# Equestria at War 2
<h2>This is mod repository.</h2>
It also contains some modules that can be used in your mode.
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/mtth/math_operators.txt">Math module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/array_operators.txt">Array module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/data_storage_operators.txt">Data extention module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/events/recursive.txt">Thread module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/unit_generator_scripted_effects.txt">Unit generator</a>
</br>
If you use this code as template or copy - please make referense to this readme.md.  
This will extend your code documentation and promote these scripts being upgraded!

# Mod policy
The mod code is opensorce, so you can get ideas, script examples and copy algorithms. Also it provides a PDX Standart 1.6 example (not all files). If you copy any source of algorith or code - please point author (if metioned in file) and this mod.

# Mod documentation (scenario and mechanics, tech and events)
[English](docs/English.md)  
[Russian](docs/Russian.md)

# Math module documentation
Allows to do calculations, that not provided by PDX.
Was applyed python syntax of <a href = "https://docs.python.org/3/library/math.html">math module</a>.
Examples of code usage in module file.
Supports functions:
<dl>
    <dd>ceil: ceil()</dd>
    <dd>floor: floor()</dd>
    <dd>division_without_remainder: //</dd>
    <dd>remainder_of_division: %</dd>
    <dd>abs: abs()</dd>
    <dd>sqrt_2: sqrt()</dd>
    <dd>sin: sin()</dd>
    <dd>cos: cos()</dd>
    <dd>arcsin: asin()</dd>
    <dd>arctg: atan()</dd>
    <dd>erf: erf()</dd>
    <dd>erfi</dd>
</dl>
Also there is a table for other functions (will be added after main functions) in module file.

# Array module documentation
Allows to do actions with array like with a line of var^&#8249;n&#8250;, where n &#8712; Z and one of n is 0.
coming soon!

# Data extention module documentation
Allows to store big data, more than allow PDX variable (&#177;2^31//1000).  
Allows to convert one type of data to another:
<dl>
    <dd>Integer to BigInteger</dd>
    <dd>BigInteger to Integer</dd>
</dl>
Allows to apply mass boolean operations (OR/AND/XOR/NOT).  
Values for BigInteger is &#177;2^(2^31//1000 - 1).  
BigInteger stores data in binary type.  
Double coming soon (IEEE754 standart)!  
coming soon!

# Thread module
Allows to create async threads, that can be synchronised through static values.

# Unit gerator
Allows to spawn country units on_start_up without oob file (witch contains division location).

# OOP has been finaly defined!
OOP abstraction is generated character. It can store some data and be accessed by name/predefined token. This creates new fields (data or even methods) that are not static and lead to inheritance without meta_effect/meta_trigger for complicated naming rules.  
NOTE: history/general now doesn`t represent OOP due to optimisation and simplification.

# Mod code documentation
Very important notes added to .doc files and files that starts from "00_".
Isn`t done yet.

# Vanila mod:
This item is not authorized for posting on Steam, except under the Steam account named "Equestria At War Team" (https://steamcommunity.com/id/Equestria_At_War).

<a href="https://github.com/Pasha-2033/EaW-2/issues"><img alt="Issues" src="https://img.shields.io/github/issues/Pasha-2033/EaW-2?color=0088ff"/></a>
<a href="https://github.com/Pasha-2033/EaW-2/pulls"><img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/Pasha-2033/EaW-2?color=0088ff"/></a>
