BEGIN {

     name = "Iryna Vainarouskaya"

     description = "TA_HW_27__script_27_02"

 

     puts "#################################### "

     puts "Author \s\s\s\s\s : " + name

     puts "Date \s\s\s\s\s\s\s\s: " + Time.now.to_s[0 .. 18]

     puts ""

     puts "Ruby version : " + RUBY_VERSION

     puts "Script \s\s\s\s\s\s: " + __FILE__.chop.chop.chop

     puts "Description \s: " + description

     puts "#################################### "

     puts ""

}

END {
	 puts ""
	 puts ""
	 puts "#################################### "
}


require 'mechanize'
saxon = Mechanize.new

fish = saxon.get('http://www.htmlcodes.me')

#Click on each of the following links and display theirs title and size:

#1.Background Code
puts ""

a_fish = fish.link_with(:text => 'Background Code').click
title = a_fish.search('title').inner_text
puts "Title of Background Code link: #{title}"
puts "Size of Background Code link: #{a_fish.body.size} bytes"

#2. Background Color
puts ""

b_fish = fish.link_with(:text => 'Background Color').click
title = b_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{b_fish.body.size} bytes"

#3.Background Image
puts ""

c_fish = fish.link_with(:text => 'Background Image').click
title = c_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{c_fish.body.size} bytes"

#4.CSS Cursor
puts ""

d_fish = fish.link_with(:text => 'CSS Cursor').click
title = d_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{d_fish.body.size} bytes"

#5.CSS Image Code
puts ""

e_fish = fish.link_with(:text => 'CSS Image Code').click
title = e_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{e_fish.body.size} bytes"

#6.CSS Links
puts ""

f_fish = fish.link_with(:text => 'CSS Links').click
title = f_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{f_fish.body.size} bytes"

#7.Color Code Generator
puts ""

g_fish = fish.link_with(:text => 'Color Code Generator').click
title = g_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{g_fish.body.size} bytes"

#8.Email Links
puts ""

h_fish = fish.link_with(:text => 'Email Links').click
title = h_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{h_fish.body.size} bytes"

#9.Fixed Background
puts ""

i_fish = fish.link_with(:text => 'Fixed Background').click
title = i_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{i_fish.body.size} bytes"

#10.Font Code
puts ""

j_fish = fish.link_with(:text => 'Font Code').click
title = j_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{j_fish.body.size} bytes"

#11.HTML Color Chart
puts ""

k_fish = fish.link_with(:text => 'HTML Color Chart').click
title = k_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{k_fish.body.size} bytes"

#12.HTML Color Codes
puts ""

l_fish = fish.link_with(:text => 'HTML Color Codes').click
title = l_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{l_fish.body.size} bytes"

#13.HTML Color Picker
puts ""

m_fish = fish.link_with(:text => 'HTML Color Picker').click
title = m_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{m_fish.body.size} bytes"

#14.HTML Color Tester
puts ""

n_fish = fish.link_with(:text => 'HTML Color Tester').click
title = n_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{n_fish.body.size} bytes"

#15.HTML Image Code
puts ""

o_fish = fish.link_with(:text => 'HTML Image Code').click
title = o_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{o_fish.body.size} bytes"

#16.HTML Links
puts ""

p_fish = fish.link_with(:text => 'HTML Links').click
title = p_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{p_fish.body.size} bytes"

#17.HTML Textbox Code
puts ""

q_fish = fish.link_with(:text => 'HTML Textbox Code').click
title = q_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{q_fish.body.size} bytes"


#18.Hide Scrollbar
puts ""

r_fish = fish.link_with(:text => 'Hide Scrollbar').click
title = r_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{r_fish.body.size} bytes"

#19.Horizontal Scrollbar
puts ""

s_fish = fish.link_with(:text => 'Horizontal Scrollbar').click
title = s_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{s_fish.body.size} bytes"


#20.Image Border
puts ""

t_fish = fish.link_with(:text => 'Image Border').click
title = t_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{t_fish.body.size} bytes"

#21.JavaScript Links
puts ""

u_fish = fish.link_with(:text => 'JavaScript Links').click
title = u_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{u_fish.body.size} bytes"

#22.Letter Spacing
puts ""

v_fish = fish.link_with(:text => 'Letter Spacing').click
title = v_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{v_fish.body.size} bytes"

#23.Line Height
puts ""

w_fish = fish.link_with(:text => 'Line Height').click
title = w_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{w_fish.body.size} bytes"

#24.Link Image
puts ""

x_fish = fish.link_with(:text => 'Link Image').click
title = x_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{x_fish.body.size} bytes"

#25.Marquee Speed
puts ""

y_fish = fish.link_with(:text => 'Marquee Speed').click
title = y_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{y_fish.body.size} bytes"

#26.Overlapping Text
puts ""

z_fish = fish.link_with(:text => 'Overlapping Text').click
title = z_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{z_fish.body.size} bytes"

#27.Repeat Image
puts ""

aa_fish = fish.link_with(:text => 'Repeat Image').click
title = a_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{a_fish.body.size} bytes"
puts ""

#28.Scroll Box Border
puts ""

bb_fish = fish.link_with(:text => 'Scroll Box Border').click
title = bb_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{bb_fish.body.size} bytes"

#29.Scroll Box Code
puts ""

cc_fish = fish.link_with(:text => 'Scroll Box Code').click
title = cc_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{cc_fish.body.size} bytes"

#30.Scroll Box Color
puts ""

dd_fish = fish.link_with(:text => 'Scroll Box Color').click
title = dd_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{dd_fish.body.size} bytes"

#31.Scroll Picture Box
puts ""

ee_fish = fish.link_with(:text => 'Scroll Picture Box').click
title = ee_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{ee_fish.body.size} bytes"

#32.Scrolling Images
puts ""

ff_fish = fish.link_with(:text => 'Scrolling Images').click
title = ff_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{ff_fish.body.size} bytes"

#33.Scrolling Text
puts ""

gg_fish = fish.link_with(:text => 'Scrolling Text').click
title = gg_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{gg_fish.body.size} bytes"

#34.Stop Marquee
puts ""

hh_fish = fish.link_with(:text => 'Stop Marquee').click
title = hh_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{hh_fish.body.size} bytes"

#35.Stretch Background
puts ""

ii_fish = fish.link_with(:text => 'Stretch Background').click
title = ii_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{ii_fish.body.size} bytes"

#36.Text Code

puts ""

jj_fish = fish.link_with(:text => 'Text Code').click
title = jj_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{jj_fish.body.size} bytes"

#37.Text Color
puts ""

kk_fish = fish.link_with(:text => 'Text Color').click
title = kk_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{kk_fish.body.size} bytes"

#38.Textbox Border
puts ""

ll_fish = fish.link_with(:text => 'Textbox Border').click
title = ll_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{ll_fish.body.size} bytes"

#39.Textbox Color
puts ""

mm_fish = fish.link_with(:text => 'Textbox Color').click
title = mm_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{mm_fish.body.size} bytes"

#40.Textbox Image
puts ""

nn_fish = fish.link_with(:text => 'Textbox Image').click
title = nn_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{nn_fish.body.size} bytes"

#41.Vertical Scrollbar
puts ""

pp_fish = fish.link_with(:text => 'Vertical Scrollbar').click
title = pp_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{pp_fish.body.size} bytes"

#42.Word Spacing
puts ""

qq_fish = fish.link_with(:text => 'Word Spacing').click
title = qq_fish.search('title').inner_text
puts "Title of the page: #{title}"
puts "Size of the page: #{qq_fish.body.size} bytes"