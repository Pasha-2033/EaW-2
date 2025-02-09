#pls use python 3.6+
#this file contains macro for differrent purpose (supports PDX v1.0 standart)
#functions
def std_focus_icon(args: str, result_files: list):
	result_files[0].write(f'\tSpriteType = {{\n\t\tname = "GFX_goal_{args}"\n\t\ttexturefile = "{global_args["relative_path"]}/{args}{global_args["file_format"]}"\n\t}}\n')
	result_files[1].write(f'\tSpriteType = {{\n\t\tname = "GFX_goal_{args}_shine"\n\t\ttexturefile = "{global_args["relative_path"]}/{args}{global_args["file_format"]}"\n\t\teffectFile = "gfx/FX/buttonstate.lua"\n\t\tanimation = {{\n\t\t\tanimationmaskfile = "{global_args["relative_path"]}/{args}{global_args["file_format"]}"\n\t\t\tanimationtexturefile = "{global_args["animationtexturefile"]}"\t# <- the animated file\n\t\t\tanimationrotation = -90.0\t\t#-90 clockwise 90 counterclockwise(by default)\n\t\t\tanimationlooping = no\t\t\t#yes or no ;)\n\t\t\tanimationtime = 0.75\t\t\t#in seconds\n\t\t\tanimationdelay = 0\t\t\t\t#in seconds\n\t\t\tanimationblendmode = "add"\t\t#add, multiply, overlay\n\t\t\tanimationtype = "scrolling"\t\t#scrolling, rotating, pulsing\n\t\t\tanimationrotationoffset = {{ x = 0.0 y = 0.0 }}\n\t\t\tanimationtexturescale = {{ x = 1.0 y = 1.0 }}\n\t\t}}\n\t\tanimation = {{\n\t\t\tanimationmaskfile = "{global_args["relative_path"]}/{args}{global_args["file_format"]}"\n\t\t\tanimationtexturefile = "{global_args["animationtexturefile"]}"\t# <- the animated file\n\t\t\tanimationrotation = 90.0\t\t#-90 clockwise 90 counterclockwise(by default)\n\t\t\tanimationlooping = no\t\t\t#yes or no ;)\n\t\t\tanimationtime = 0.75\t\t\t#in seconds\n\t\t\tanimationdelay = 0\t\t\t\t#in seconds\n\t\t\tanimationblendmode = "add"\t\t#add, multiply, overlay\n\t\t\tanimationtype = "scrolling"\t\t#scrolling, rotating, pulsing\n\t\t\tanimationrotationoffset = {{ x = 0.0 y = 0.0 }}\n\t\t\tanimationtexturescale = {{ x = 1.0 y = 1.0 }}\n\t\t}}\n\t\tlegacy_lazy_load = no\n\t}}\n')
	result_files[0].flush()
	result_files[1].flush()
	print(f'Focus icon and shine "{args}" created')
#functions
macro_dict = {
	"std_focus_icon": std_focus_icon
}
#result files for functions
file_dict = {
	"std_focus_icon": [open("goals.txt", "w+"), open("goals_file.txt", "w+")]
}
#args init for functions
args_dict = {
	"std_focus_icon": dict(
		relative_path = "gfx/interface/goals",							#relative path
		file_format = ".dds",											#file format (starts with dot!)
		animationtexturefile = "gfx/interface/goals/shine_overlay.dds"	#path to overlay (relative and with filename and file format!)
	)
}
global_args = None
while True:
	text = input()
	if text == "exit":
		break
	command_found = False #for finging errors
	for k, cv in macro_dict.items():
		if k == text:
			command_found = True
			result_files = file_dict[k]
			global_args = args_dict[k]
			max_key_len = max(len(k) for k, sv in global_args.items())
			while True:
				text = input()
				if text == "exit":
					for f in result_files:
						f.close()
					exit()
				elif text == "end":
					break
				elif text.startswith("listargs"):
					print("Global args are:")
					for k, sv in global_args.items():
						print(f"{{0:{max_key_len}}}:\t{{1}}".format(k, sv))
				elif text.startswith("arg["):
					if "]=" not in text:
						print("Failed to operate with arg - syntax error")
					else:
						arg_value = text[text.find("=") + 1:]
						if arg_value == "None":
							global_args.pop(text[4:text.find("]")], None)
						else:
							global_args[text[4:text.find("]")]] = arg_value
						max_key_len = max(len(k) for k, sv in global_args.items())
				else:
					cv(text, result_files)
			for f in result_files:
				f.close()
			break
	if not command_found:
		print(f"Failed to scpecialise to \"{text}\"")
