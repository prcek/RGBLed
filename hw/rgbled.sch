<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="_hhn_attiny25_45_85">
<description>&lt;h3&gt;ATMEL ATtiny 25 / 45 /48&lt;/h3&gt;
&lt;p&gt;&lt;br /&gt;&lt;b&gt;&lt;u&gt;Supplied Packages:&lt;/u&gt;&lt;/b&gt;&lt;br /&gt;
&lt;b&gt;P&lt;/b&gt; &amp;nbsp; = PDIP 08 30mil&lt;br /&gt;
&lt;b&gt;S&lt;/b&gt; &amp;nbsp; = SOIC 08 EIAJ 208mil&lt;br /&gt;
&lt;b&gt;SS&lt;/b&gt; = SOIC 08 JEDEC 150mil&lt;br /&gt;
&lt;b&gt;X&lt;/b&gt;&gt; &amp;nbsp; = TSSOP 08 4.4mm&lt;/p&gt;

&lt;p&gt;&lt;u&gt;&lt;b&gt;Revisions / Changelog&lt;/b&gt;&lt;/u&gt;&lt;br /&gt;
&amp;bull; &amp;nbsp;5.0.0 [EAGLE 5]&lt;br /&gt;
&lt;/p&gt;

&lt;hr /&gt;

&lt;author&gt;
&lt;p&gt;&lt;u&gt;Author:&lt;/u&gt;&lt;br /&gt;
Dipl.-Ing. FH Rainer Bayer&lt;br /&gt;
HHN Hochschule Heilbronn (Heilbronn University), &lt;i&gt;rainer.bayer@hs-heilbronn.de&lt;/i&gt;&lt;br /&gt;
Ingenieurbüro ing-rb, &lt;i&gt;mail@ing-rb.de&lt;/i&gt;&lt;/p&gt;&lt;/author&gt;</description>
<packages>
<package name="PDIP08_300MIL">
<description>&lt;b&gt;DIL08 300mil&lt;/b&gt;</description>
<wire x1="5.08" y1="2.921" x2="-5.08" y2="2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="5.08" y1="2.921" x2="5.08" y2="-2.921" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="2.921" x2="-5.08" y2="1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-2.921" x2="-5.08" y2="-1.016" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="1.016" x2="-5.08" y2="-1.016" width="0.1524" layer="21" curve="-180"/>
<wire x1="-5.715" y1="5.08" x2="5.715" y2="5.08" width="0.1016" layer="39"/>
<wire x1="5.715" y1="5.08" x2="5.715" y2="-5.08" width="0.1016" layer="39"/>
<wire x1="5.715" y1="-5.08" x2="-5.715" y2="-5.08" width="0.1016" layer="39"/>
<wire x1="-5.715" y1="-5.08" x2="-5.715" y2="5.08" width="0.1016" layer="39"/>
<pad name="1" x="-3.81" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="7" x="-1.27" y="3.81" drill="0.8128" rot="R90"/>
<pad name="8" x="-3.81" y="3.81" drill="0.8128" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="0.8128" rot="R90"/>
<pad name="6" x="1.27" y="3.81" drill="0.8128" rot="R90"/>
<pad name="5" x="3.81" y="3.81" drill="0.8128" rot="R90"/>
<text x="-3.175" y="0.635" size="1.4224" layer="25" ratio="9">&gt;NAME</text>
<text x="-3.175" y="-1.905" size="1.4224" layer="27" ratio="9">&gt;VALUE</text>
</package>
<package name="SOIC8_EIAJ_208MIL">
<description>&lt;B&gt;Small Outline Medium Plastic Gull Wing&lt;/B&gt;&lt;p&gt;
208-mil body</description>
<wire x1="2.6" y1="2.63" x2="2.6" y2="-1.93" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-1.93" x2="2.6" y2="-2.63" width="0.2032" layer="21"/>
<wire x1="2.6" y1="-2.63" x2="-2.6" y2="-2.63" width="0.2032" layer="51"/>
<wire x1="-2.6" y1="-2.63" x2="-2.6" y2="-1.93" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="-1.93" x2="-2.6" y2="2.63" width="0.2032" layer="21"/>
<wire x1="-2.6" y1="2.63" x2="2.6" y2="2.63" width="0.2032" layer="51"/>
<wire x1="2.6" y1="-1.93" x2="-2.6" y2="-1.93" width="0.2032" layer="21"/>
<wire x1="-3.1163" y1="-4.9213" x2="3.0163" y2="-4.9213" width="0.1016" layer="39"/>
<wire x1="3.0163" y1="-4.9213" x2="3.0163" y2="4.9213" width="0.1016" layer="39"/>
<wire x1="3.0163" y1="4.9213" x2="-3.1163" y2="4.9213" width="0.1016" layer="39"/>
<wire x1="-3.1163" y1="4.9213" x2="-3.1163" y2="-4.9213" width="0.1016" layer="39"/>
<smd name="2" x="-0.635" y="-3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="7" x="-0.635" y="3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="1" x="-1.905" y="-3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="3" x="0.635" y="-3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="4" x="1.905" y="-3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="8" x="-1.905" y="3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="6" x="0.635" y="3.33" dx="0.6" dy="2.286" layer="1"/>
<smd name="5" x="1.905" y="3.33" dx="0.6" dy="2.286" layer="1"/>
<text x="-2.867" y="-2.54" size="1.4224" layer="25" ratio="9" rot="R90">&gt;NAME</text>
<text x="4.2958" y="-2.54" size="1.4224" layer="27" ratio="9" rot="R90">&gt;VALUE</text>
<rectangle x1="-2.1501" y1="-4.15" x2="-1.6599" y2="-2.6301" layer="21"/>
<rectangle x1="-0.8801" y1="-4.15" x2="-0.3899" y2="-2.6301" layer="21"/>
<rectangle x1="0.3899" y1="-4.15" x2="0.8801" y2="-2.6301" layer="21"/>
<rectangle x1="1.6599" y1="-4.15" x2="2.1501" y2="-2.6301" layer="21"/>
<rectangle x1="1.6599" y1="2.6301" x2="2.1501" y2="4.15" layer="21"/>
<rectangle x1="0.3899" y1="2.6301" x2="0.8801" y2="4.15" layer="21"/>
<rectangle x1="-0.8801" y1="2.6301" x2="-0.3899" y2="4.15" layer="21"/>
<rectangle x1="-2.1501" y1="2.6301" x2="-1.6599" y2="4.15" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="ATTINY25_45_85">
<wire x1="-10.16" y1="7.62" x2="12.7" y2="7.62" width="0.254" layer="94"/>
<wire x1="12.7" y1="7.62" x2="12.7" y2="-10.16" width="0.254" layer="94"/>
<wire x1="12.7" y1="-10.16" x2="-10.16" y2="-10.16" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-10.16" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.16" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<pin name="PB0" x="17.78" y="-7.62" length="middle" rot="R180"/>
<pin name="PB1" x="17.78" y="-5.08" length="middle" rot="R180"/>
<pin name="PB2" x="17.78" y="-2.54" length="middle" rot="R180"/>
<pin name="PB3" x="17.78" y="0" length="middle" rot="R180"/>
<pin name="PB4" x="17.78" y="2.54" length="middle" rot="R180"/>
<pin name="NRES/PB5" x="17.78" y="5.08" length="middle" rot="R180"/>
<pin name="VCC" x="-15.24" y="5.08" length="middle" direction="pwr"/>
<pin name="GND" x="-15.24" y="-7.62" length="middle" direction="pwr"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATTINY85*" prefix="U">
<description>&lt;h3&gt;ATMEL ATtiny 85&lt;/h3&gt;

