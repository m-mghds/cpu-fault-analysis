
//Verilog file of module CPU


`timescale 1 ns / 1ns

module CPU_net(clk,
reset,
adr_bus,
rd_mem,
wr_mem,
data_bus_in,
data_bus_out);
	input clk;
	input reset;
input [0:7]data_bus_in;
output [0:5]adr_bus;
	output rd_mem;
	output wr_mem;
output [0:7]data_bus_out;
wire
CPU_wire_1,
CPU_wire_2,
CPU_wire_3,
CPU_wire_4,
CPU_wire_5,
CPU_wire_6,
CPU_wire_7,
CPU_wire_8,
CPU_wire_9,
CPU_wire_10,
CPU_wire_11,
CPU_wire_12,
CPU_wire_13,
CPU_wire_14,
CPU_wire_15,
CPU_wire_16,
CPU_wire_17,
CPU_wire_18,
CPU_wire_19,
CPU_wire_20,
CPU_wire_21,
CPU_wire_22,
CPU_wire_23,
CPU_wire_24,
CPU_wire_25,
CPU_wire_26,
CPU_wire_27,
CPU_wire_28,
CPU_wire_29,
CPU_wire_30,
CPU_wire_31,
CPU_wire_32,
CPU_wire_33,
CPU_wire_34,
CPU_wire_35,
CPU_wire_36,
CPU_wire_37,
CPU_wire_38,
CPU_wire_39,
CPU_wire_40,
CPU_wire_41,
CPU_wire_42,
CPU_wire_43,
CPU_wire_44,
CPU_wire_45,
CPU_wire_46,
CPU_wire_47,
CPU_wire_48,
CPU_wire_49,
CPU_wire_50,
CPU_wire_51,
CPU_wire_52,
CPU_wire_53,
CPU_wire_54,
CPU_wire_55,
CPU_wire_56,
CPU_wire_57,
CPU_wire_58,
CPU_wire_59,
CPU_wire_60,
CPU_wire_61,
CPU_wire_62,
CPU_wire_63,
CPU_wire_64,
CPU_wire_65,
CPU_wire_66,
CPU_wire_67,
CPU_wire_68,
CPU_wire_69,
CPU_wire_70,
CPU_wire_71,
CPU_wire_72,
CPU_wire_73,
CPU_wire_74,
CPU_wire_75,
CPU_wire_76,
CPU_wire_77,
CPU_wire_78,
CPU_wire_79,
CPU_wire_80,
CPU_wire_81,
CPU_wire_82,
CPU_wire_83,
CPU_wire_84,
CPU_wire_85,
CPU_wire_86,
CPU_wire_87,
CPU_wire_88,
CPU_wire_89,
CPU_wire_90,
CPU_wire_91,
CPU_wire_92,
CPU_wire_93,
CPU_wire_94,
CPU_wire_95,
CPU_wire_96,
CPU_wire_97,
CPU_wire_98,
CPU_wire_99,
CPU_wire_100,
CPU_wire_101,
CPU_wire_102,
CPU_wire_103,
CPU_wire_104,
CPU_wire_105,
CPU_wire_106,
CPU_wire_107,
CPU_wire_108,
CPU_wire_109,
CPU_wire_110,
CPU_wire_111,
CPU_wire_112,
CPU_wire_113,
CPU_wire_114,
CPU_wire_115,
CPU_wire_116,
CPU_wire_117,
CPU_wire_118,
CPU_wire_119,
CPU_wire_120,
CPU_wire_121,
CPU_wire_122,
CPU_wire_123,
CPU_wire_124,
CPU_wire_125,
CPU_wire_126,
CPU_wire_127,
CPU_wire_128,
CPU_wire_129,
CPU_wire_130,
CPU_wire_131,
CPU_wire_132,
CPU_wire_133,
CPU_wire_134,
CPU_wire_135,
CPU_wire_136,
CPU_wire_137,
CPU_wire_138,
CPU_wire_139,
CPU_wire_140,
CPU_wire_141,
CPU_wire_142,
CPU_wire_143,
CPU_wire_144,
CPU_wire_145,
CPU_wire_146,
CPU_wire_147,
CPU_wire_148,
CPU_wire_149,
CPU_wire_150,
CPU_wire_151,
CPU_wire_152,
CPU_wire_153,
CPU_wire_154,
CPU_wire_155,
CPU_wire_156,
CPU_wire_157,
CPU_wire_158,
CPU_wire_159,
CPU_wire_160,
CPU_wire_161,
CPU_wire_162,
CPU_wire_163,
CPU_wire_164,
CPU_wire_165,
CPU_wire_166,
CPU_wire_167,
CPU_wire_168,
CPU_wire_169,
CPU_wire_170,
CPU_wire_171,
CPU_wire_172,
CPU_wire_173,
CPU_wire_174,
CPU_wire_175,
CPU_wire_176,
CPU_wire_177,
CPU_wire_178,
CPU_wire_6_0,
CPU_wire_6_1,
CPU_wire_6_2,
CPU_wire_6_3,
CPU_wire_8_0,
CPU_wire_8_1,
CPU_wire_8_2,
CPU_wire_8_3,
CPU_wire_8_4,
CPU_wire_15_0,
CPU_wire_15_1,
CPU_wire_15_2,
CPU_wire_15_3,
CPU_wire_15_4,
CPU_wire_15_5,
CPU_wire_15_6,
CPU_wire_15_7,
CPU_wire_15_8,
CPU_wire_15_9,
CPU_wire_15_10,
CPU_wire_15_11,
CPU_wire_15_12,
CPU_wire_15_13,
CPU_wire_15_14,
CPU_wire_15_15,
CPU_wire_15_16,
CPU_wire_15_17,
CPU_wire_15_18,
CPU_wire_15_19,
CPU_wire_15_20,
CPU_wire_15_21,
CPU_wire_15_22,
CPU_wire_15_23,
CPU_wire_19_0,
CPU_wire_19_1,
CPU_wire_19_2,
CPU_wire_19_3,
CPU_wire_19_4,
CPU_wire_19_5,
CPU_wire_19_6,
CPU_wire_19_7,
CPU_wire_19_8,
CPU_wire_19_9,
CPU_wire_19_10,
CPU_wire_19_11,
CPU_wire_19_12,
CPU_wire_19_13,
CPU_wire_19_14,
CPU_wire_19_15,
CPU_wire_19_16,
CPU_wire_19_17,
CPU_wire_19_18,
CPU_wire_19_19,
CPU_wire_19_20,
CPU_wire_19_21,
CPU_wire_19_22,
CPU_wire_19_23,
CPU_wire_19_24,
CPU_wire_19_25,
CPU_wire_19_26,
CPU_wire_19_27,
CPU_wire_19_28,
CPU_wire_19_29,
CPU_wire_19_30,
CPU_wire_19_31,
CPU_wire_19_32,
CPU_wire_36_0,
CPU_wire_36_1,
CPU_wire_36_2,
CPU_wire_38_0,
CPU_wire_38_1,
CPU_wire_38_2,
CPU_wire_40_0,
CPU_wire_40_1,
CPU_wire_40_2,
CPU_wire_42_0,
CPU_wire_42_1,
CPU_wire_42_2,
CPU_wire_44_0,
CPU_wire_44_1,
CPU_wire_44_2,
CPU_wire_46_0,
CPU_wire_46_1,
CPU_wire_46_2,
CPU_wire_48_0,
CPU_wire_48_1,
CPU_wire_50_0,
CPU_wire_50_1,
CPU_wire_3_0,
CPU_wire_3_1,
CPU_wire_3_2,
CPU_wire_2_0,
CPU_wire_2_1,
CPU_wire_2_2,
CPU_wire_142_0,
CPU_wire_142_1,
CPU_wire_146_0,
CPU_wire_146_1,
CPU_wire_150_0,
CPU_wire_150_1,
CPU_wire_154_0,
CPU_wire_154_1,
CPU_wire_158_0,
CPU_wire_158_1,
CPU_wire_162_0,
CPU_wire_162_1,
CPU_wire_166_0,
CPU_wire_166_1,
CPU_wire_170_0,
CPU_wire_170_1,
CPU_wire_120_0,
CPU_wire_120_1,
CPU_wire_124_0,
CPU_wire_124_1,
CPU_wire_128_0,
CPU_wire_128_1,
CPU_wire_132_0,
CPU_wire_132_1,
CPU_wire_136_0,
CPU_wire_136_1,
CPU_wire_140_0,
CPU_wire_140_1,
CPU_wire_84_0,
CPU_wire_84_1,
CPU_wire_89_0,
CPU_wire_89_1,
CPU_wire_94_0,
CPU_wire_94_1,
CPU_wire_99_0,
CPU_wire_99_1,
CPU_wire_104_0,
CPU_wire_104_1,
CPU_wire_109_0,
CPU_wire_109_1,
CPU_wire_31_0,
CPU_wire_31_1,
CPU_wire_31_2,
CPU_wire_31_3,
CPU_wire_31_4,
CPU_wire_31_5,
CPU_wire_31_6,
CPU_wire_31_7,
CPU_wire_31_8,
CPU_wire_31_9,
CPU_wire_31_10,
clk_net_0,
reset_net_0,
rd_mem_net_0,
wr_mem_net_0;

pin #(10) pin_0 ({clk, reset, data_bus_in[0], data_bus_in[1], data_bus_in[2], data_bus_in[3], data_bus_in[4], data_bus_in[5], data_bus_in[6], data_bus_in[7]}, {clk_net_0, reset_net_0, data_bus_in_0, data_bus_in_1, data_bus_in_2, data_bus_in_3, data_bus_in_4, data_bus_in_5, data_bus_in_6, data_bus_in_7});

pout #(16) pout_0 ({adr_bus_0, adr_bus_1, adr_bus_2, adr_bus_3, adr_bus_4, adr_bus_5, rd_mem_net_0, wr_mem_net_0, data_bus_out_0, data_bus_out_1, data_bus_out_2, data_bus_out_3, data_bus_out_4, data_bus_out_5, data_bus_out_6, data_bus_out_7}, {adr_bus[0], adr_bus[1], adr_bus[2], adr_bus[3], adr_bus[4], adr_bus[5], rd_mem, wr_mem, data_bus_out[0], data_bus_out[1], data_bus_out[2], data_bus_out[3], data_bus_out[4], data_bus_out[5], data_bus_out[6], data_bus_out[7]});

fanout_n #(4, 0, 0) FANOUT_1 (CPU_wire_6, {CPU_wire_6_0, CPU_wire_6_1, CPU_wire_6_2, CPU_wire_6_3});
fanout_n #(5, 0, 0) FANOUT_2 (CPU_wire_8, {CPU_wire_8_0, CPU_wire_8_1, CPU_wire_8_2, CPU_wire_8_3, CPU_wire_8_4});
fanout_n #(24, 0, 0) FANOUT_3 (CPU_wire_15, {CPU_wire_15_0, CPU_wire_15_1, CPU_wire_15_2, CPU_wire_15_3, CPU_wire_15_4, CPU_wire_15_5, CPU_wire_15_6, CPU_wire_15_7, CPU_wire_15_8, CPU_wire_15_9, CPU_wire_15_10, CPU_wire_15_11, CPU_wire_15_12, CPU_wire_15_13, CPU_wire_15_14, CPU_wire_15_15, CPU_wire_15_16, CPU_wire_15_17, CPU_wire_15_18, CPU_wire_15_19, CPU_wire_15_20, CPU_wire_15_21, CPU_wire_15_22, CPU_wire_15_23});
fanout_n #(33, 0, 0) FANOUT_4 (CPU_wire_19, {CPU_wire_19_0, CPU_wire_19_1, CPU_wire_19_2, CPU_wire_19_3, CPU_wire_19_4, CPU_wire_19_5, CPU_wire_19_6, CPU_wire_19_7, CPU_wire_19_8, CPU_wire_19_9, CPU_wire_19_10, CPU_wire_19_11, CPU_wire_19_12, CPU_wire_19_13, CPU_wire_19_14, CPU_wire_19_15, CPU_wire_19_16, CPU_wire_19_17, CPU_wire_19_18, CPU_wire_19_19, CPU_wire_19_20, CPU_wire_19_21, CPU_wire_19_22, CPU_wire_19_23, CPU_wire_19_24, CPU_wire_19_25, CPU_wire_19_26, CPU_wire_19_27, CPU_wire_19_28, CPU_wire_19_29, CPU_wire_19_30, CPU_wire_19_31, CPU_wire_19_32});
fanout_n #(3, 0, 0) FANOUT_5 (CPU_wire_36, {CPU_wire_36_0, CPU_wire_36_1, CPU_wire_36_2});
fanout_n #(3, 0, 0) FANOUT_6 (CPU_wire_38, {CPU_wire_38_0, CPU_wire_38_1, CPU_wire_38_2});
fanout_n #(3, 0, 0) FANOUT_7 (CPU_wire_40, {CPU_wire_40_0, CPU_wire_40_1, CPU_wire_40_2});
fanout_n #(3, 0, 0) FANOUT_8 (CPU_wire_42, {CPU_wire_42_0, CPU_wire_42_1, CPU_wire_42_2});
fanout_n #(3, 0, 0) FANOUT_9 (CPU_wire_44, {CPU_wire_44_0, CPU_wire_44_1, CPU_wire_44_2});
fanout_n #(3, 0, 0) FANOUT_10 (CPU_wire_46, {CPU_wire_46_0, CPU_wire_46_1, CPU_wire_46_2});
fanout_n #(2, 0, 0) FANOUT_11 (CPU_wire_48, {CPU_wire_48_0, CPU_wire_48_1});
fanout_n #(2, 0, 0) FANOUT_12 (CPU_wire_50, {CPU_wire_50_0, CPU_wire_50_1});
fanout_n #(3, 0, 0) FANOUT_13 (CPU_wire_3, {CPU_wire_3_0, CPU_wire_3_1, CPU_wire_3_2});
fanout_n #(3, 0, 0) FANOUT_14 (CPU_wire_2, {CPU_wire_2_0, CPU_wire_2_1, CPU_wire_2_2});
fanout_n #(2, 0, 0) FANOUT_15 (CPU_wire_142, {CPU_wire_142_0, CPU_wire_142_1});
fanout_n #(2, 0, 0) FANOUT_16 (CPU_wire_146, {CPU_wire_146_0, CPU_wire_146_1});
fanout_n #(2, 0, 0) FANOUT_17 (CPU_wire_150, {CPU_wire_150_0, CPU_wire_150_1});
fanout_n #(2, 0, 0) FANOUT_18 (CPU_wire_154, {CPU_wire_154_0, CPU_wire_154_1});
fanout_n #(2, 0, 0) FANOUT_19 (CPU_wire_158, {CPU_wire_158_0, CPU_wire_158_1});
fanout_n #(2, 0, 0) FANOUT_20 (CPU_wire_162, {CPU_wire_162_0, CPU_wire_162_1});
fanout_n #(2, 0, 0) FANOUT_21 (CPU_wire_166, {CPU_wire_166_0, CPU_wire_166_1});
fanout_n #(2, 0, 0) FANOUT_22 (CPU_wire_170, {CPU_wire_170_0, CPU_wire_170_1});
fanout_n #(2, 0, 0) FANOUT_23 (CPU_wire_120, {CPU_wire_120_0, CPU_wire_120_1});
fanout_n #(2, 0, 0) FANOUT_24 (CPU_wire_124, {CPU_wire_124_0, CPU_wire_124_1});
fanout_n #(2, 0, 0) FANOUT_25 (CPU_wire_128, {CPU_wire_128_0, CPU_wire_128_1});
fanout_n #(2, 0, 0) FANOUT_26 (CPU_wire_132, {CPU_wire_132_0, CPU_wire_132_1});
fanout_n #(2, 0, 0) FANOUT_27 (CPU_wire_136, {CPU_wire_136_0, CPU_wire_136_1});
fanout_n #(2, 0, 0) FANOUT_28 (CPU_wire_140, {CPU_wire_140_0, CPU_wire_140_1});
fanout_n #(2, 0, 0) FANOUT_29 (CPU_wire_84, {CPU_wire_84_0, CPU_wire_84_1});
fanout_n #(2, 0, 0) FANOUT_30 (CPU_wire_89, {CPU_wire_89_0, CPU_wire_89_1});
fanout_n #(2, 0, 0) FANOUT_31 (CPU_wire_94, {CPU_wire_94_0, CPU_wire_94_1});
fanout_n #(2, 0, 0) FANOUT_32 (CPU_wire_99, {CPU_wire_99_0, CPU_wire_99_1});
fanout_n #(2, 0, 0) FANOUT_33 (CPU_wire_104, {CPU_wire_104_0, CPU_wire_104_1});
fanout_n #(2, 0, 0) FANOUT_34 (CPU_wire_109, {CPU_wire_109_0, CPU_wire_109_1});
fanout_n #(11, 0, 0) FANOUT_35 (CPU_wire_31, {CPU_wire_31_0, CPU_wire_31_1, CPU_wire_31_2, CPU_wire_31_3, CPU_wire_31_4, CPU_wire_31_5, CPU_wire_31_6, CPU_wire_31_7, CPU_wire_31_8, CPU_wire_31_9, CPU_wire_31_10});


nor_n #(2, 0, 0) NOR_1 (CPU_wire_1, {CPU_wire_2_0, CPU_wire_3_0});
and_n #(2, 0, 0) AND_1 (CPU_wire_9, {CPU_wire_13, CPU_wire_6_0});
notg #(0, 0) NOT_1 (CPU_wire_13, CPU_wire_8_0);
and_n #(2, 0, 0) AND_2 (CPU_wire_14, {CPU_wire_16, CPU_wire_17});
and_n #(2, 0, 0) AND_3 (CPU_wire_16, {CPU_wire_18, CPU_wire_3_1});
notg #(0, 0) NOT_2 (CPU_wire_17, CPU_wire_2_1);
and_n #(2, 0, 0) AND_4 (CPU_wire_18, {CPU_wire_6_1, CPU_wire_8_1});
and_n #(2, 0, 0) AND_5 (CPU_wire_5, {CPU_wire_20, CPU_wire_21});
and_n #(2, 0, 0) AND_6 (CPU_wire_7, {CPU_wire_12, CPU_wire_22});
or_n #(2, 0, 0) OR_1 (CPU_wire_11, {CPU_wire_25, CPU_wire_6_2});
notg #(0, 0) NOT_3 (CPU_wire_25, CPU_wire_8_2);
notg #(0, 0) NOT_4 (CPU_wire_26, CPU_wire_2_2);
and_n #(2, 0, 0) AND_7 (CPU_wire_27, {CPU_wire_3_2, CPU_wire_26});
notg #(0, 0) NOT_5 (CPU_wire_23, CPU_wire_8_3);
and_n #(2, 0, 0) AND_8 (CPU_wire_30, {CPU_wire_6_3, CPU_wire_8_4});
notg #(0, 0) NOT_6 (CPU_wire_21, CPU_wire_31_0);
notg #(0, 0) NOT_7 (CPU_wire_22, CPU_wire_31_1);
bufg #(0, 0) BUF_1 (CPU_wire_32, 1'b0);
and_n #(2, 0, 0) AND_9 (CPU_wire_28, {CPU_wire_30, CPU_wire_27});
bufg #(0, 0) BUF_2 (CPU_wire_33, 1'b0);
and_n #(2, 0, 0) AND_10 (CPU_wire_53, {CPU_wire_36_0, CPU_wire_19_0});
and_n #(2, 0, 0) AND_11 (CPU_wire_54, {CPU_wire_36_1, CPU_wire_15_0});
and_n #(2, 0, 0) AND_12 (CPU_wire_35, {CPU_wire_55, CPU_wire_56});
notg #(0, 0) NOT_8 (CPU_wire_55, CPU_wire_31_2);
or_n #(2, 0, 0) OR_2 (CPU_wire_34, {CPU_wire_19_1, CPU_wire_31_3});
and_n #(2, 0, 0) AND_13 (CPU_wire_57, {CPU_wire_38_0, CPU_wire_19_2});
and_n #(2, 0, 0) AND_14 (CPU_wire_58, {CPU_wire_38_1, CPU_wire_15_1});
and_n #(2, 0, 0) AND_15 (CPU_wire_37, {CPU_wire_59, CPU_wire_60});
notg #(0, 0) NOT_9 (CPU_wire_59, CPU_wire_31_4);
and_n #(2, 0, 0) AND_16 (CPU_wire_61, {CPU_wire_40_0, CPU_wire_19_3});
and_n #(2, 0, 0) AND_17 (CPU_wire_62, {CPU_wire_40_1, CPU_wire_15_2});
and_n #(2, 0, 0) AND_18 (CPU_wire_39, {CPU_wire_63, CPU_wire_64});
notg #(0, 0) NOT_10 (CPU_wire_63, CPU_wire_31_5);
and_n #(2, 0, 0) AND_19 (CPU_wire_65, {CPU_wire_42_0, CPU_wire_19_4});
and_n #(2, 0, 0) AND_20 (CPU_wire_66, {CPU_wire_42_1, CPU_wire_15_3});
and_n #(2, 0, 0) AND_21 (CPU_wire_41, {CPU_wire_67, CPU_wire_68});
notg #(0, 0) NOT_11 (CPU_wire_67, CPU_wire_31_6);
and_n #(2, 0, 0) AND_22 (CPU_wire_69, {CPU_wire_44_0, CPU_wire_19_5});
and_n #(2, 0, 0) AND_23 (CPU_wire_70, {CPU_wire_44_1, CPU_wire_15_4});
and_n #(2, 0, 0) AND_24 (CPU_wire_43, {CPU_wire_71, CPU_wire_72});
notg #(0, 0) NOT_12 (CPU_wire_71, CPU_wire_31_7);
and_n #(2, 0, 0) AND_25 (CPU_wire_73, {CPU_wire_46_0, CPU_wire_19_6});
and_n #(2, 0, 0) AND_26 (CPU_wire_74, {CPU_wire_46_1, CPU_wire_15_5});
and_n #(2, 0, 0) AND_27 (CPU_wire_45, {CPU_wire_75, CPU_wire_76});
notg #(0, 0) NOT_13 (CPU_wire_75, CPU_wire_31_8);
and_n #(2, 0, 0) AND_28 (CPU_wire_77, {CPU_wire_48_0, CPU_wire_19_7});
and_n #(2, 0, 0) AND_29 (CPU_wire_47, {CPU_wire_78, CPU_wire_79});
notg #(0, 0) NOT_14 (CPU_wire_78, CPU_wire_31_9);
and_n #(2, 0, 0) AND_30 (CPU_wire_80, {CPU_wire_50_0, CPU_wire_19_8});
and_n #(2, 0, 0) AND_31 (CPU_wire_49, {CPU_wire_81, CPU_wire_82});
notg #(0, 0) NOT_15 (CPU_wire_81, CPU_wire_31_10);
and_n #(2, 0, 0) AND_32 (CPU_wire_83, {CPU_wire_84_0, CPU_wire_85});
and_n #(2, 0, 0) AND_33 (CPU_wire_86, {CPU_wire_84_1, CPU_wire_87});
and_n #(2, 0, 0) AND_34 (CPU_wire_88, {CPU_wire_89_0, CPU_wire_90});
and_n #(2, 0, 0) AND_35 (CPU_wire_91, {CPU_wire_89_1, CPU_wire_92});
and_n #(2, 0, 0) AND_36 (CPU_wire_93, {CPU_wire_94_0, CPU_wire_95});
and_n #(2, 0, 0) AND_37 (CPU_wire_96, {CPU_wire_94_1, CPU_wire_97});
and_n #(2, 0, 0) AND_38 (CPU_wire_98, {CPU_wire_99_0, CPU_wire_100});
and_n #(2, 0, 0) AND_39 (CPU_wire_101, {CPU_wire_99_1, CPU_wire_102});
and_n #(2, 0, 0) AND_40 (CPU_wire_103, {CPU_wire_104_0, CPU_wire_105});
and_n #(2, 0, 0) AND_41 (CPU_wire_106, {CPU_wire_104_1, CPU_wire_107});
and_n #(2, 0, 0) AND_42 (CPU_wire_108, {CPU_wire_109_0, CPU_wire_110});
and_n #(2, 0, 0) AND_43 (CPU_wire_111, {CPU_wire_109_1, CPU_wire_112});
and_n #(2, 0, 0) AND_44 (CPU_wire_113, {CPU_wire_52, CPU_wire_114});
and_n #(2, 0, 0) AND_45 (CPU_wire_115, {CPU_wire_51, CPU_wire_116});
and_n #(2, 0, 0) AND_46 (CPU_wire_117, {CPU_wire_15_6, CPU_wire_118});
and_n #(2, 0, 0) AND_47 (CPU_wire_119, {CPU_wire_15_7, CPU_wire_120_0});
and_n #(2, 0, 0) AND_48 (CPU_wire_121, {CPU_wire_15_8, CPU_wire_122});
and_n #(2, 0, 0) AND_49 (CPU_wire_123, {CPU_wire_15_9, CPU_wire_124_0});
and_n #(2, 0, 0) AND_50 (CPU_wire_125, {CPU_wire_15_10, CPU_wire_126});
and_n #(2, 0, 0) AND_51 (CPU_wire_127, {CPU_wire_15_11, CPU_wire_128_0});
and_n #(2, 0, 0) AND_52 (CPU_wire_129, {CPU_wire_15_12, CPU_wire_130});
and_n #(2, 0, 0) AND_53 (CPU_wire_131, {CPU_wire_15_13, CPU_wire_132_0});
and_n #(2, 0, 0) AND_54 (CPU_wire_133, {CPU_wire_15_14, CPU_wire_134});
and_n #(2, 0, 0) AND_55 (CPU_wire_135, {CPU_wire_15_15, CPU_wire_136_0});
and_n #(2, 0, 0) AND_56 (CPU_wire_137, {CPU_wire_15_16, CPU_wire_138});
and_n #(2, 0, 0) AND_57 (CPU_wire_139, {CPU_wire_15_17, CPU_wire_140_0});
notg #(0, 0) NOT_16 (CPU_wire_112, CPU_wire_15_18);
notg #(0, 0) NOT_17 (CPU_wire_107, CPU_wire_15_19);
notg #(0, 0) NOT_18 (CPU_wire_102, CPU_wire_15_20);
notg #(0, 0) NOT_19 (CPU_wire_97, CPU_wire_15_21);
notg #(0, 0) NOT_20 (CPU_wire_92, CPU_wire_15_22);
notg #(0, 0) NOT_21 (CPU_wire_87, CPU_wire_15_23);
and_n #(2, 0, 0) AND_58 (CPU_wire_141, {CPU_wire_144, CPU_wire_19_9});
notg #(0, 0) NOT_22 (CPU_wire_144, CPU_wire_142_0);
and_n #(2, 0, 0) AND_59 (CPU_wire_143, {CPU_wire_142_1, CPU_wire_19_10});
and_n #(2, 0, 0) AND_60 (CPU_wire_145, {CPU_wire_148, CPU_wire_19_11});
notg #(0, 0) NOT_23 (CPU_wire_148, CPU_wire_146_0);
and_n #(2, 0, 0) AND_61 (CPU_wire_147, {CPU_wire_146_1, CPU_wire_19_12});
and_n #(2, 0, 0) AND_62 (CPU_wire_149, {CPU_wire_152, CPU_wire_19_13});
notg #(0, 0) NOT_24 (CPU_wire_152, CPU_wire_150_0);
and_n #(2, 0, 0) AND_63 (CPU_wire_151, {CPU_wire_150_1, CPU_wire_19_14});
and_n #(2, 0, 0) AND_64 (CPU_wire_153, {CPU_wire_156, CPU_wire_19_15});
notg #(0, 0) NOT_25 (CPU_wire_156, CPU_wire_154_0);
and_n #(2, 0, 0) AND_65 (CPU_wire_155, {CPU_wire_154_1, CPU_wire_19_16});
and_n #(2, 0, 0) AND_66 (CPU_wire_157, {CPU_wire_160, CPU_wire_19_17});
notg #(0, 0) NOT_26 (CPU_wire_160, CPU_wire_158_0);
and_n #(2, 0, 0) AND_67 (CPU_wire_159, {CPU_wire_158_1, CPU_wire_19_18});
and_n #(2, 0, 0) AND_68 (CPU_wire_161, {CPU_wire_164, CPU_wire_19_19});
notg #(0, 0) NOT_27 (CPU_wire_164, CPU_wire_162_0);
and_n #(2, 0, 0) AND_69 (CPU_wire_163, {CPU_wire_162_1, CPU_wire_19_20});
and_n #(2, 0, 0) AND_70 (CPU_wire_165, {CPU_wire_168, CPU_wire_19_21});
notg #(0, 0) NOT_28 (CPU_wire_168, CPU_wire_166_0);
and_n #(2, 0, 0) AND_71 (CPU_wire_167, {CPU_wire_166_1, CPU_wire_19_22});
and_n #(2, 0, 0) AND_72 (CPU_wire_169, {CPU_wire_172, CPU_wire_19_23});
notg #(0, 0) NOT_29 (CPU_wire_172, CPU_wire_170_0);
and_n #(2, 0, 0) AND_73 (CPU_wire_171, {CPU_wire_170_1, CPU_wire_19_24});
or_n #(2, 0, 0) OR_3 (CPU_wire_142, {CPU_wire_53, CPU_wire_83});
notg #(0, 0) NOT_30 (CPU_wire_85, CPU_wire_19_25);
or_n #(2, 0, 0) OR_4 (CPU_wire_146, {CPU_wire_57, CPU_wire_88});
notg #(0, 0) NOT_31 (CPU_wire_90, CPU_wire_19_26);
or_n #(2, 0, 0) OR_5 (CPU_wire_150, {CPU_wire_61, CPU_wire_93});
notg #(0, 0) NOT_32 (CPU_wire_95, CPU_wire_19_27);
or_n #(2, 0, 0) OR_6 (CPU_wire_154, {CPU_wire_65, CPU_wire_98});
notg #(0, 0) NOT_33 (CPU_wire_100, CPU_wire_19_28);
or_n #(2, 0, 0) OR_7 (CPU_wire_158, {CPU_wire_69, CPU_wire_103});
notg #(0, 0) NOT_34 (CPU_wire_105, CPU_wire_19_29);
or_n #(2, 0, 0) OR_8 (CPU_wire_162, {CPU_wire_73, CPU_wire_108});
notg #(0, 0) NOT_35 (CPU_wire_110, CPU_wire_19_30);
or_n #(2, 0, 0) OR_9 (CPU_wire_166, {CPU_wire_77, CPU_wire_113});
notg #(0, 0) NOT_36 (CPU_wire_114, CPU_wire_19_31);
or_n #(2, 0, 0) OR_10 (CPU_wire_170, {CPU_wire_80, CPU_wire_115});
notg #(0, 0) NOT_37 (CPU_wire_116, CPU_wire_19_32);
notg #(0, 0) NOT_38 (CPU_wire_118, CPU_wire_120_1);
notg #(0, 0) NOT_39 (CPU_wire_122, CPU_wire_124_1);
notg #(0, 0) NOT_40 (CPU_wire_126, CPU_wire_128_1);
notg #(0, 0) NOT_41 (CPU_wire_130, CPU_wire_132_1);
notg #(0, 0) NOT_42 (CPU_wire_134, CPU_wire_136_1);
notg #(0, 0) NOT_43 (CPU_wire_138, CPU_wire_140_1);
or_n #(2, 0, 0) OR_11 (CPU_wire_120, {CPU_wire_54, CPU_wire_86});
or_n #(2, 0, 0) OR_12 (CPU_wire_124, {CPU_wire_58, CPU_wire_91});
or_n #(2, 0, 0) OR_13 (CPU_wire_128, {CPU_wire_62, CPU_wire_96});
or_n #(2, 0, 0) OR_14 (CPU_wire_132, {CPU_wire_66, CPU_wire_101});
or_n #(2, 0, 0) OR_15 (CPU_wire_136, {CPU_wire_70, CPU_wire_106});
or_n #(2, 0, 0) OR_16 (CPU_wire_140, {CPU_wire_74, CPU_wire_111});
bufg #(0, 0) BUF_3 (adr_bus_5, CPU_wire_173);
bufg #(0, 0) BUF_4 (adr_bus_4, CPU_wire_174);
bufg #(0, 0) BUF_5 (adr_bus_3, CPU_wire_175);
bufg #(0, 0) BUF_6 (adr_bus_2, CPU_wire_176);
bufg #(0, 0) BUF_7 (adr_bus_1, CPU_wire_177);
bufg #(0, 0) BUF_8 (adr_bus_0, CPU_wire_178);
bufg #(0, 0) BUF_9 (CPU_wire_4, clk_net_0);
bufg #(0, 0) BUF_10 (CPU_wire_84, data_bus_in_7);
bufg #(0, 0) BUF_11 (CPU_wire_89, data_bus_in_6);
bufg #(0, 0) BUF_12 (CPU_wire_94, data_bus_in_5);
bufg #(0, 0) BUF_13 (CPU_wire_99, data_bus_in_4);
bufg #(0, 0) BUF_14 (CPU_wire_104, data_bus_in_3);
bufg #(0, 0) BUF_15 (CPU_wire_109, data_bus_in_2);
bufg #(0, 0) BUF_16 (CPU_wire_52, data_bus_in_1);
bufg #(0, 0) BUF_17 (CPU_wire_51, data_bus_in_0);
bufg #(0, 0) BUF_18 (data_bus_out_7, CPU_wire_36_2);
bufg #(0, 0) BUF_19 (data_bus_out_6, CPU_wire_38_2);
bufg #(0, 0) BUF_20 (data_bus_out_5, CPU_wire_40_2);
bufg #(0, 0) BUF_21 (data_bus_out_4, CPU_wire_42_2);
bufg #(0, 0) BUF_22 (data_bus_out_3, CPU_wire_44_2);
bufg #(0, 0) BUF_23 (data_bus_out_2, CPU_wire_46_2);
bufg #(0, 0) BUF_24 (data_bus_out_1, CPU_wire_48_1);
bufg #(0, 0) BUF_25 (data_bus_out_0, CPU_wire_50_1);
bufg #(0, 0) BUF_26 (rd_mem_net_0, CPU_wire_10);
bufg #(0, 0) BUF_27 (CPU_wire_31, reset_net_0);
bufg #(0, 0) BUF_28 (wr_mem_net_0, CPU_wire_29);
dff DFF_1  (CPU_wire_6, CPU_wire_5, CPU_wire_4, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_2  (CPU_wire_8, CPU_wire_7, CPU_wire_4, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_3  (CPU_wire_10, CPU_wire_9, CPU_wire_6, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_4  (CPU_wire_12, CPU_wire_9, CPU_wire_11, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_5  (CPU_wire_15, CPU_wire_14, CPU_wire_11, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_6  (CPU_wire_19, CPU_wire_1, CPU_wire_18, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_7  (CPU_wire_20, CPU_wire_11, CPU_wire_11, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_8  (CPU_wire_24, CPU_wire_23, CPU_wire_11, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_9  (CPU_wire_29, CPU_wire_28, CPU_wire_6, 1'b0, 1'b0, 1'b1, NbarT, Si, 1'b0);
dff DFF_10  (CPU_wire_36, CPU_wire_35, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_11  (CPU_wire_38, CPU_wire_37, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_12  (CPU_wire_40, CPU_wire_39, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_13  (CPU_wire_42, CPU_wire_41, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_14  (CPU_wire_44, CPU_wire_43, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_15  (CPU_wire_46, CPU_wire_45, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_16  (CPU_wire_48, CPU_wire_47, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_17  (CPU_wire_50, CPU_wire_49, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_34, NbarT, Si, 1'b0);
dff DFF_18  (CPU_wire_3, CPU_wire_51, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_10, NbarT, Si, 1'b0);
dff DFF_19  (CPU_wire_2, CPU_wire_52, CPU_wire_4, CPU_wire_33, 1'b0, CPU_wire_10, NbarT, Si, 1'b0);
dff DFF_20  (CPU_wire_56, CPU_wire_142, CPU_wire_32, CPU_wire_141, CPU_wire_143, 1'b1, NbarT, Si, 1'b0);
dff DFF_21  (CPU_wire_60, CPU_wire_146, CPU_wire_32, CPU_wire_145, CPU_wire_147, 1'b1, NbarT, Si, 1'b0);
dff DFF_22  (CPU_wire_64, CPU_wire_150, CPU_wire_32, CPU_wire_149, CPU_wire_151, 1'b1, NbarT, Si, 1'b0);
dff DFF_23  (CPU_wire_68, CPU_wire_154, CPU_wire_32, CPU_wire_153, CPU_wire_155, 1'b1, NbarT, Si, 1'b0);
dff DFF_24  (CPU_wire_72, CPU_wire_158, CPU_wire_32, CPU_wire_157, CPU_wire_159, 1'b1, NbarT, Si, 1'b0);
dff DFF_25  (CPU_wire_76, CPU_wire_162, CPU_wire_32, CPU_wire_161, CPU_wire_163, 1'b1, NbarT, Si, 1'b0);
dff DFF_26  (CPU_wire_79, CPU_wire_166, CPU_wire_32, CPU_wire_165, CPU_wire_167, 1'b1, NbarT, Si, 1'b0);
dff DFF_27  (CPU_wire_82, CPU_wire_170, CPU_wire_32, CPU_wire_169, CPU_wire_171, 1'b1, NbarT, Si, 1'b0);
dff DFF_28  (CPU_wire_173, CPU_wire_120, CPU_wire_24, CPU_wire_117, CPU_wire_119, 1'b1, NbarT, Si, 1'b0);
dff DFF_29  (CPU_wire_174, CPU_wire_124, CPU_wire_24, CPU_wire_121, CPU_wire_123, 1'b1, NbarT, Si, 1'b0);
dff DFF_30  (CPU_wire_175, CPU_wire_128, CPU_wire_24, CPU_wire_125, CPU_wire_127, 1'b1, NbarT, Si, 1'b0);
dff DFF_31  (CPU_wire_176, CPU_wire_132, CPU_wire_24, CPU_wire_129, CPU_wire_131, 1'b1, NbarT, Si, 1'b0);
dff DFF_32  (CPU_wire_177, CPU_wire_136, CPU_wire_24, CPU_wire_133, CPU_wire_135, 1'b1, NbarT, Si, 1'b0);
dff DFF_33  (CPU_wire_178, CPU_wire_140, CPU_wire_24, CPU_wire_137, CPU_wire_139, 1'b1, NbarT, Si, 1'b0);

endmodule
