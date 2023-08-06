import math
#see more on https://learn.microsoft.com/ru-ru/windows/win32/direct3d9/transforms
#currently simplified for 2d
#rotation counterclockwise
def round_float_number(number, digits_after_point):
    return float(f"{{:.{digits_after_point}f}}".format(number))
def rotate(angle, radius):
    x = radius * math.cos(math.radians(angle))
    y = radius * math.sin(math.radians(angle % 180))
    return x, y

sphere_pos_shift = round_float_number(float(input("sphere x center: ")), 3), round_float_number(float(input("sphere y center: ")), 3)
num = int(input("number of instances: "))                                   #total instances (MUST BE 2+, DO NOT SET NEGATIVE, otherwise - there is no rotation)
radius = float(input("radius: "))                                           #raduis of the sphere
angle = float(input("start angle: ")) % 360                                 #in degrees
delta_angle = (float(input("total rotation angle: ")) % 360) / (num - 1)    #in degrees
while (num > 0):
    x, y = rotate(angle, radius)
    x, y = sphere_pos_shift[0] + round_float_number(x, 3), sphere_pos_shift[1] - round_float_number(y, 3)
    print(f"instance number: {num}\t\tx,y: {x, y}")
    angle += delta_angle
    num -= 1