&lt;p&gt;&lt;br /&gt;&lt;b&gt;&lt;u&gt;Packages:&lt;/u&gt;&lt;/b&gt;&lt;br /&gt;
&lt;b&gt;P&lt;/b&gt; = PDIP 08 30mil&lt;br /&gt;
&lt;b&gt;S&lt;/b&gt; = SOIC 08 EIAJ 208mil&lt;/p&gt;

&lt;p&gt;&lt;b&gt;&lt;u&gt;Technologies&lt;/u&gt;&lt;/b&gt;&lt;br /&gt;
Note: for complete ordering code  (temp. range, finish, tape&amp;reel etc.) see www.atmel.com&lt;br /&gt;
&amp;bull; Supply Voltage:
  &lt;b&gt;V&lt;/b&gt; = (1.8&amp;hellip;5.5)V | &lt;b&gt;[blank]&lt;/b&gt; = (2.7&amp;hellip;5.5)V&lt;br /&gt;
&amp;bull; Speed:
  &lt;b&gt;10&lt;/b&gt; = 10 MHz | &lt;b&gt;20&lt;/b&gt; = 20 MHz
&lt;/pre&gt;&lt;/p&gt;
&lt;hr /&gt;

&lt;author&gt;
&lt;p&gt;&lt;u&gt;Author:&lt;/u&gt;&lt;br /&gt;
Dipl.-Ing. FH Rainer Bayer&lt;br /&gt;
HHN Hochschule Heilbronn (Heilbronn University), &lt;i&gt;rainer.bayer@hs-heilbronn.de&lt;/i&gt;&lt;br /&gt;
Ingenieurbüro ing-rb, &lt;i&gt;mail@ing-rb.de&lt;/i&gt;&lt;/p&gt;&lt;/author&gt;</description>
<gates>
<gate name="G$1" symbol="ATTINY25_45_85" x="0" y="0"/>
</gates>
<devices>
<device name="P" package="PDIP08_300MIL">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="NRES/PB5" pad="1"/>
<connect gate="G$1" pin="PB0" pad="5"/>
<connect gate="G$1" pin="PB1" pad="6"/>
<connect gate="G$1" pin="PB2" pad="7"/>
<connect gate="G$1" pin="PB3" pad="2"/>
<connect gate="G$1" pin="PB4" pad="3"/>
<connect gate="G$1" pin="VCC" pad="8"/>
</connects>
<technologies>
<technology name="-"/>
<technology name="-20"/>
<technology name="V-10"/>
</technologies>
</device>
<device name="S" package="SOIC8_EIAJ_208MIL">
<connects>
<connect gate="G$1" pin="GND" pad="4"/>
<connect gate="G$1" pin="NRES/PB5" pad="1"/>
<connect gate="G$1" pin="PB0" pad="5"/>
<connect gate="G$1" pin="PB1" pad="6"/>
<connect gate="G$1" pin="PB2" pad="7"/>
<connect gate="G$1" pin="PB3" pad="2"/>
<connect gate="G$1" pin="PB4" pad="3"/>
<connect gate="G$1" pin="VCC" pad="8"/>
</connects>
<technologies>
<technology name="-"/>
<technology name="-20"/>
<technology name="V-10"/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="_hhn_attiny25_45_85" deviceset="ATTINY85*" device="P" technology="-20"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="22.86" y="58.42"/>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
