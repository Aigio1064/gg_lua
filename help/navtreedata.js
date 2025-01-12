/*
@ @licstart  The following is the entire license notice for the
JavaScript code in this file.

Copyright (C) 1997-2017 by Dimitri van Heesch

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

You should have received a copy of the GNU General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

@licend  The above is the entire license notice
for the JavaScript code in this file
*/
var NAVTREE =
[
  [ "GG help", "index.html", [
    [ "Scripting Documentation", "index.html", [
      [ "Overview", "index.html#overview", null ],
      [ "How do I get started?", "index.html#gettingstarted", null ],
      [ "List all API methods", "index.html#list_all", null ],
      [ "Additional Resources of Information", "index.html#moreinfo", null ]
    ] ],
    [ "API", "classgg.html", null ],
    [ "How to write a simple script", "simple_script.html", null ],
    [ "Script locale", "scripts_locale.html", null ],
    [ "Lua in GameGuardian", "lua_details.html", null ],
    [ "Lua disassembler / assembler", "lasm.html", null ],
    [ "Frequently asked questions", "faq.html", [
      [ "1. Why can not I enter a value greater than 99 or 60,000?", "faq.html#q1", null ],
      [ "2. How to search for fractional (Float) values, without fractional part of the value?", "faq.html#q2", null ],
      [ "3. I found the value and changed it, but in the game this change does not do anything. I'm just trying to use it but everything comes back. What am I doing wrong?", "faq.html#q3", null ],
      [ "4. Does not find the value in game X. Or finds it, but when changed nothing happens. Or it finds it, but after it's changed the game crashes. How do I know what the problem is, is it the protection in the game or with GameGuardian?", "faq.html#q4", null ],
      [ "5. How to search for time?", "faq.html#q5", null ],
      [ "6. Is it possible to hack online games?", "faq.html#q6", null ],
      [ "7. Where does speedhack work?", "faq.html#q7", null ],
      [ "8. GameGuardian as a whole works for me, but in some games I'm getting the PTRACE_ATTACH error. Why and what to do about it?", "faq.html#q8", null ],
      [ "9. Why does the application have such a strange package name? Why is the application not updated, but every time install separately? Why does each version have a different package name?", "faq.html#q9", null ],
      [ "10. In some games, when changing speed (speedhack), they stop responding to clicks. Is it game protection or program error?", "faq.html#q10", null ],
      [ "11. Why does it issue a comma separated list of errors?", "faq.html#q11", null ],
      [ "12. How do I perform multiple searches at the same time?", "faq.html#q12", null ],
      [ "13. Do I need to update the application if there is nothing significant in the changes?", "faq.html#q13", null ],
      [ "14. What are the symbols \"!\" and \"#\", before the process name?", "faq.html#q14", null ],
      [ "15. Why does the application after the standard installation also perform its own installation, issuing requests for root rights?", "faq.html#q15", null ],
      [ "16. What is catch_.me_.if_.you_.can_? Is it a trojan or a virus? Is it safe to give this application root access?", "faq.html#q16", null ],
      [ "17. Why is GameGuardian in the list of installed applications named as a random character set? Why does this character set request root access? Why when launching GameGuardian writes that the root is not provided by GameGuardian, but by some kind of abracadabra?", "faq.html#q17", null ],
      [ "18. Why is GameGuardian of the latest versions sometimes detected by anticheats, and sometimes not?", "faq.html#q18", null ],
      [ "19. Why is my game not in the application list?", "faq.html#q19", null ],
      [ "20. Why can Java applications not respond to speedhack on Android 5 and above?", "faq.html#q20", null ],
      [ "21. I used a different speedhack / hacking tool on Android 4 and everything worked. Now I put GameGuardian on Android 5 and above, but those methods do not work. Why?", "faq.html#q21", null ],
      [ "22. I'm watching a video sample / screenshots and there are other data in the memory editor. Why?", "faq.html#q22", null ],
      [ "23. When the value is frozen, the game starts to brake or lag. Why?", "faq.html#q23", null ],
      [ "24. How can I disable checking for new versions when I start the application?", "faq.html#q24", null ],
      [ "25. How to rewind the time back in the application? Is it possible to make a time jump not forward, but backward?", "faq.html#q25", null ],
      [ "26. I put the icon on and it disappeared. How can I get it back?", "faq.html#q26", null ],
      [ "27. How do I search for a value if it is displayed in rounding with the game? For example, 1.85M.", "faq.html#q27", null ],
      [ "28. How do I search for a percentage value? For example, 123%.", "faq.html#q28", null ],
      [ "29. What if the game detects GameGuardian?", "faq.html#q29", null ],
      [ "30. GameGuardian searches for values very slowly and for a long time in the Android emulator on the PC.", "faq.html#q30", null ],
      [ "31. After a while, GameGuardian icon disappears.", "faq.html#q31", null ],
      [ "32. What's the difference with the HW/SW versions? And which one should I use?", "faq.html#q32", null ],
      [ "33. Text messages (toasts) remain on the screen, or a dark circle is visible at the bottom of the screen when GameGuardian is working. How to fix it?", "faq.html#q33", null ]
    ] ],
    [ "Help about use GameGuardian", "help.html", [
      [ "Contextual help", "help.html#help_context", null ],
      [ "Basic information", "help.html#help_basics", null ],
      [ "The floating icon", "help.html#help_floating_icon_", null ],
      [ "Scripts", "help.html#help_scripts", null ],
      [ "Exact search", "help.html#help_exact_search", null ],
      [ "Speedhack", "help.html#help_speedhack", null ],
      [ "Group search", "help.html#help_group_search_", null ],
      [ "Range search", "help.html#help_range_search", null ],
      [ "Search for encrypted values", "help.html#help_encrypted_search", null ],
      [ "Unknown (fuzzy) search", "help.html#help_fuzzy_search", null ],
      [ "Address (mask) search", "help.html#help_mask_search", null ],
      [ "Fill (increment) values", "help.html#help_fill", null ],
      [ "Text (string, HEX, AoB) search", "help.html#help_text_search", null ],
      [ "XOR search", "help.html#help_xor_search", null ],
      [ "Filters in search", "help.html#help_search_filter", null ],
      [ "Filtering in the memory editor", "help.html#help_memory_filter", null ],
      [ "Others", "help.html#help_others", null ],
      [ "Typical usage algorithms", "help.html#help_typical_usage", null ],
      [ "How to speed up search", "help.html#help_speed_up", null ],
      [ "How to get around protection in games", "help.html#help_games_protection_", null ],
      [ "How to hide GameGuardian from the game", "help.html#help_games_protection_end", null ],
      [ "Hints", "help.html#help_hints_0", null ],
      [ "Colors in the memory editor", "help.html#help_hex_colors", null ],
      [ "Pointer search", "help.html#help_pointer_search", null ],
      [ "Unaligned search / big-endian search", "help.html#help_unaligned", null ],
      [ "Formula calculator", "help.html#help_formula_calculator", null ],
      [ "Option \"Add to value, do not replace\"", "help.html#help_add_to_value", null ],
      [ "Unrandomizer", "help.html#help_unrandomizer", null ],
      [ "Restart the game (without protection)", "help.html#warn_restart_off_prot", null ],
      [ "Disable protection for all applications (until reboot)", "help.html#warn_patch_off_prot_", null ],
      [ "Work without root", "help.html#work_without_root", null ],
      [ "Why my game is not in the process list?", "help.html#help_game_not_listed_root", null ],
      [ "Unexpected shutdown", "help.html#daemon_killed", null ],
      [ "Disassemble / assemble scripts", "help.html#help_lasm", null ]
    ] ],
    [ "Config help", "config.html", [
      [ "Freeze interval:", "config.html#freeze_interval", null ],
      [ "Saved list updates interval:", "config.html#saved_list_update_interval", null ],
      [ "Icons size:", "config.html#icons_size", null ],
      [ "Ignore unknown characters:", "config.html#ignore_unknown_chars", null ],
      [ "Use notification:", "config.html#use_notification", null ],
      [ "Use sound effects:", "config.html#use_sound_effects", null ],
      [ "Allow suggestions from keyboard:", "config.html#allow_suggestions", null ],
      [ "Autopause game:", "config.html#autopause", null ],
      [ "Interface acceleration:", "config.html#acceleration", null ],
      [ "Deep read:", "config.html#deep_read", null ],
      [ "System calls mode:", "config.html#calls", null ],
      [ "waitpid mode:", "config.html#waitpid_mode", null ],
      [ "Fast freeze:", "config.html#fast_freeze", null ],
      [ "Use visible data type in memory editor:", "config.html#use_visible_type", null ],
      [ "Prevent unload:", "config.html#prevent_unload", null ],
      [ "Bypass mode for ptrace protection:", "config.html#ptrace_bypass_mode", null ],
      [ "Use root in virtual space:", "config.html#vspace_root", null ],
      [ "Small list items", "config.html#small_list_items", null ]
    ] ],
    [ "Contextual help", "context.html", [
      [ "As text (can not be loaded)", "context.html#as_text", null ],
      [ "{x}", "context.html#fractional", null ],
      [ "Offset:", "context.html#offset", null ]
    ] ],
    [ "Classes", "annotated.html", [
      [ "Class List", "annotated.html", "annotated_dup" ],
      [ "Class Members", "functions.html", [
        [ "All", "functions.html", null ],
        [ "Functions", "functions_func.html", null ],
        [ "Variables", "functions_vars.html", null ]
      ] ]
    ] ],
    [ "Links", "usergroup0.html", [
      [ "Home", "^http://gameguardian.net/", null ],
      [ "Forum", "^http://gameguardian.net/forum/", null ],
      [ "LUA scripts", "^http://gameguardian.net/forum/files/category/6-lua-scripts/", null ]
    ] ]
  ] ]
];

var NAVTREEINDEX =
[
"annotated.html"
];

var SYNCONMSG = 'click to disable panel synchronisation';
var SYNCOFFMSG = 'click to enable panel synchronisation';