|SLD.data.version|1
||K|KEYWORDS|WPMEM,LOGPOINT,ASSERTION
main.asm|13||0|-1|-1|Z|pages.size:8192,pages.count:224,slots.count:8,slots.adr:0,8192,16384,24576,32768,40960,49152,57344
main.asm|7||0|-1|1|D|NEX
main.asm|7||0|-1|1|L|,NEX,,+equ,+used
main.asm|18||0|11|24576|K|; WPMEMx
main.asm|18||0|11|24576|F|screen_top
main.asm|18||0|11|24576|L|,screen_top,
main.asm|23||0|11|24577|K|; Change WPMEMx (remove the 'x' from WPMEMx) below to activate.
main.asm|30||0|11|24577|K|; WPMEMx 0x5840, 1, w
utilities.asm|7||0|-1|500|D|PAUSE_TIME
utilities.asm|7||0|-1|500|L|,PAUSE_TIME,,+equ,+used
utilities.asm|12||0|11|24577|F|pause
utilities.asm|12||0|11|24577|L|,pause,,+used
utilities.asm|15||0|11|24577|T|
utilities.asm|16||0|11|24578|T|
utilities.asm|18||0|11|24579|F|pause_loop_l2
utilities.asm|18||0|11|24579|L|,pause_loop_l2,,+used
utilities.asm|19||0|11|24579|T|
utilities.asm|20||0|11|24581|F|pause_loop_l1
utilities.asm|20||0|11|24581|L|,pause_loop_l1,,+used
utilities.asm|21||0|11|24581|T|
utilities.asm|23||0|11|24583|T|
utilities.asm|24||0|11|24584|T|
utilities.asm|25||0|11|24585|T|
utilities.asm|26||0|11|24586|T|
utilities.asm|28||0|11|24588|T|
utilities.asm|29||0|11|24589|T|
utilities.asm|30||0|11|24590|T|
fill.asm|7||0|-1|32|D|BCKG_LINE_SIZE
fill.asm|7||0|-1|32|L|,BCKG_LINE_SIZE,,+equ,+used
fill.asm|10||0|-1|0|D|BLACK
fill.asm|10||0|-1|0|L|,BLACK,,+equ
fill.asm|11||0|-1|8|D|BLUE
fill.asm|11||0|-1|8|L|,BLUE,,+equ,+used
fill.asm|12||0|-1|16|D|RED
fill.asm|12||0|-1|16|L|,RED,,+equ,+used
fill.asm|13||0|-1|24|D|MAGENTA
fill.asm|13||0|-1|24|L|,MAGENTA,,+equ,+used
fill.asm|14||0|-1|32|D|GREEN
fill.asm|14||0|-1|32|L|,GREEN,,+equ,+used
fill.asm|15||0|-1|40|D|CYAN
fill.asm|15||0|-1|40|L|,CYAN,,+equ
fill.asm|16||0|-1|48|D|YELLOW
fill.asm|16||0|-1|48|L|,YELLOW,,+equ,+used
fill.asm|17||0|-1|56|D|WHITE
fill.asm|17||0|-1|56|L|,WHITE,,+equ
fill.asm|24||0|11|24591|F|fill_memory
fill.asm|24||0|11|24591|L|,fill_memory,,+used
fill.asm|25||0|11|24591|T|
fill.asm|26||0|11|24592|T|
fill.asm|27||0|11|24593|T|
fill.asm|28||0|11|24594|T|
fill.asm|29||0|11|24595|T|
fill.asm|30||0|11|24596|T|
fill.asm|31||0|11|24598|T|
fill.asm|40||0|11|24599|F|fill_bckg_line
fill.asm|40||0|11|24599|L|,fill_bckg_line,,+used
fill.asm|41||0|11|24599|T|
fill.asm|42||0|11|24602|T|
fill.asm|43||0|11|24603|T|
fill.asm|44||0|11|24604|T|
fill.asm|46||0|11|24607|T|
fill.asm|47||0|11|24610|T|
fill.asm|48||0|11|24611|T|
fill.asm|49||0|11|24613|T|
fill.asm|51||0|11|24614|T|
fill.asm|52||0|11|24617|T|
fill.asm|56||0|11|24618|F|inc_fill_colors_ptr
fill.asm|56||0|11|24618|L|,inc_fill_colors_ptr,,+used
fill.asm|57||0|11|24618|T|
fill.asm|58||0|11|24621|T|
fill.asm|59||0|11|24622|T|
fill.asm|62||0|11|24625|T|
fill.asm|63||0|11|24628|T|
fill.asm|64||0|11|24629|T|
fill.asm|65||0|11|24631|T|
fill.asm|68||0|11|24632|T|
fill.asm|69||0|11|24635|T|
fill.asm|70||0|11|24638|T|
fill.asm|74||0|11|24639|F|fill_colors_ptr
fill.asm|74||0|11|24639|L|,fill_colors_ptr,,+used
fill.asm|77||0|11|24641|F|fill_colors
fill.asm|77||0|11|24641|L|,fill_colors,,+used
fill.asm|79||0|11|24646|F|fill_colors_end
fill.asm|79||0|11|24646|L|,fill_colors_end,,+used
fill.asm|80||0|11|24646|K|; WPMEM
clearscreen.asm|7||0|-1|16384|D|SCREEN
clearscreen.asm|7||0|-1|16384|L|,SCREEN,,+equ,+used
clearscreen.asm|8||0|-1|6144|D|SCREEN_SIZE
clearscreen.asm|8||0|-1|6144|L|,SCREEN_SIZE,,+equ,+used
clearscreen.asm|10||0|-1|22528|D|COLOR_SCREEN
clearscreen.asm|10||0|-1|22528|L|,COLOR_SCREEN,,+equ,+used
clearscreen.asm|11||0|-1|768|D|COLOR_SCREEN_SIZE
clearscreen.asm|11||0|-1|768|L|,COLOR_SCREEN_SIZE,,+equ,+used
clearscreen.asm|15||0|11|24647|F|clear_screen
clearscreen.asm|15||0|11|24647|L|,clear_screen,,+used
clearscreen.asm|16||0|11|24647|T|
clearscreen.asm|17||0|11|24648|T|
clearscreen.asm|18||0|11|24651|T|
clearscreen.asm|19||0|11|24654|T|
clearscreen.asm|20||0|11|24657|T|
clearscreen.asm|24||0|11|24658|F|clear_backg
clearscreen.asm|24||0|11|24658|L|,clear_backg,,+used
clearscreen.asm|25||0|11|24658|T|
clearscreen.asm|26||0|11|24659|T|
clearscreen.asm|27||0|11|24662|T|
clearscreen.asm|32||0|11|24663|F|fill_backg
clearscreen.asm|32||0|11|24663|L|,fill_backg,,+used
clearscreen.asm|33||0|11|24663|T|
clearscreen.asm|34||0|11|24666|T|
clearscreen.asm|35||0|11|24669|T|
clearscreen.asm|36||0|11|24672|T|
dezog.asm|11||0|-1|0|D|dezog_magic_number_a
dezog.asm|11||0|-1|0|L|,dezog_magic_number_a,,+equ,+used
dezog.asm|12||0|-1|1|D|dezog_magic_number_b
dezog.asm|12||0|-1|1|L|,dezog_magic_number_b,,+equ,+used
dezog.asm|13||0|-1|102|D|dezog_magic_number_c
dezog.asm|13||0|-1|102|L|,dezog_magic_number_c,,+equ,+used
dezog.asm|14||0|-1|103|D|dezog_magic_number_d
dezog.asm|14||0|-1|103|L|,dezog_magic_number_d,,+equ,+used
dezog.asm|17||0|-1|24|D|DEZOG_MAGIC_NUMBER_VALUE_A
dezog.asm|17||0|-1|24|L|,DEZOG_MAGIC_NUMBER_VALUE_A,,+equ,+used
dezog.asm|18||0|-1|100|D|DEZOG_MAGIC_NUMBER_VALUE_B
dezog.asm|18||0|-1|100|L|,DEZOG_MAGIC_NUMBER_VALUE_B,,+equ,+used
dezog.asm|19||0|-1|245|D|DEZOG_MAGIC_NUMBER_VALUE_C
dezog.asm|19||0|-1|245|L|,DEZOG_MAGIC_NUMBER_VALUE_C,,+equ,+used
dezog.asm|20||0|-1|237|D|DEZOG_MAGIC_NUMBER_VALUE_D
dezog.asm|20||0|-1|237|L|,DEZOG_MAGIC_NUMBER_VALUE_D,,+equ,+used
dezog.asm|34||0|11|24673|F|dezog_init_slot0_bank
dezog.asm|34||0|11|24673|L|,dezog_init_slot0_bank,
dezog.asm|36||0|11|24673|T|
dezog.asm|39||0|11|24676|T|
dezog.asm|40||0|11|24679|T|
dezog.asm|41||0|11|24681|T|
dezog.asm|42||0|11|24682|T|
dezog.asm|43||0|11|24685|T|
dezog.asm|44||0|11|24687|T|
dezog.asm|45||0|11|24688|T|
dezog.asm|46||0|11|24691|T|
dezog.asm|47||0|11|24693|T|
dezog.asm|48||0|11|24694|T|
dezog.asm|49||0|11|24697|T|
dezog.asm|50||0|11|24699|T|
dezog.asm|53||0|11|24700|F|dezog_init_slot0_bank.push
dezog.asm|53||0|11|24700|L|,dezog_init_slot0_bank,push,+used
dezog.asm|58||0|11|24708|T|
unit_tests.asm|12|unit_tests.inc|14|11|24711|F|UNITTEST_TEST_WRAPPER
unit_tests.asm|12|unit_tests.inc|14|11|24711|L|,UNITTEST_TEST_WRAPPER,
unit_tests.asm|12|unit_tests.inc|15|11|24711|T|
unit_tests.asm|12|unit_tests.inc|16|11|24712|T|
unit_tests.asm|12|unit_tests.inc|17|11|24715|F|UNITTEST_CALL_ADDR
unit_tests.asm|12|unit_tests.inc|17|11|24715|L|,UNITTEST_CALL_ADDR,
unit_tests.asm|12|unit_tests.inc|18|11|24715|T|
unit_tests.asm|12|unit_tests.inc|19|11|24718|T|
unit_tests.asm|12|unit_tests.inc|21|11|24719|F|UNITTEST_TEST_READY_RETURN_FAILURE
unit_tests.asm|12|unit_tests.inc|21|11|24719|L|,UNITTEST_TEST_READY_RETURN_FAILURE,,+used
unit_tests.asm|12|unit_tests.inc|22|11|24719|T|
unit_tests.asm|12|unit_tests.inc|24|11|24721|F|UNITTEST_TEST_READY_FAILURE
unit_tests.asm|12|unit_tests.inc|24|11|24721|L|,UNITTEST_TEST_READY_FAILURE,,+used
unit_tests.asm|12|unit_tests.inc|25|11|24721|T|
unit_tests.asm|12|unit_tests.inc|26|11|24722|F|UNITTEST_TEST_READY_FAILURE_BREAKPOINT
unit_tests.asm|12|unit_tests.inc|26|11|24722|L|,UNITTEST_TEST_READY_FAILURE_BREAKPOINT,
unit_tests.asm|12|unit_tests.inc|27|11|24722|T|
unit_tests.asm|12|unit_tests.inc|29|11|24723|F|UNITTEST_TEST_READY_SUCCESS
unit_tests.asm|12|unit_tests.inc|29|11|24723|L|,UNITTEST_TEST_READY_SUCCESS,,+used
unit_tests.asm|12|unit_tests.inc|30|11|24723|T|
unit_tests.asm|12|unit_tests.inc|32|11|24725|F|UNITTEST_MIN_STACK_GUARD
unit_tests.asm|12|unit_tests.inc|32|11|24725|L|,UNITTEST_MIN_STACK_GUARD,
unit_tests.asm|12|unit_tests.inc|35|11|24827|F|UNITTEST_STACK
unit_tests.asm|12|unit_tests.inc|35|11|24827|L|,UNITTEST_STACK,,+used
unit_tests.asm|12|unit_tests.inc|37|11|24827|F|UNITTEST_MAX_STACK_GUARD
unit_tests.asm|12|unit_tests.inc|37|11|24827|L|,UNITTEST_MAX_STACK_GUARD,
unit_tests.asm|12|unit_tests.inc|40|11|24829|F|UNITTEST_SAVE_REG
unit_tests.asm|12|unit_tests.inc|40|11|24829|L|,UNITTEST_SAVE_REG,,+used
unit_tests.asm|12|unit_tests.inc|45|11|24831|F|UNITTEST_START
unit_tests.asm|12|unit_tests.inc|45|11|24831|L|,UNITTEST_START,
unit_tests.asm|12|unit_tests.inc|47|11|24831|T|
unit_tests.asm|20||0|11|24832|T|
unit_tests.asm|23||0|-1|24833|L|TestSuite_ClearScreen,,,+module
unit_tests.asm|27||0|11|24833|F|TestSuite_ClearScreen.UT_clear_screen
unit_tests.asm|27||0|11|24833|L|TestSuite_ClearScreen,UT_clear_screen,
unit_tests.asm|29||0|11|24833|T|
unit_tests.asm|30||0|11|24835|T|
unit_tests.asm|31||0|11|24838|T|
unit_tests.asm|32||0|11|24841|T|
unit_tests.asm|33||0|11|24844|T|
unit_tests.asm|36||0|11|24847|T|
unit_tests.asm|39|unit_tests.inc|64|11|24850|T|
unit_tests.asm|39|unit_tests.inc|65|11|24853|T|
unit_tests.asm|39|unit_tests.inc|66|11|24856|T|
unit_tests.asm|39|unit_tests.inc|67|11|24858|T|
unit_tests.asm|39|unit_tests.inc|68|11|24861|T|
unit_tests.asm|40|unit_tests.inc|64|11|24864|T|
unit_tests.asm|40|unit_tests.inc|65|11|24867|T|
unit_tests.asm|40|unit_tests.inc|66|11|24870|T|
unit_tests.asm|40|unit_tests.inc|67|11|24872|T|
unit_tests.asm|40|unit_tests.inc|68|11|24875|T|
unit_tests.asm|41|unit_tests.inc|64|11|24878|T|
unit_tests.asm|41|unit_tests.inc|65|11|24881|T|
unit_tests.asm|41|unit_tests.inc|66|11|24884|T|
unit_tests.asm|41|unit_tests.inc|67|11|24886|T|
unit_tests.asm|41|unit_tests.inc|68|11|24889|T|
unit_tests.asm|43|unit_tests.inc|64|11|24892|T|
unit_tests.asm|43|unit_tests.inc|65|11|24895|T|
unit_tests.asm|43|unit_tests.inc|66|11|24898|T|
unit_tests.asm|43|unit_tests.inc|67|11|24900|T|
unit_tests.asm|43|unit_tests.inc|68|11|24903|T|
unit_tests.asm|44|unit_tests.inc|58|11|24906|T|
unit_tests.asm|48||0|11|24909|F|TestSuite_ClearScreen.UT_fill_backg
unit_tests.asm|48||0|11|24909|L|TestSuite_ClearScreen,UT_fill_backg,
unit_tests.asm|50||0|11|24909|T|
unit_tests.asm|51||0|11|24911|T|
unit_tests.asm|52||0|11|24914|T|
unit_tests.asm|53||0|11|24917|T|
unit_tests.asm|54||0|11|24920|T|
unit_tests.asm|57||0|11|24923|T|
unit_tests.asm|58||0|11|24925|T|
unit_tests.asm|61|unit_tests.inc|64|11|24928|T|
unit_tests.asm|61|unit_tests.inc|65|11|24931|T|
unit_tests.asm|61|unit_tests.inc|66|11|24934|T|
unit_tests.asm|61|unit_tests.inc|67|11|24936|T|
unit_tests.asm|61|unit_tests.inc|68|11|24939|T|
unit_tests.asm|62|unit_tests.inc|64|11|24942|T|
unit_tests.asm|62|unit_tests.inc|65|11|24945|T|
unit_tests.asm|62|unit_tests.inc|66|11|24948|T|
unit_tests.asm|62|unit_tests.inc|67|11|24950|T|
unit_tests.asm|62|unit_tests.inc|68|11|24953|T|
unit_tests.asm|63|unit_tests.inc|64|11|24956|T|
unit_tests.asm|63|unit_tests.inc|65|11|24959|T|
unit_tests.asm|63|unit_tests.inc|66|11|24962|T|
unit_tests.asm|63|unit_tests.inc|67|11|24964|T|
unit_tests.asm|63|unit_tests.inc|68|11|24967|T|
unit_tests.asm|65|unit_tests.inc|64|11|24970|T|
unit_tests.asm|65|unit_tests.inc|65|11|24973|T|
unit_tests.asm|65|unit_tests.inc|66|11|24976|T|
unit_tests.asm|65|unit_tests.inc|67|11|24978|T|
unit_tests.asm|65|unit_tests.inc|68|11|24981|T|
unit_tests.asm|66|unit_tests.inc|58|11|24984|T|
unit_tests.asm|70||0|11|24987|F|TestSuite_ClearScreen.UT_clear_backg
unit_tests.asm|70||0|11|24987|L|TestSuite_ClearScreen,UT_clear_backg,
unit_tests.asm|72||0|11|24987|T|
unit_tests.asm|73||0|11|24989|T|
unit_tests.asm|74||0|11|24992|T|
unit_tests.asm|75||0|11|24995|T|
unit_tests.asm|76||0|11|24998|T|
unit_tests.asm|79||0|11|25001|T|
unit_tests.asm|82|unit_tests.inc|64|11|25004|T|
unit_tests.asm|82|unit_tests.inc|65|11|25007|T|
unit_tests.asm|82|unit_tests.inc|66|11|25010|T|
unit_tests.asm|82|unit_tests.inc|67|11|25012|T|
unit_tests.asm|82|unit_tests.inc|68|11|25015|T|
unit_tests.asm|83|unit_tests.inc|64|11|25018|T|
unit_tests.asm|83|unit_tests.inc|65|11|25021|T|
unit_tests.asm|83|unit_tests.inc|66|11|25024|T|
unit_tests.asm|83|unit_tests.inc|67|11|25026|T|
unit_tests.asm|83|unit_tests.inc|68|11|25029|T|
unit_tests.asm|84|unit_tests.inc|64|11|25032|T|
unit_tests.asm|84|unit_tests.inc|65|11|25035|T|
unit_tests.asm|84|unit_tests.inc|66|11|25038|T|
unit_tests.asm|84|unit_tests.inc|67|11|25040|T|
unit_tests.asm|84|unit_tests.inc|68|11|25043|T|
unit_tests.asm|86|unit_tests.inc|64|11|25046|T|
unit_tests.asm|86|unit_tests.inc|65|11|25049|T|
unit_tests.asm|86|unit_tests.inc|66|11|25052|T|
unit_tests.asm|86|unit_tests.inc|67|11|25054|T|
unit_tests.asm|86|unit_tests.inc|68|11|25057|T|
unit_tests.asm|87|unit_tests.inc|58|11|25060|T|
unit_tests.asm|89||0|-1|25063|L|TestSuite_ClearScreen,,,+endmod
unit_tests.asm|93||0|-1|25063|L|TestSuite_Fill,,,+module
unit_tests.asm|96||0|11|25063|F|TestSuite_Fill.UT_fill_memory
unit_tests.asm|96||0|11|25063|L|TestSuite_Fill,UT_fill_memory,
unit_tests.asm|98||0|11|25063|T|
unit_tests.asm|99||0|11|25065|T|
unit_tests.asm|100||0|11|25068|T|
unit_tests.asm|101||0|11|25071|T|
unit_tests.asm|102||0|11|25074|T|
unit_tests.asm|103||0|11|25077|T|
unit_tests.asm|106||0|11|25080|T|
unit_tests.asm|107||0|11|25082|T|
unit_tests.asm|108||0|11|25085|T|
unit_tests.asm|109||0|11|25088|T|
unit_tests.asm|112|unit_tests.inc|64|11|25091|T|
unit_tests.asm|112|unit_tests.inc|65|11|25094|T|
unit_tests.asm|112|unit_tests.inc|66|11|25097|T|
unit_tests.asm|112|unit_tests.inc|67|11|25099|T|
unit_tests.asm|112|unit_tests.inc|68|11|25102|T|
unit_tests.asm|113|unit_tests.inc|64|11|25105|T|
unit_tests.asm|113|unit_tests.inc|65|11|25108|T|
unit_tests.asm|113|unit_tests.inc|66|11|25111|T|
unit_tests.asm|113|unit_tests.inc|67|11|25113|T|
unit_tests.asm|113|unit_tests.inc|68|11|25116|T|
unit_tests.asm|114|unit_tests.inc|64|11|25119|T|
unit_tests.asm|114|unit_tests.inc|65|11|25122|T|
unit_tests.asm|114|unit_tests.inc|66|11|25125|T|
unit_tests.asm|114|unit_tests.inc|67|11|25127|T|
unit_tests.asm|114|unit_tests.inc|68|11|25130|T|
unit_tests.asm|115|unit_tests.inc|64|11|25133|T|
unit_tests.asm|115|unit_tests.inc|65|11|25136|T|
unit_tests.asm|115|unit_tests.inc|66|11|25139|T|
unit_tests.asm|115|unit_tests.inc|67|11|25141|T|
unit_tests.asm|115|unit_tests.inc|68|11|25144|T|
unit_tests.asm|117|unit_tests.inc|64|11|25147|T|
unit_tests.asm|117|unit_tests.inc|65|11|25150|T|
unit_tests.asm|117|unit_tests.inc|66|11|25153|T|
unit_tests.asm|117|unit_tests.inc|67|11|25155|T|
unit_tests.asm|117|unit_tests.inc|68|11|25158|T|
unit_tests.asm|118|unit_tests.inc|58|11|25161|T|
unit_tests.asm|121||0|-1|10|D|TestSuite_Fill.FILL_MEMORY_SIZE
unit_tests.asm|121||0|-1|10|L|TestSuite_Fill,FILL_MEMORY_SIZE,,+equ,+used
unit_tests.asm|123||0|11|25165|F|TestSuite_Fill.fill_memory_data
unit_tests.asm|123||0|11|25165|L|TestSuite_Fill,fill_memory_data,,+used
unit_tests.asm|129||0|11|25176|F|TestSuite_Fill.UT_fill_bckg_line_normal
unit_tests.asm|129||0|11|25176|L|TestSuite_Fill,UT_fill_bckg_line_normal,
unit_tests.asm|131||0|11|25176|T|
unit_tests.asm|134||0|11|25179|T|
unit_tests.asm|135||0|11|25181|T|
unit_tests.asm|136||0|11|25184|T|
unit_tests.asm|139|unit_tests.inc|64|11|25187|T|
unit_tests.asm|139|unit_tests.inc|65|11|25190|T|
unit_tests.asm|139|unit_tests.inc|66|11|25193|T|
unit_tests.asm|139|unit_tests.inc|67|11|25195|T|
unit_tests.asm|139|unit_tests.inc|68|11|25198|T|
unit_tests.asm|140|unit_tests.inc|64|11|25201|T|
unit_tests.asm|140|unit_tests.inc|65|11|25204|T|
unit_tests.asm|140|unit_tests.inc|66|11|25207|T|
unit_tests.asm|140|unit_tests.inc|67|11|25209|T|
unit_tests.asm|140|unit_tests.inc|68|11|25212|T|
unit_tests.asm|141|unit_tests.inc|64|11|25215|T|
unit_tests.asm|141|unit_tests.inc|65|11|25218|T|
unit_tests.asm|141|unit_tests.inc|66|11|25221|T|
unit_tests.asm|141|unit_tests.inc|67|11|25223|T|
unit_tests.asm|141|unit_tests.inc|68|11|25226|T|
unit_tests.asm|142|unit_tests.inc|64|11|25229|T|
unit_tests.asm|142|unit_tests.inc|65|11|25232|T|
unit_tests.asm|142|unit_tests.inc|66|11|25235|T|
unit_tests.asm|142|unit_tests.inc|67|11|25237|T|
unit_tests.asm|142|unit_tests.inc|68|11|25240|T|
unit_tests.asm|145|unit_tests.inc|127|11|25243|T|
unit_tests.asm|145|unit_tests.inc|128|11|25244|T|
unit_tests.asm|145|unit_tests.inc|129|11|25245|T|
unit_tests.asm|145|unit_tests.inc|130|11|25246|T|
unit_tests.asm|145|unit_tests.inc|131|11|25247|T|
unit_tests.asm|145|unit_tests.inc|132|11|25250|T|
unit_tests.asm|145|unit_tests.inc|133|11|25251|T|
unit_tests.asm|145|unit_tests.inc|134|11|25253|T|
unit_tests.asm|145|unit_tests.inc|135|11|25254|T|
unit_tests.asm|145|unit_tests.inc|136|11|25255|T|
unit_tests.asm|145|unit_tests.inc|137|11|25258|T|
unit_tests.asm|146|unit_tests.inc|58|11|25259|T|
unit_tests.asm|149||0|11|25262|F|TestSuite_Fill.UT_fill_bckg_line_wrap_around
unit_tests.asm|149||0|11|25262|L|TestSuite_Fill,UT_fill_bckg_line_wrap_around,
unit_tests.asm|151||0|11|25262|T|
unit_tests.asm|154||0|11|25265|T|
unit_tests.asm|155||0|11|25267|T|
unit_tests.asm|156||0|11|25270|T|
unit_tests.asm|159|unit_tests.inc|64|11|25273|T|
unit_tests.asm|159|unit_tests.inc|65|11|25276|T|
unit_tests.asm|159|unit_tests.inc|66|11|25279|T|
unit_tests.asm|159|unit_tests.inc|67|11|25281|T|
unit_tests.asm|159|unit_tests.inc|68|11|25284|T|
unit_tests.asm|160|unit_tests.inc|64|11|25287|T|
unit_tests.asm|160|unit_tests.inc|65|11|25290|T|
unit_tests.asm|160|unit_tests.inc|66|11|25293|T|
unit_tests.asm|160|unit_tests.inc|67|11|25295|T|
unit_tests.asm|160|unit_tests.inc|68|11|25298|T|
unit_tests.asm|161|unit_tests.inc|64|11|25301|T|
unit_tests.asm|161|unit_tests.inc|65|11|25304|T|
unit_tests.asm|161|unit_tests.inc|66|11|25307|T|
unit_tests.asm|161|unit_tests.inc|67|11|25309|T|
unit_tests.asm|161|unit_tests.inc|68|11|25312|T|
unit_tests.asm|162|unit_tests.inc|64|11|25315|T|
unit_tests.asm|162|unit_tests.inc|65|11|25318|T|
unit_tests.asm|162|unit_tests.inc|66|11|25321|T|
unit_tests.asm|162|unit_tests.inc|67|11|25323|T|
unit_tests.asm|162|unit_tests.inc|68|11|25326|T|
unit_tests.asm|165|unit_tests.inc|127|11|25329|T|
unit_tests.asm|165|unit_tests.inc|128|11|25330|T|
unit_tests.asm|165|unit_tests.inc|129|11|25331|T|
unit_tests.asm|165|unit_tests.inc|130|11|25332|T|
unit_tests.asm|165|unit_tests.inc|131|11|25333|T|
unit_tests.asm|165|unit_tests.inc|132|11|25336|T|
unit_tests.asm|165|unit_tests.inc|133|11|25337|T|
unit_tests.asm|165|unit_tests.inc|134|11|25339|T|
unit_tests.asm|165|unit_tests.inc|135|11|25340|T|
unit_tests.asm|165|unit_tests.inc|136|11|25341|T|
unit_tests.asm|165|unit_tests.inc|137|11|25344|T|
unit_tests.asm|166|unit_tests.inc|58|11|25345|T|
unit_tests.asm|170||0|11|25348|F|TestSuite_Fill.UT_fill_colors_ptr
unit_tests.asm|170||0|11|25348|L|TestSuite_Fill,UT_fill_colors_ptr,
unit_tests.asm|172||0|11|25348|T|
unit_tests.asm|173||0|11|25351|T|
unit_tests.asm|176||0|11|25354|T|
unit_tests.asm|178|unit_tests.inc|74|11|25357|T|
unit_tests.asm|178|unit_tests.inc|75|11|25358|T|
unit_tests.asm|178|unit_tests.inc|76|11|25359|T|
unit_tests.asm|178|unit_tests.inc|77|11|25362|T|
unit_tests.asm|178|unit_tests.inc|78|11|25366|T|
unit_tests.asm|178|unit_tests.inc|79|11|25367|T|
unit_tests.asm|178|unit_tests.inc|80|11|25369|T|
unit_tests.asm|178|unit_tests.inc|81|11|25370|T|
unit_tests.asm|178|unit_tests.inc|82|11|25373|T|
unit_tests.asm|181||0|11|25374|T|
unit_tests.asm|183|unit_tests.inc|74|11|25377|T|
unit_tests.asm|183|unit_tests.inc|75|11|25378|T|
unit_tests.asm|183|unit_tests.inc|76|11|25379|T|
unit_tests.asm|183|unit_tests.inc|77|11|25382|T|
unit_tests.asm|183|unit_tests.inc|78|11|25386|T|
unit_tests.asm|183|unit_tests.inc|79|11|25387|T|
unit_tests.asm|183|unit_tests.inc|80|11|25389|T|
unit_tests.asm|183|unit_tests.inc|81|11|25390|T|
unit_tests.asm|183|unit_tests.inc|82|11|25393|T|
unit_tests.asm|186||0|11|25394|T|
unit_tests.asm|187||0|11|25397|T|
unit_tests.asm|190||0|11|25400|T|
unit_tests.asm|192|unit_tests.inc|74|11|25403|T|
unit_tests.asm|192|unit_tests.inc|75|11|25404|T|
unit_tests.asm|192|unit_tests.inc|76|11|25405|T|
unit_tests.asm|192|unit_tests.inc|77|11|25408|T|
unit_tests.asm|192|unit_tests.inc|78|11|25412|T|
unit_tests.asm|192|unit_tests.inc|79|11|25413|T|
unit_tests.asm|192|unit_tests.inc|80|11|25415|T|
unit_tests.asm|192|unit_tests.inc|81|11|25416|T|
unit_tests.asm|192|unit_tests.inc|82|11|25419|T|
unit_tests.asm|193|unit_tests.inc|58|11|25420|T|
unit_tests.asm|195||0|-1|25423|L|TestSuite_Fill,,,+endmod
main.asm|59||0|4|32768|F|main
main.asm|59||0|4|32768|L|,main,
main.asm|61||0|4|32768|T|
main.asm|62||0|4|32769|T|
main.asm|65||0|4|32772|T|
main.asm|66||0|4|32775|T|
main.asm|69||0|4|32778|F|lbl1
main.asm|69||0|4|32778|L|,lbl1,
main.asm|70||0|4|32778|T|
main.asm|71||0|4|32781|T|
main.asm|72||0|4|32784|T|
main.asm|78||0|4|32787|F|main_loop
main.asm|78||0|4|32787|L|,main_loop,,+used
main.asm|80||0|4|32787|T|
main.asm|81||0|4|32790|T|
main.asm|82||0|4|32791|T|
main.asm|85||0|4|32794|T|
main.asm|86||0|4|32795|T|
main.asm|87||0|4|32798|T|
main.asm|88||0|4|32801|T|
main.asm|94||0|4|32802|T|
main.asm|96||0|4|32805|T|
main.asm|105||0|-1|100|D|STACK_SIZE
main.asm|105||0|-1|100|L|,STACK_SIZE,,+equ,+used
main.asm|109||0|4|32807|K|; WPMEM, 2
main.asm|110||0|4|32809|F|stack_bottom
main.asm|110||0|4|32809|L|,stack_bottom,
main.asm|112||0|4|33009|F|stack_top
main.asm|112||0|4|33009|L|,stack_top,,+used
main.asm|114||0|4|33009|K|; WPMEM, 2
