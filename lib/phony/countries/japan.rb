# frozen_string_literal: true

# Japan
# http://www.itu.int/oth/T020200006D/en

ndcs_with_8_subscriber_numbers = %w[3 6]

ndcs_with_7_subscriber_numbers = %w[
  11
15
17
18
19
22
23
24
25
26
27
28
29
42
43
44
45
46
47
48
49
52
53
54
55
58
59
72
73
75
76
77
78
79
82
83
84
86
87
88
89
92
93
95
96
97
98
99
]

ndcs_with_6_subscriber_numbers = %w[
  123
124
125
126
133
134
135
136
137
138
139
142
143
144
145
146
152
153
154
155
156
157
158
162
163
164
165
166
167
172
173
174
175
176
178
179
182
183
184
185
186
187
191
192
193
194
195
197
198
220
223
224
225
226
228
229
233
234
235
237
238
240
241
242
243
244
246
247
248
250
254
255
256
257
258
259
260
261
263
264
265
266
267
268
269
270
274
276
277
278
279
280
282
283
284
285
287
288
289
291
293
294
295
296
297
299
422
428
436
438
439
460
463
465
466
467
470
475
476
478
479
480
493
494
495
531
532
533
536
537
538
539
544
545
547
548
550
551
553
554
555
556
557
558
561
562
563
564
565
566
567
568
569
572
573
574
575
576
577
578
581
584
585
586
587
594
595
596
597
598
599
721
725
735
736
737
738
739
740
742
743
744
745
746
747
748
749
761
763
765
766
767
768
770
771
772
773
774
776
778
779
790
791
794
795
796
797
798
799
820
823
824
826
827
829
833
834
835
836
837
838
845
846
847
848
852
853
854
855
856
857
858
859
863
865
866
867
868
869
875
877
879
880
883
884
885
887
889
892
893
894
895
896
897
898
920
930
940
942
943
944
946
947
948
949
950
952
954
955
956
957
959
964
965
966
967
968
969
972
973
974
977
978
979
980
982
983
984
985
986
987
993
994
995
996
997
]

ndcs_with_5_subscriber_numbers = %w[
  1267
1372
1374
1377
1392
1397
1398
1456
1457
1466
1547
1558
1564
1586
1587
1632
1634
1635
1648
1654
1655
1656
1658
4992
4994
4996
4998
5769
5979
7468
8387
8388
8396
8477
8512
8514
9496
9802
9912
9913
9969
]

Phony.define do
  country '81',
    trunk('0', normalize: true, format: true, split: true) |
    one_of(%w[20 50 60 70 90])             >> split(4, 4) | # mobile, VoIP telephony
    match(/\A(597)9[0178]\d+\z/)           >> split(2, 4) |
    one_of(ndcs_with_5_subscriber_numbers) >> split(1, 4) |
    match(/\A(4)70[019]\d+\z/)             >> split(4, 4) |
    match(/\A(4)71\d+\z/)                  >> split(4, 4) |
    match(/\A(4)20\d+\z/)                  >> split(4, 4) |
    match(/\A(4)29[02-69]\d+\z/)           >> split(4, 4) |
    match(/\A(15)4[018]\d+\z/)             >> split(3, 4) |
    match(/\A(22)3[014-9]\d+\z/)           >> split(3, 4) |
    match(/\A(25)[04][01]\d+\z/)           >> split(3, 4) |
    match(/\A(25)5[0-69]\d+\z/)            >> split(3, 4) |
    match(/\A(25)[68][01]\d+\z/)           >> split(3, 4) |
    match(/\A(25)7[015-9]\d+\z/)           >> split(3, 4) |
    match(/\A(25)917\d+\z/)                >> split(3, 4) |
    match(/\A(25)999\d+\z/)                >> split(3, 4) |
    match(/\A(26)4[016-9]\d+\z/)           >> split(3, 4) |
    match(/\A(28)3[0134]\d+\z/)            >> split(3, 4) |
    match(/\A(28)9[0-5]\d+\z/)             >> split(3, 4) |
    match(/\A(29)17\d+\z/)                 >> split(3, 4) |
    match(/\A(29)3[015-9]\d+\z/)           >> split(3, 4) |
    match(/\A(42)21\d+\z/)                 >> split(3, 4) |
    match(/\A(42)8[01456]\d+\z/)           >> split(3, 4) |
    match(/\A(47)5[019]\d+\z/)             >> split(3, 4) |
    match(/\A(47)9[019]\d+\z/)             >> split(3, 4) |
    match(/\A(59)8[019]\d+\z/)             >> split(3, 4) |
    match(/\A(59)9[01]\d+\z/)              >> split(3, 4) |
    match(/\A(79)4[0-59]\d+\z/)            >> split(3, 4) |
    match(/\A(79)5[01569]\d+\z/)           >> split(3, 4) |
    match(/\A(79)6[0167]\d+\z/)            >> split(3, 4) |
    match(/\A(82)4[0-39]\d+\z/)            >> split(3, 4) |
    match(/\A(82)9[019]\d+\z/)             >> split(3, 4) |
    match(/\A(82)92[1-9]\d+\z/)            >> split(3, 4) |
    match(/\A(82)94[1-3]\d+\z/)            >> split(3, 4) |
    match(/\A(82)96[0-47-9]\d+\z/)         >> split(3, 4) |
    match(/\A(82)965[01346-9]\d+\z/)       >> split(3, 4) |
    match(/\A(82)966[1-9]\d+\z/)           >> split(3, 4) |
    match(/\A(83)76[6-8]\d+\z/)            >> split(3, 4) |
    match(/\A(83)7[01789]\d+\z/)           >> split(3, 4) |
    match(/\A(83)8[01]\d+\z/)              >> split(3, 4) |
    match(/\A(86)36[23]\d+\z/)             >> split(3, 4) |
    match(/\A(86)5[0-389]\d+\z/)           >> split(3, 4) |
    match(/\A(86)55[23]\d+\z/)             >> split(3, 4) |
    match(/\A(86)[01]\d+\z/)               >> split(3, 4) |
    match(/\A(86)9[178]\d+\z/)             >> split(3, 4) |
    match(/\A(86)72\d+\z/)                 >> split(3, 4) |
    match(/\A(86)8[019]\d+\z/)             >> split(3, 4) |
    match(/\A(86)9[0145]\d+\z/)            >> split(3, 4) |
    match(/\A(86)99[014-9]\d+\z/)          >> split(3, 4) |
    match(/\A(99)331\d+\z/)                >> split(3, 4) |
    match(/\A(99)34[357]\d+\z/)            >> split(3, 4) |
    match(/\A(99)4[0178]\d+\z/)            >> split(3, 4) |
    one_of(ndcs_with_6_subscriber_numbers) >> split(2, 4) |
    one_of(%w[120])                        >> split(3, 3) | # freephone
    one_of(%w[800])                        >> split(3, 4) | # freephone
    one_of(%w[180 570])                    >> split(3, 3) | # Tele-gong/Tele-dome, Navi-dial
    one_of(%w[170 990])                    >> split(2, 4) | # Dengon-dial, Dial Q2 (discontinued)
    one_of(%w[80])                         >> split(4, 4) | # mobile
    one_of(ndcs_with_7_subscriber_numbers) >> split(3, 4) |
    one_of(ndcs_with_8_subscriber_numbers) >> split(4, 4) |
    # TODO: 91(NDC) N(S)N length: 5-13 - Non-geographic number (Direct subscriber telephone service (legacy))
    fixed(2) >> split(4, 4),
    local_space: :-,
    space: :-
end
