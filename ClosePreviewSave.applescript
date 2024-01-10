(*
Short script to  save large number of open pdf and screenshot data quickly, with option to save, reduce repetiive searching with the mouse to find save-as buttons.
 
Tested -- in Script Editor app, Mac Os 10.15
**BUGGY-- Partial-functionality but has unresolved bugs where, after working on a few windows,  suddenly bugs out while running. Appears to lose handle on list of windows.  Re-execution seems to get job done.
Draft version-- Documentation, codes style and refactoring are works in progress.


#Output --Closes each open window of the mac Preview app.
#Input  -- Prompt user to save each open window to last used folder.


*)-- tell application "Preview"	close every window	set all_windows to every window	repeat with current_window in all_windows		if modified of current_window is true then			save current_window		end if	end repeatend tell