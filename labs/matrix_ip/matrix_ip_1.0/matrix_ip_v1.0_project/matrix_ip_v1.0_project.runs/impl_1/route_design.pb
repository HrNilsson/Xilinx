
H
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-347
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
	xc7vx485t2default:defaultZ17-349
x
%Your %s license expires in %s day(s)
86*common2"
Implementation2default:default2
262default:defaultZ17-86
g
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
M
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198
\
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199
M

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103
p
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254
K

Starting %s Task
103*constraints2
Route2default:defaultZ18-103
g

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101
s

Phase %s%s
101*constraints2
1.1 2default:default2-
Build Netlist & NodeGraph2default:defaultZ18-101
E
9Phase 1.1 Build Netlist & NodeGraph | Checksum: f761538d
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:08 ; elapsed = 00:05:34 . Memory (MB): peak = 1315.480 ; gain = 353.7812default:default
:
.Phase 1 Build RT Design | Checksum: 14b9fc202
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:08 ; elapsed = 00:05:34 . Memory (MB): peak = 1315.590 ; gain = 353.8912default:default
m

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101
r
\No timing constraints were detected. The router will operate in resource-optimization mode.
64*routeZ35-64
i

Phase %s%s
101*constraints2
2.1 2default:default2#
Restore Routing2default:defaultZ18-101
<
0Phase 2.1 Restore Routing | Checksum: 14b9fc202
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:10 ; elapsed = 00:05:37 . Memory (MB): peak = 1336.195 ; gain = 374.4962default:default
m

Phase %s%s
101*constraints2
2.2 2default:default2'
Special Net Routing2default:defaultZ18-101
?
3Phase 2.2 Special Net Routing | Checksum: e938e732
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:11 ; elapsed = 00:05:38 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
q

Phase %s%s
101*constraints2
2.3 2default:default2+
Local Clock Net Routing2default:defaultZ18-101
C
7Phase 2.3 Local Clock Net Routing | Checksum: e938e732
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:11 ; elapsed = 00:05:38 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
?
3Phase 2 Router Initialization | Checksum: e938e732
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:11 ; elapsed = 00:05:38 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
g

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101
9
-Phase 3 Initial Routing | Checksum: 75ad4f71
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:13 ; elapsed = 00:05:39 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
j

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101
l

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101
k

Phase %s%s
101*constraints2
4.1.1 2default:default2#
Remove Overlaps2default:defaultZ18-101
=
1Phase 4.1.1 Remove Overlaps | Checksum: cf96fc7f
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:14 ; elapsed = 00:05:39 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
>
2Phase 4.1 Global Iteration 0 | Checksum: cf96fc7f
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:14 ; elapsed = 00:05:39 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
<
0Phase 4 Rip-up And Reroute | Checksum: cf96fc7f
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:14 ; elapsed = 00:05:39 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
e

Phase %s%s
101*constraints2
5 2default:default2!
Post Hold Fix2default:defaultZ18-101
7
+Phase 5 Post Hold Fix | Checksum: cf96fc7f
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:14 ; elapsed = 00:05:39 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
m

Phase %s%s
101*constraints2
6 2default:default2)
Verifying routed nets2default:defaultZ18-101
?
3Phase 6 Verifying routed nets | Checksum: cf96fc7f
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:14 ; elapsed = 00:05:40 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
i

Phase %s%s
101*constraints2
7 2default:default2%
Depositing Routes2default:defaultZ18-101
<
0Phase 7 Depositing Routes | Checksum: 1744edbb1
*common
�

%s
*constraints2q
]Time (s): cpu = 00:10:15 ; elapsed = 00:05:40 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
4
Router Completed Successfully
16*routeZ35-16
4
(Ending Route Task | Checksum: 1744edbb1
*common
�

%s
*constraints2q
]Time (s): cpu = 00:00:00 ; elapsed = 00:05:40 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
�

%s
*constraints2q
]Time (s): cpu = 00:00:00 ; elapsed = 00:05:40 . Memory (MB): peak = 1375.609 ; gain = 413.9102default:default
Q
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
432default:default2
02default:default2
02default:default2
02default:defaultZ4-41
U
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:10:192default:default2
00:05:442default:default2
1375.6092default:default2
451.1092default:defaultZ17-268
G
Running DRC with %s threads
24*drc2
22default:defaultZ23-27
�
#The results of DRC are in file %s.
168*coretcl2�
�C:/Users/ReneNilsson/Documents/GitHub/Xilinx/labs/matrix_ip/matrix_ip_1.0/matrix_ip_v1.0_project/matrix_ip_v1.0_project.runs/impl_1/matrix_ip_v1_0_drc_routed.rpt�C:/Users/ReneNilsson/Documents/GitHub/Xilinx/labs/matrix_ip/matrix_ip_1.0/matrix_ip_v1.0_project/matrix_ip_v1.0_project.runs/impl_1/matrix_ip_v1_0_drc_routed.rpt2default:default8Z2-168
G
/No user defined clocks was found in the design!216*powerZ33-232
B
,Running Vector-less Activity Propagation...
51*powerZ33-51
G
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:052default:default2
00:00:052default:default2
1375.6092default:default2
0.0002default:defaultZ17-268
�
UpdateTimingParams:%s.
91*timing2P
< Speed grade: -1, Delay Type: min_max, Constraints type: SDC2default:defaultZ38-91
s
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191
4
Writing XDEF routing.
211*designutilsZ20-211
A
#Writing XDEF routing logical nets.
209*designutilsZ20-209
A
#Writing XDEF routing special nets.
210*designutilsZ20-210
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.7612default:default2
1375.6092default:default2
0.0002default:defaultZ17-268


End Record