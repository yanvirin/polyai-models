┴Ц
└5Ч5
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
k
BatchMatMulV2
x"T
y"T
output"T"
Ttype:

2	"
adj_xbool( "
adj_ybool( 
K
Bincount
arr
size
weights"T	
bins"T"
Ttype:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Р
Cumsum
x"T
axis"Tidx
out"T"
	exclusivebool( "
reversebool( " 
Ttype:
2	"
Tidxtype0:
2	
>
DiagPart

input"T
diagonal"T"
Ttype:

2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
.
Identity

input"T
output"T"	
Ttype
2
L2Loss
t"T
output"T"
Ttype:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
TouttypeИ
2
LookupTableSizeV2
table_handle
size	И
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
М
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
Q
Qr

input"T
q"T
r"T"
full_matricesbool( "
Ttype:	
2
╓
RaggedTensorToSparse(
rt_nested_splits"Tsplits*RAGGED_RANK
rt_dense_values"T
sparse_indices	
sparse_values"T
sparse_dense_shape	"
RAGGED_RANKint(0"	
Ttype"
Tsplitstype0	:
2	
Е
RandomStandardNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
/
Sign
x"T
y"T"
Ttype:

2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
╝
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
1
Square
x"T
y"T"
Ttype:

2	
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
m
StaticRegexReplace	
input

output"
patternstring"
rewritestring"
replace_globalbool(
2
StopGradient

input"T
output"T"	
Ttype
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
c
StringSplit	
input
	delimiter
indices	

values	
shape	"

skip_emptybool(
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshapeИ
9
VarIsInitializedOp
resource
is_initialized
И
Ь
WordpieceTokenizeWithOffsets
input_values
vocab_lookup_table
output_values
output_row_lengths	
start_values	
limit_values	"
suffix_indicatorstring"
max_bytes_per_wordint"
max_chars_per_tokenint "
use_unknown_tokenbool"
unknown_tokenstring"$
split_unknown_charactersbool( "O
output_row_partition_typestringrow_lengths:
row_lengths
row_splitsИ*1.14.02v1.14.0-rc1-22-gaf24dc91b58ни
╗
=SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/keysConst*╔
value┐B╝pBя╣ПBsBeBiBnBcBlByBя╣ПaBtBя╣П, Bя╣ПtheBuBdBoBaBmBreBуБоBя╣ПbB Bя╣ПandBя╣ПofBя╣ПуАБBatBgBveBя╣ПcatBя╣ПtBcaBriBя╣П.Bя╣ПisBя╣ПlBanBldBrBstBуБпBуВЛBя╣ПcBя╣ПwBinBouBpeBraBtiBуБжBуБиBя╣ПcoBя╣ПoBя╣ПуАВB[BarBbiBedBerBesBhaBlaBmeBonBpBroBуБДBуБМBуБЧBуБлBуВжBшК▒BшСЙBя╣П?Bя╣П]Bя╣ПdoBя╣ПfBя╣ПgBя╣ПitsBя╣ПsBя╣ПtabbyB,BceBfBheBhoBkBksBleBmoBndBodBorBsticBteBumBуВМBуВТBуВкBхРНBшМОBя╣П (Bя╣П)Bя╣ПalBя╣ПanBя╣ПfelisBя╣ПfoBя╣ПgeneB
я╣ПpatternBя╣ПrBя╣ПsiBя╣ПstBя╣ПwiBя╣Пy*
dtype0*
_output_shapes
:p
М
?SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/valuesConst*Ш
valueОBЛ	p"А                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       *
dtype0	*
_output_shapes
:p
Й
>SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/ConstConst*
_output_shapes
: *
valueB	 R
         *
dtype0	
О
CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
value_dtype0	
╬
[SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2LookupTableImportV2CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table=SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/keys?SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/values*	
Tin0*

Tout0	
а
"SubwordTokenizer/lookup_table/keysConst*╔
value┐B╝pBя╣ПBsBeBiBnBcBlByBя╣ПaBtBя╣П, Bя╣ПtheBuBdBoBaBmBreBуБоBя╣ПbB Bя╣ПandBя╣ПofBя╣ПуАБBatBgBveBя╣ПcatBя╣ПtBcaBriBя╣П.Bя╣ПisBя╣ПlBanBldBrBstBуБпBуВЛBя╣ПcBя╣ПwBinBouBpeBraBtiBуБжBуБиBя╣ПcoBя╣ПoBя╣ПуАВB[BarBbiBedBerBesBhaBlaBmeBonBpBroBуБДBуБМBуБЧBуБлBуВжBшК▒BшСЙBя╣П?Bя╣П]Bя╣ПdoBя╣ПfBя╣ПgBя╣ПitsBя╣ПsBя╣ПtabbyB,BceBfBheBhoBkBksBleBmoBndBodBorBsticBteBumBуВМBуВТBуВкBхРНBшМОBя╣П (Bя╣П)Bя╣ПalBя╣ПanBя╣ПfelisBя╣ПfoBя╣ПgeneB
я╣ПpatternBя╣ПrBя╣ПsiBя╣ПstBя╣ПwiBя╣Пy*
dtype0*
_output_shapes
:p
ё
$SubwordTokenizer/lookup_table/valuesConst*Ш
valueОBЛ	p"А                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       *
dtype0	*
_output_shapes
:p
n
#SubwordTokenizer/lookup_table/ConstConst*
valueB	 R
         *
dtype0	*
_output_shapes
: 
s
(SubwordTokenizer/lookup_table/hash_tableHashTableV2*
value_dtype0	*
_output_shapes
: *
	key_dtype0
т
@SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2LookupTableImportV2(SubwordTokenizer/lookup_table/hash_table"SubwordTokenizer/lookup_table/keys$SubwordTokenizer/lookup_table/values*	
Tin0*

Tout0	
y
context_featurePlaceholder"/device:CPU:0*
dtype0*#
_output_shapes
:         *
shape:         
t

nl_featurePlaceholder"/device:CPU:0*
dtype0*#
_output_shapes
:         *
shape:         
┴
KSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplaceStaticRegexReplace
nl_feature"/device:CPU:0*
rewritea*#
_output_shapes
:         *
patternA
Д
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_1StaticRegexReplaceKSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace"/device:CPU:0*#
_output_shapes
:         *
patternB*
rewriteb
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_2StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_1"/device:CPU:0*
rewritec*#
_output_shapes
:         *
patternC
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_3StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_2"/device:CPU:0*
rewrited*#
_output_shapes
:         *
patternD
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_4StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_3"/device:CPU:0*#
_output_shapes
:         *
patternE*
rewritee
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_5StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_4"/device:CPU:0*
patternF*
rewritef*#
_output_shapes
:         
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_6StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_5"/device:CPU:0*#
_output_shapes
:         *
patternG*
rewriteg
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_7StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_6"/device:CPU:0*#
_output_shapes
:         *
patternH*
rewriteh
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_8StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_7"/device:CPU:0*
rewritei*#
_output_shapes
:         *
patternI
Ж
MSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_9StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_8"/device:CPU:0*
rewritej*#
_output_shapes
:         *
patternJ
З
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_10StaticRegexReplaceMSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_9"/device:CPU:0*
rewritek*#
_output_shapes
:         *
patternK
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_11StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_10"/device:CPU:0*
rewritel*#
_output_shapes
:         *
patternL
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_12StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_11"/device:CPU:0*
rewritem*#
_output_shapes
:         *
patternM
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_13StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_12"/device:CPU:0*#
_output_shapes
:         *
patternN*
rewriten
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_14StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_13"/device:CPU:0*
patternO*
rewriteo*#
_output_shapes
:         
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_15StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_14"/device:CPU:0*
patternP*
rewritep*#
_output_shapes
:         
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_16StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_15"/device:CPU:0*
rewriteq*#
_output_shapes
:         *
patternQ
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_17StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_16"/device:CPU:0*
rewriter*#
_output_shapes
:         *
patternR
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_18StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_17"/device:CPU:0*
rewrites*#
_output_shapes
:         *
patternS
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_19StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_18"/device:CPU:0*
rewritet*#
_output_shapes
:         *
patternT
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_20StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_19"/device:CPU:0*#
_output_shapes
:         *
patternU*
rewriteu
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_21StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_20"/device:CPU:0*
rewritev*#
_output_shapes
:         *
patternV
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_22StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_21"/device:CPU:0*
rewritew*#
_output_shapes
:         *
patternW
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_23StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_22"/device:CPU:0*#
_output_shapes
:         *
patternX*
rewritex
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_24StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_23"/device:CPU:0*
rewritey*#
_output_shapes
:         *
patternY
И
NSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_25StaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_24"/device:CPU:0*
rewritez*#
_output_shapes
:         *
patternZ
Ъ
@SubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplaceStaticRegexReplaceNSubwordTokenizer/tokenize/invertible_tokenize/lower_case/StaticRegexReplace_25"/device:CPU:0*#
_output_shapes
:         **
pattern([^\p{P}\p{Z}])([\p{P}\p{Z}])*
rewrite\1T\2
О
BSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_1StaticRegexReplace@SubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace"/device:CPU:0*
rewrite\1T\2*#
_output_shapes
:         **
pattern([\p{P}\p{Z}])([^\p{P}\p{Z}])
Є
BSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_2StaticRegexReplaceBSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_1"/device:CPU:0*
patternT T*
rewriteT*#
_output_shapes
:         
Р
?SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/ConstConst"/device:CPU:0*
value	B BT*
dtype0*
_output_shapes
: 
ж
ESubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplitStringSplitBSubwordTokenizer/tokenize/invertible_tokenize/StaticRegexReplace_2?SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/Const"/device:CPU:0*<
_output_shapes*
(:         :         :
н
MSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"        
п
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:
п
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:
У
GSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_sliceStridedSliceESubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplitMSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stackOSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_1OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice/stack_2"/device:CPU:0*

begin_mask*
end_mask*#
_output_shapes
:         *
T0	*
Index0*
shrink_axis_mask
и
OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
к
QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
к
QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ю
ISubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1StridedSliceGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplit:2OSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stackQSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_1QSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask*
_output_shapes
: *
T0	*
Index0
ё
TSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastCastGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice"/device:CPU:0*

DstT0*#
_output_shapes
:         *

SrcT0	
ш
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1CastISubwordTokenizer/tokenize/invertible_tokenize/StringSplit/strided_slice_1"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0	
ё
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ShapeShapeTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast"/device:CPU:0*
_output_shapes
:*
T0
╖
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╒
]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdProd^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Shape^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
│
bSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
▐
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdbSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
_output_shapes
: *
T0
Ж
]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/CastCast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0

╣
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╦
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaxMaxTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 
п
^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
_output_shapes
: *
value	B :*
dtype0
╤
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/addAdd\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Max^SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
╨
\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mulMul]SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Cast\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
╤
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximumVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1\SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
T0*
_output_shapes
: 
╒
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimumVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
_output_shapes
: *
T0
▓
`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
dtype0	*
_output_shapes
: *
valueB	 
─
aSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/BincountBincountTSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Minimum`SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:         
м
[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
▌
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CumsumCumsumaSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Bincount[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:         
╕
_SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
м
[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
╛
VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatConcatV2_SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0VSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum[SubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
N*#
_output_shapes
:         *
T0	
r
SubwordTokenizer/tokenize/Add/xConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB	 Bя╣П
n
SubwordTokenizer/tokenize/xConst"/device:CPU:0*
valueB	 Bя╣П*
dtype0*
_output_shapes
: 
╔
SubwordTokenizer/tokenize/Add_1AddSubwordTokenizer/tokenize/xGSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/StringSplit:1"/device:CPU:0*
T0*#
_output_shapes
:         
д
pSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsetsSubwordTokenizer/tokenize/Add_1CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
max_chars_per_token
*
unknown_token[UNK]*
max_bytes_per_wordАА*)
output_row_partition_type
row_splits*
use_unknown_token( *P
_output_shapes>
<:         :         :         :         *
suffix_indicator *
split_unknown_characters(
№
=SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseVSubwordTokenizer/tokenize/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatrSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:1pSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:         :         :
Н
-SubwordTokenizer/tokenize/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
П
/SubwordTokenizer/tokenize/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"       
П
/SubwordTokenizer/tokenize/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:
Л
'SubwordTokenizer/tokenize/strided_sliceStridedSlice=SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparse-SubwordTokenizer/tokenize/strided_slice/stack/SubwordTokenizer/tokenize/strided_slice/stack_1/SubwordTokenizer/tokenize/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:         *
T0	*
Index0
И
/SubwordTokenizer/tokenize/strided_slice_1/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
К
1SubwordTokenizer/tokenize/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
К
1SubwordTokenizer/tokenize/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
ц
)SubwordTokenizer/tokenize/strided_slice_1StridedSlice?SubwordTokenizer/tokenize/RaggedToSparse/RaggedTensorToSparse:2/SubwordTokenizer/tokenize/strided_slice_1/stack1SubwordTokenizer/tokenize/strided_slice_1/stack_11SubwordTokenizer/tokenize/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0	
ф
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/ShapeShapepSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0
Ь
CSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
м
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_sliceStridedSlice5SubwordTokenizer/tokenize/RaggedFromValueRowIds/ShapeCSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stackESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_1ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice/stack_2"/device:CPU:0*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
Э
7SubwordTokenizer/tokenize/RaggedFromValueRowIds/Shape_1Shape'SubwordTokenizer/tokenize/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
╢
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1StridedSlice7SubwordTokenizer/tokenize/RaggedFromValueRowIds/Shape_1ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1/stack_2"/device:CPU:0*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
С
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
з
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/ShapeShape'SubwordTokenizer/tokenize/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	
Б
jSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
r
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_okNoOp"/device:CPU:0
У
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/rankConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
Х
CSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/ShapeConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
Г
lSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
t
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okNoOp"/device:CPU:0
√
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/EqualEqual=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
_output_shapes
: *
T0
Ф
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
Ў
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/AllAllBSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/EqualBSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Const"/device:CPU:0*
_output_shapes
: 
╪
ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
╞
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0
с
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_2Const"/device:CPU:0*W
valueNBL BFx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
у
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Const_3Const"/device:CPU:0*Y
valuePBN BHy (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
р
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0Const"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
╠
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1Const"/device:CPU:0*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
ч
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2Const"/device:CPU:0*W
valueNBL BFx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
щ
QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4Const"/device:CPU:0*Y
valuePBN BHy (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
В
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/AssertAssert@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/AllQSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1QSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2=SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_sliceQSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T

2
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
н
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2/stack_2"/device:CPU:0*
T0	*
Index0*

begin_mask*#
_output_shapes
:         
Ъ
ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
╡
_SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual	LessEqualISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/Const?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2"/device:CPU:0*#
_output_shapes
:         *
T0	
┤
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
┼
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllAll_SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ё
bSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
▀
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:
№
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0*
_output_shapes
: 
с
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitchYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
а
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
Ю
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityoSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
_output_shapes
: *
T0

З
pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentityYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: 
°
mSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
б
{SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tn^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*Д
_classz
xvloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
∙
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
х
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0
В
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Constr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0
ё
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertvSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchvSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
э
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitchYSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllpSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All*
_output_shapes
: : 
╒
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2*2
_output_shapes 
:         :         
е
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fp^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*Д
_classz
xvloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
о
nSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMerge}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1{SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
л
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:         *
T0	*
Index0
Ю
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
й
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_1Const"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
н
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4/stack_2"/device:CPU:0*

begin_mask*#
_output_shapes
:         *
T0	*
Index0
∙
3SubwordTokenizer/tokenize/RaggedFromValueRowIds/subSub?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_3?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_4"/device:CPU:0*
T0	*#
_output_shapes
:         
Ь
KSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
н
aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualKSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/Const3SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub"/device:CPU:0*
T0	*#
_output_shapes
:         
╢
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╦
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllAllaSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
є
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor
с
fSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x >= 0 did not hold element-wise:
Є
fSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_2Const"/device:CPU:0*M
valueDBB B<x (SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 
ч
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/SwitchSwitch[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: : *
T0

д
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tIdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
_output_shapes
: *
T0

в
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fIdentityqSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 
Л
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_idIdentity[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0

№
oSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
й
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tp^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*Ж
_class|
zxloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
¤
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
щ
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
·
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Constt^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*M
valueDBB B<x (SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 
¤
qSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssertxSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchxSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
ї
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
_output_shapes
: : *
T0
*n
_classd
b`loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All
┴
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch3SubwordTokenizer/tokenize/RaggedFromValueRowIds/subrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*F
_class<
:8loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub*2
_output_shapes 
:         :         
н
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentitysSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fr^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*Ж
_class|
zxloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
┤
pSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
N*
_output_shapes
: : *
T0

з
ESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stackConst"/device:CPU:0*
_output_shapes
:*
valueB:
         *
dtype0
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
л
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5StridedSlice'SubwordTokenizer/tokenize/strided_sliceESubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stackGSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_1GSubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5/stack_2"/device:CPU:0*
Index0*
T0	*
end_mask*#
_output_shapes
:         
ё
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/LessLess?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5)SubwordTokenizer/tokenize/strided_slice_1"/device:CPU:0*
T0	*#
_output_shapes
:         
Ъ
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
Є
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/AllAll@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/LessASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Const"/device:CPU:0*
_output_shapes
: 
╫
HSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
─
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_1Const"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
т
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_2Const"/device:CPU:0*
_output_shapes
: *Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0
╠
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/Const_3Const"/device:CPU:0*C
value:B8 B2y (SubwordTokenizer/tokenize/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
У
USubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/SwitchSwitch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
_output_shapes
: : *
T0

ь
WSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tIdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
ъ
WSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fIdentityUSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch"/device:CPU:0*
_output_shapes
: *
T0

╙
VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_idIdentity?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
_output_shapes
: *
T0

─
SSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOpNoOpX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t"/device:CPU:0
╕
aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependencyIdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tT^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*j
_class`
^\loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t*
_output_shapes
: 
┼
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
░
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*;
value2B0 B*Condition x < y did not hold element-wise:*
dtype0*
_output_shapes
: 
╬
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
╕
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4ConstX^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*C
value:B8 B2y (SubwordTokenizer/tokenize/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
Х
USubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/AssertAssert\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2"/device:CPU:0*
T

2		
Е
\SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/SwitchSwitch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/AllVSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All*
_output_shapes
: : 
б
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1Switch?SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*R
_classH
FDloc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5*2
_output_shapes 
:         :         
█
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2Switch)SubwordTokenizer/tokenize/strided_slice_1VSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*<
_class2
0.loc:@SubwordTokenizer/tokenize/strided_slice_1*
_output_shapes
: : 
╝
cSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1IdentityWSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fV^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*j
_class`
^\loc:@SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f*
_output_shapes
: 
р
TSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/MergeMergecSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1aSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
Ъ
ISubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
∙
JSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/ShapeShapepSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
_output_shapes
:
К
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
{
dSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_okNoOp"/device:CPU:0
Э
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/control_dependencyIdentity'SubwordTokenizer/tokenize/strided_sliceK^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_equal/Assert/AssertU^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Mergeo^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Mergeq^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Merge\^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_ok^^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_oke^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_ok"/device:CPU:0*
T0	*:
_class0
.,loc:@SubwordTokenizer/tokenize/strided_slice*#
_output_shapes
:         
╠
4SubwordTokenizer/tokenize/RaggedFromValueRowIds/CastCastBSubwordTokenizer/tokenize/RaggedFromValueRowIds/control_dependency"/device:CPU:0*

SrcT0	*

DstT0*#
_output_shapes
:         
и
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1Cast)SubwordTokenizer/tokenize/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
▒
>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ShapeShape4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
Ч
>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ї
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ProdProd>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Shape>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
У
BSubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
■
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/GreaterGreater=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/ProdBSubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 
╞
=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/CastCast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0

Щ
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
ы
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MaxMax4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 
П
>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
ё
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/addAdd<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Max>SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
Ё
<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/mulMul=SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Cast<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
ё
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MaximumMaximum6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1<SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
T0*
_output_shapes
: 
ї
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/MinimumMinimum6SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast_1@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
Т
@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
─
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/BincountBincount4SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cast@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Minimum@SubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:         
М
;SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
¤
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/CumsumCumsumASubwordTokenizer/tokenize/RaggedFromValueRowIds/bincount/Bincount;SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*
T0	*#
_output_shapes
:         
Ш
?SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
М
;SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
╛
6SubwordTokenizer/tokenize/RaggedFromValueRowIds/concatConcatV2?SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/values_06SubwordTokenizer/tokenize/RaggedFromValueRowIds/Cumsum;SubwordTokenizer/tokenize/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:         
╬
#RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparse6SubwordTokenizer/tokenize/RaggedFromValueRowIds/concatpSubwordTokenizer/tokenize/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:         :         :
е
hash_table_Lookup/hash_bucketStringToHashBucketFast%RaggedToSparse/RaggedTensorToSparse:1"/device:CPU:0*#
_output_shapes
:         *
num_buckets
Л
5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2LookupTableFindV2(SubwordTokenizer/lookup_table/hash_table%RaggedToSparse/RaggedTensorToSparse:1#SubwordTokenizer/lookup_table/Const"/device:CPU:0*	
Tin0*#
_output_shapes
:         *

Tout0	
Щ
3hash_table_Lookup/hash_table_Size/LookupTableSizeV2LookupTableSizeV2(SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
_output_shapes
: 
н
hash_table_Lookup/AddAddhash_table_Lookup/hash_bucket3hash_table_Lookup/hash_table_Size/LookupTableSizeV2"/device:CPU:0*#
_output_shapes
:         *
T0	
┐
hash_table_Lookup/NotEqualNotEqual5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2#SubwordTokenizer/lookup_table/Const"/device:CPU:0*#
_output_shapes
:         *
T0	
╔
hash_table_Lookup/SelectSelecthash_table_Lookup/NotEqual5hash_table_Lookup/hash_table_Lookup/LookupTableFindV2hash_table_Lookup/Add"/device:CPU:0*
T0	*#
_output_shapes
:         
╚
MSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplaceStaticRegexReplacecontext_feature"/device:CPU:0*
patternA*
rewritea*#
_output_shapes
:         
И
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_1StaticRegexReplaceMSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace"/device:CPU:0*
rewriteb*#
_output_shapes
:         *
patternB
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_2StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_1"/device:CPU:0*#
_output_shapes
:         *
patternC*
rewritec
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_3StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_2"/device:CPU:0*
rewrited*#
_output_shapes
:         *
patternD
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_4StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_3"/device:CPU:0*
patternE*
rewritee*#
_output_shapes
:         
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_5StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_4"/device:CPU:0*
patternF*
rewritef*#
_output_shapes
:         
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_6StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_5"/device:CPU:0*
rewriteg*#
_output_shapes
:         *
patternG
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_7StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_6"/device:CPU:0*
patternH*
rewriteh*#
_output_shapes
:         
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_8StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_7"/device:CPU:0*#
_output_shapes
:         *
patternI*
rewritei
К
OSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_9StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_8"/device:CPU:0*
rewritej*#
_output_shapes
:         *
patternJ
Л
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_10StaticRegexReplaceOSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_9"/device:CPU:0*#
_output_shapes
:         *
patternK*
rewritek
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_11StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_10"/device:CPU:0*
rewritel*#
_output_shapes
:         *
patternL
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_12StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_11"/device:CPU:0*
patternM*
rewritem*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_13StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_12"/device:CPU:0*
patternN*
rewriten*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_14StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_13"/device:CPU:0*
patternO*
rewriteo*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_15StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_14"/device:CPU:0*
patternP*
rewritep*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_16StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_15"/device:CPU:0*
rewriteq*#
_output_shapes
:         *
patternQ
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_17StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_16"/device:CPU:0*
rewriter*#
_output_shapes
:         *
patternR
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_18StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_17"/device:CPU:0*
rewrites*#
_output_shapes
:         *
patternS
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_19StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_18"/device:CPU:0*
patternT*
rewritet*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_20StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_19"/device:CPU:0*
rewriteu*#
_output_shapes
:         *
patternU
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_21StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_20"/device:CPU:0*
rewritev*#
_output_shapes
:         *
patternV
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_22StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_21"/device:CPU:0*
rewritew*#
_output_shapes
:         *
patternW
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_23StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_22"/device:CPU:0*
rewritex*#
_output_shapes
:         *
patternX
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_24StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_23"/device:CPU:0*
patternY*
rewritey*#
_output_shapes
:         
М
PSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_25StaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_24"/device:CPU:0*
rewritez*#
_output_shapes
:         *
patternZ
Ю
BSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplaceStaticRegexReplacePSubwordTokenizer/tokenize_1/invertible_tokenize/lower_case/StaticRegexReplace_25"/device:CPU:0**
pattern([^\p{P}\p{Z}])([\p{P}\p{Z}])*
rewrite\1T\2*#
_output_shapes
:         
Т
DSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_1StaticRegexReplaceBSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace"/device:CPU:0*
rewrite\1T\2*#
_output_shapes
:         **
pattern([\p{P}\p{Z}])([^\p{P}\p{Z}])
Ў
DSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_2StaticRegexReplaceDSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_1"/device:CPU:0*
patternT T*
rewriteT*#
_output_shapes
:         
Т
ASubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B BT
м
GSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplitStringSplitDSubwordTokenizer/tokenize_1/invertible_tokenize/StaticRegexReplace_2ASubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/Const"/device:CPU:0*<
_output_shapes*
(:         :         :
п
OSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
▒
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"       
▒
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_2Const"/device:CPU:0*
valueB"      *
dtype0*
_output_shapes
:
Э
ISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_sliceStridedSliceGSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplitOSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stackQSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_1QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:         *
Index0*
T0	
к
QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
м
SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
м
SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
°
KSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1StridedSliceISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplit:2QSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stackSSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_1SSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1/stack_2"/device:CPU:0*
_output_shapes
: *
T0	*
Index0*
shrink_axis_mask
ї
VSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastCastISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice"/device:CPU:0*

DstT0*#
_output_shapes
:         *

SrcT0	
ь
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1CastKSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
ї
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ShapeShapeVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
╣
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
█
_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProdProd`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Shape`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
╡
dSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
ф
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/GreaterGreater_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/ProddSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
_output_shapes
: *
T0
К
_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/CastCastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

SrcT0
*

DstT0*
_output_shapes
: 
╗
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╤
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaxMaxVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
_output_shapes
: *
T0
▒
`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
╫
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/addAdd^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Max`SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
_output_shapes
: *
T0
╓
^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mulMul_SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Cast^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
╫
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MaximumMaximumXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1^SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
_output_shapes
: *
T0
█
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumMinimumXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cast_1bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
┤
bSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
valueB	 *
dtype0	*
_output_shapes
: 
╠
cSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/BincountBincountVSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CastbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/MinimumbSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*
T0	*#
_output_shapes
:         
о
]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
у
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/CumsumCumsumcSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/bincount/Bincount]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*#
_output_shapes
:         *
T0	
║
aSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
о
]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
╞
XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concatConcatV2aSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/values_0XSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/Cumsum]SubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concat/axis"/device:CPU:0*#
_output_shapes
:         *
T0	*
N
t
!SubwordTokenizer/tokenize_1/Add/xConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB	 Bя╣П
p
SubwordTokenizer/tokenize_1/xConst"/device:CPU:0*
valueB	 Bя╣П*
dtype0*
_output_shapes
: 
╧
!SubwordTokenizer/tokenize_1/Add_1AddSubwordTokenizer/tokenize_1/xISubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/StringSplit:1"/device:CPU:0*
T0*#
_output_shapes
:         
и
rSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsetsWordpieceTokenizeWithOffsets!SubwordTokenizer/tokenize_1/Add_1CSubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
suffix_indicator *
split_unknown_characters(*
unknown_token[UNK]*
max_chars_per_token
*
max_bytes_per_wordАА*)
output_row_partition_type
row_splits*
use_unknown_token( *P
_output_shapes>
<:         :         :         :         
Д
?SubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparseRaggedTensorToSparseXSubwordTokenizer/tokenize_1/invertible_tokenize/StringSplit/RaggedFromValueRowIds/concattSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets:1rSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
RAGGED_RANK*<
_output_shapes*
(:         :         :
П
/SubwordTokenizer/tokenize_1/strided_slice/stackConst"/device:CPU:0*
valueB"        *
dtype0*
_output_shapes
:
С
1SubwordTokenizer/tokenize_1/strided_slice/stack_1Const"/device:CPU:0*
valueB"       *
dtype0*
_output_shapes
:
С
1SubwordTokenizer/tokenize_1/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB"      
Х
)SubwordTokenizer/tokenize_1/strided_sliceStridedSlice?SubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparse/SubwordTokenizer/tokenize_1/strided_slice/stack1SubwordTokenizer/tokenize_1/strided_slice/stack_11SubwordTokenizer/tokenize_1/strided_slice/stack_2"/device:CPU:0*
Index0*
T0	*
shrink_axis_mask*

begin_mask*
end_mask*#
_output_shapes
:         
К
1SubwordTokenizer/tokenize_1/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
М
3SubwordTokenizer/tokenize_1/strided_slice_1/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
М
3SubwordTokenizer/tokenize_1/strided_slice_1/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
Ё
+SubwordTokenizer/tokenize_1/strided_slice_1StridedSliceASubwordTokenizer/tokenize_1/RaggedToSparse/RaggedTensorToSparse:21SubwordTokenizer/tokenize_1/strided_slice_1/stack3SubwordTokenizer/tokenize_1/strided_slice_1/stack_13SubwordTokenizer/tokenize_1/strided_slice_1/stack_2"/device:CPU:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0	
ш
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/ShapeShaperSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
_output_shapes
:*
T0
Ю
ESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
╢
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceStridedSlice7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/ShapeESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stackGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_1GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice/stack_2"/device:CPU:0*
shrink_axis_mask*
_output_shapes
: *
Index0*
T0
б
9SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Shape_1Shape)SubwordTokenizer/tokenize_1/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_1Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_2Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB:
└
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1StridedSlice9SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Shape_1GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1/stack_2"/device:CPU:0*
T0*
Index0*
shrink_axis_mask*
_output_shapes
: 
У
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
л
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/ShapeShape)SubwordTokenizer/tokenize_1/strided_slice"/device:CPU:0*
_output_shapes
:*
T0	
Г
lSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
t
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_okNoOp"/device:CPU:0
Х
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/rankConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
Ч
ESubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/ShapeConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
Е
nSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
v
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okNoOp"/device:CPU:0
Б
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/EqualEqual?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
_output_shapes
: *
T0
Ц
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/ConstConst"/device:CPU:0*
valueB *
dtype0*
_output_shapes
: 
№
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/AllAllDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/EqualDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Const"/device:CPU:0*
_output_shapes
: 
┌
KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
╚
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *<
value3B1 B+Condition x == y did not hold element-wise:
х
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
ч
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Const_3Const"/device:CPU:0*
_output_shapes
: *[
valueRBP BJy (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0
т
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0Const"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
╬
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1Const"/device:CPU:0*
_output_shapes
: *<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0
ы
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2Const"/device:CPU:0*Y
valuePBN BHx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice:0) = *
dtype0*
_output_shapes
: 
э
SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4Const"/device:CPU:0*[
valueRBP BJy (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
Т
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/AssertAssertBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/AllSSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_0SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_1SSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_2?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_sliceSSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/Assert/data_4ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_1"/device:CPU:0*
T

2
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stackConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_1Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
╖
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2/stack_2"/device:CPU:0*
T0	*
Index0*

begin_mask*#
_output_shapes
:         
Ь
KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
╗
aSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual	LessEqualKSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/ConstASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2"/device:CPU:0*
T0	*#
_output_shapes
:         
╢
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╦
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllAllaSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/LessEqual]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
є
dSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
с
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
А
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/Const_2Const"/device:CPU:0*
dtype0*
_output_shapes
: *[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0) = 
ч
qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/SwitchSwitch[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
д
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
в
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fIdentityqSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
_output_shapes
: *
T0

Л
rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_idIdentity[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0

№
oSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOpNoOpt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
й
}SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependencyIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_tp^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
_output_shapes
: *
T0
*Ж
_class|
zxloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t
¤
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
щ
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
И
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2Constt^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0) = *
dtype0
¤
qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/AssertAssertxSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchxSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
ї
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/AllrSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
_output_shapes
: : *
T0
*n
_classd
b`loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All
▌
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2*2
_output_shapes 
:         :         
н
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_fr^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*Ж
_class|
zxloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
┤
pSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/MergeMergeSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1}SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stackConst"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
╡
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:         *
T0	*
Index0
а
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stackConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
л
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_1Const"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_2Const"/device:CPU:0*
_output_shapes
:*
valueB:*
dtype0
╖
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4/stack_2"/device:CPU:0*
T0	*
Index0*

begin_mask*#
_output_shapes
:         
 
5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/subSubASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_3ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_4"/device:CPU:0*
T0	*#
_output_shapes
:         
Ю
MSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/ConstConst"/device:CPU:0*
value	B	 R *
dtype0	*
_output_shapes
: 
│
cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual	LessEqualMSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/Const5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub"/device:CPU:0*
T0	*#
_output_shapes
:         
╕
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/ConstConst"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
╤
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AllAllcSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/LessEqual_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Const"/device:CPU:0*
_output_shapes
: 
ї
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
у
hSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_1Const"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
Ў
hSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/Const_2Const"/device:CPU:0*O
valueFBD B>x (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0) = *
dtype0*
_output_shapes
: 
э
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/SwitchSwitch]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
T0
*
_output_shapes
: : 
и
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tIdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
ж
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_fIdentitysSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Switch"/device:CPU:0*
_output_shapes
: *
T0

П
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_idIdentity]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All"/device:CPU:0*
_output_shapes
: *
T0

А
qSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOpNoOpv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t"/device:CPU:0
▒
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependencyIdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_tr^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*И
_class~
|zloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
Б
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
э
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*<
value3B1 B+Condition x >= 0 did not hold element-wise:*
dtype0*
_output_shapes
: 
А
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2Constv^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *O
valueFBD B>x (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0) = *
dtype0
Й
sSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/AssertAssertzSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchzSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1"/device:CPU:0*
T
2	
¤
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/SwitchSwitch]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/AlltSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*p
_classf
dbloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All*
_output_shapes
: : 
╔
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1Switch5SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/subtSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id"/device:CPU:0*
T0	*H
_class>
<:loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub*2
_output_shapes 
:         :         
╢
БSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1IdentityuSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_ft^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert"/device:CPU:0*
_output_shapes
: *
T0
*И
_class~
|zloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f
╗
rSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/MergeMergeБSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
й
GSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stackConst"/device:CPU:0*
valueB:
         *
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_1Const"/device:CPU:0*
valueB: *
dtype0*
_output_shapes
:
в
ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_2Const"/device:CPU:0*
valueB:*
dtype0*
_output_shapes
:
╡
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5StridedSlice)SubwordTokenizer/tokenize_1/strided_sliceGSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stackISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_1ISubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5/stack_2"/device:CPU:0*
end_mask*#
_output_shapes
:         *
T0	*
Index0
ў
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/LessLessASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5+SubwordTokenizer/tokenize_1/strided_slice_1"/device:CPU:0*
T0	*#
_output_shapes
:         
Ь
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/ConstConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
°
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllAllBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/LessCSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Const"/device:CPU:0*
_output_shapes
: 
┘
JSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/ConstConst"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
╞
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
: *;
value2B0 B*Condition x < y did not hold element-wise:
ц
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_2Const"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
╨
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/Const_3Const"/device:CPU:0*E
value<B: B4y (SubwordTokenizer/tokenize_1/strided_slice_1:0) = *
dtype0*
_output_shapes
: 
Щ
WSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/SwitchSwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
_output_shapes
: : *
T0

Ё
YSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tIdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch:1"/device:CPU:0*
T0
*
_output_shapes
: 
ю
YSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fIdentityWSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Switch"/device:CPU:0*
T0
*
_output_shapes
: 
╫
XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_idIdentityASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All"/device:CPU:0*
T0
*
_output_shapes
: 
╚
USubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOpNoOpZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t"/device:CPU:0
└
cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependencyIdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_tV^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/NoOp"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t*
_output_shapes
: 
╔
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*P
valueGBE B?Arguments to from_value_rowids do not form a valid RaggedTensor*
dtype0*
_output_shapes
: 
┤
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
dtype0*
_output_shapes
: *;
value2B0 B*Condition x < y did not hold element-wise:
╘
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*[
valueRBP BJx (SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0) = *
dtype0*
_output_shapes
: 
╛
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4ConstZ^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f"/device:CPU:0*
_output_shapes
: *E
value<B: B4y (SubwordTokenizer/tokenize_1/strided_slice_1:0) = *
dtype0
е
WSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/AssertAssert^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2"/device:CPU:0*
T

2		
Н
^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/SwitchSwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/AllXSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*
T0
*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All*
_output_shapes
: : 
й
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1SwitchASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*2
_output_shapes 
:         :         *
T0	*T
_classJ
HFloc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5
у
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2Switch+SubwordTokenizer/tokenize_1/strided_slice_1XSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id"/device:CPU:0*>
_class4
20loc:@SubwordTokenizer/tokenize_1/strided_slice_1*
_output_shapes
: : *
T0	
─
eSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1IdentityYSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_fX^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert"/device:CPU:0*
T0
*l
_classb
`^loc:@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f*
_output_shapes
: 
ц
VSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/MergeMergeeSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1cSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency"/device:CPU:0*
T0
*
N*
_output_shapes
: : 
Ь
KSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/rankConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
¤
LSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/ShapeShaperSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
T0*
_output_shapes
:
М
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/assert_type/statically_determined_correct_typeNoOp"/device:CPU:0
}
fSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_okNoOp"/device:CPU:0
▒
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/control_dependencyIdentity)SubwordTokenizer/tokenize_1/strided_sliceM^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_equal/Assert/AssertW^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Mergeq^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Merges^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Merge^^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank/static_checks_determined_all_ok`^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_1/static_checks_determined_all_okg^SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_rank_at_least/static_checks_determined_all_ok"/device:CPU:0*
T0	*<
_class2
0.loc:@SubwordTokenizer/tokenize_1/strided_slice*#
_output_shapes
:         
╨
6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastCastDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/control_dependency"/device:CPU:0*

DstT0*#
_output_shapes
:         *

SrcT0	
м
8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1Cast+SubwordTokenizer/tokenize_1/strided_slice_1"/device:CPU:0*

SrcT0	*

DstT0*
_output_shapes
: 
╡
@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ShapeShape6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast"/device:CPU:0*
T0*
_output_shapes
:
Щ
@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ConstConst"/device:CPU:0*
_output_shapes
:*
valueB: *
dtype0
√
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ProdProd@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Shape@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const"/device:CPU:0*
T0*
_output_shapes
: 
Х
DSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater/yConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Д
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/GreaterGreater?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/ProdDSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater/y"/device:CPU:0*
T0*
_output_shapes
: 
╩
?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/CastCastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Greater"/device:CPU:0*

DstT0*
_output_shapes
: *

SrcT0

Ы
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_1Const"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB: 
ё
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MaxMax6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_1"/device:CPU:0*
T0*
_output_shapes
: 
С
@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add/yConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
ў
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/addAdd>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Max@SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add/y"/device:CPU:0*
T0*
_output_shapes
: 
Ў
>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/mulMul?SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Cast>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/add"/device:CPU:0*
T0*
_output_shapes
: 
ў
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MaximumMaximum8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1>SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/mul"/device:CPU:0*
_output_shapes
: *
T0
√
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MinimumMinimum8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cast_1BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Maximum"/device:CPU:0*
T0*
_output_shapes
: 
Ф
BSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_2Const"/device:CPU:0*
dtype0	*
_output_shapes
: *
valueB	 
╠
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/BincountBincount6SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CastBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/MinimumBSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Const_2"/device:CPU:0*#
_output_shapes
:         *
T0	
О
=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum/axisConst"/device:CPU:0*
_output_shapes
: *
value	B : *
dtype0
Г
8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/CumsumCumsumCSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/bincount/Bincount=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum/axis"/device:CPU:0*#
_output_shapes
:         *
T0	
Ъ
ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/values_0Const"/device:CPU:0*
valueB	R *
dtype0	*
_output_shapes
:
О
=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/axisConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 
╞
8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concatConcatV2ASubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/values_08SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/Cumsum=SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concat/axis"/device:CPU:0*
T0	*
N*#
_output_shapes
:         
╘
%RaggedToSparse_1/RaggedTensorToSparseRaggedTensorToSparse8SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/concatrSubwordTokenizer/tokenize_1/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets/WordpieceTokenizeWithOffsets"/device:CPU:0*
RAGGED_RANK*<
_output_shapes*
(:         :         :*
T0
й
hash_table_Lookup_1/hash_bucketStringToHashBucketFast'RaggedToSparse_1/RaggedTensorToSparse:1"/device:CPU:0*#
_output_shapes
:         *
num_buckets
П
7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2LookupTableFindV2(SubwordTokenizer/lookup_table/hash_table'RaggedToSparse_1/RaggedTensorToSparse:1#SubwordTokenizer/lookup_table/Const"/device:CPU:0*	
Tin0*#
_output_shapes
:         *

Tout0	
Ы
5hash_table_Lookup_1/hash_table_Size/LookupTableSizeV2LookupTableSizeV2(SubwordTokenizer/lookup_table/hash_table"/device:CPU:0*
_output_shapes
: 
│
hash_table_Lookup_1/AddAddhash_table_Lookup_1/hash_bucket5hash_table_Lookup_1/hash_table_Size/LookupTableSizeV2"/device:CPU:0*#
_output_shapes
:         *
T0	
├
hash_table_Lookup_1/NotEqualNotEqual7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2#SubwordTokenizer/lookup_table/Const"/device:CPU:0*#
_output_shapes
:         *
T0	
╤
hash_table_Lookup_1/SelectSelecthash_table_Lookup_1/NotEqual7hash_table_Lookup_1/hash_table_Lookup/LookupTableFindV2hash_table_Lookup_1/Add"/device:CPU:0*
T0	*#
_output_shapes
:         
k
SparseToDense/default_valueConst"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
О
SparseToDenseSparseToDense%RaggedToSparse_1/RaggedTensorToSparse'RaggedToSparse_1/RaggedTensorToSparse:2'RaggedToSparse_1/RaggedTensorToSparse:1SparseToDense/default_value"/device:CPU:0*
Tindices0	*
T0*0
_output_shapes
:                  
k
tokensIdentitySparseToDense"/device:CPU:0*0
_output_shapes
:                  *
T0
╤
Fembedding_matrices/subword_embeddings/Initializer/random_uniform/shapeConst*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB"x      *
dtype0*
_output_shapes
:
├
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/minConst*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB
 *
╫#╝*
dtype0*
_output_shapes
: 
├
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/maxConst*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
valueB
 *
╫#<*
dtype0*
_output_shapes
: 
Ч
Nembedding_matrices/subword_embeddings/Initializer/random_uniform/RandomUniformRandomUniformFembedding_matrices/subword_embeddings/Initializer/random_uniform/shape*
dtype0*
_output_shapes

:x*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings
▓
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/subSubDembedding_matrices/subword_embeddings/Initializer/random_uniform/maxDembedding_matrices/subword_embeddings/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
_output_shapes
: 
─
Dembedding_matrices/subword_embeddings/Initializer/random_uniform/mulMulNembedding_matrices/subword_embeddings/Initializer/random_uniform/RandomUniformDembedding_matrices/subword_embeddings/Initializer/random_uniform/sub*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
_output_shapes

:x*
T0
╢
@embedding_matrices/subword_embeddings/Initializer/random_uniformAddDembedding_matrices/subword_embeddings/Initializer/random_uniform/mulDembedding_matrices/subword_embeddings/Initializer/random_uniform/min*
_output_shapes

:x*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings
р
%embedding_matrices/subword_embeddingsVarHandleOp*6
shared_name'%embedding_matrices/subword_embeddings*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
shape
:x*
dtype0*
_output_shapes
: 
Ы
Fembedding_matrices/subword_embeddings/IsInitialized/VarIsInitializedOpVarIsInitializedOp%embedding_matrices/subword_embeddings*
_output_shapes
: 
Ё
,embedding_matrices/subword_embeddings/AssignAssignVariableOp%embedding_matrices/subword_embeddings@embedding_matrices/subword_embeddings/Initializer/random_uniform*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
dtype0
┘
9embedding_matrices/subword_embeddings/Read/ReadVariableOpReadVariableOp%embedding_matrices/subword_embeddings*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
dtype0*
_output_shapes

:x
t
2embed_context/embed_nl/SparseToDense/default_valueConst*
dtype0	*
_output_shapes
: *
value	B	 Rw
а
$embed_context/embed_nl/SparseToDenseSparseToDense%RaggedToSparse_1/RaggedTensorToSparse'RaggedToSparse_1/RaggedTensorToSparse:2hash_table_Lookup_1/Select2embed_context/embed_nl/SparseToDense/default_value*
Tindices0	*
T0	*0
_output_shapes
:                  
c
!embed_context/embed_nl/NotEqual/yConst*
value	B	 Rw*
dtype0	*
_output_shapes
: 
п
embed_context/embed_nl/NotEqualNotEqual$embed_context/embed_nl/SparseToDense!embed_context/embed_nl/NotEqual/y*
T0	*0
_output_shapes
:                  
Ж
2embed_context/embed_nl/EmbeddingLookupUnique/ShapeShape$embed_context/embed_nl/SparseToDense*
_output_shapes
:*
T0	
|
2embed_context/embed_nl/EmbeddingLookupUnique/ConstConst*
valueB: *
dtype0*
_output_shapes
:
╫
1embed_context/embed_nl/EmbeddingLookupUnique/ProdProd2embed_context/embed_nl/EmbeddingLookupUnique/Shape2embed_context/embed_nl/EmbeddingLookupUnique/Const*
T0*
_output_shapes
:*
	keep_dims(
╞
4embed_context/embed_nl/EmbeddingLookupUnique/ReshapeReshape$embed_context/embed_nl/SparseToDense1embed_context/embed_nl/EmbeddingLookupUnique/Prod*#
_output_shapes
:         *
T0	
░
3embed_context/embed_nl/EmbeddingLookupUnique/UniqueUnique4embed_context/embed_nl/EmbeddingLookupUnique/Reshape*
T0	*2
_output_shapes 
:         :         
л
=embed_context/embed_nl/EmbeddingLookupUnique/embedding_lookupResourceGather%embedding_matrices/subword_embeddings3embed_context/embed_nl/EmbeddingLookupUnique/Unique*8
_class.
,*loc:@embedding_matrices/subword_embeddings*
Tindices0	*
dtype0*'
_output_shapes
:         
¤
Fembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/IdentityIdentity=embed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup*8
_class.
,*loc:@embedding_matrices/subword_embeddings*'
_output_shapes
:         *
T0
╬
Hembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1IdentityFembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity*
T0*'
_output_shapes
:         
б
\embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scaleConst*
_output_shapes
: *
valueB
 *═╠╠=*
dtype0
╥
]embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2LossL2LossHembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
_output_shapes
: *
T0
╗
Vembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizerMul\embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scale]embed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2Loss*
_output_shapes
: *
T0
╠
Gembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penaltyIdentityVembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer*
T0*
_output_shapes
: 
|
:embed_context/embed_nl/EmbeddingLookupUnique/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╙
5embed_context/embed_nl/EmbeddingLookupUnique/GatherV2GatherV2Hembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_15embed_context/embed_nl/EmbeddingLookupUnique/Unique:1:embed_context/embed_nl/EmbeddingLookupUnique/GatherV2/axis*'
_output_shapes
:         *
Taxis0*
Tindices0*
Tparams0
м
4embed_context/embed_nl/EmbeddingLookupUnique/Shape_1ShapeHembed_context/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
:
К
@embed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
М
Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
М
Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
М
:embed_context/embed_nl/EmbeddingLookupUnique/strided_sliceStridedSlice4embed_context/embed_nl/EmbeddingLookupUnique/Shape_1@embed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stackBembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Bembed_context/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2*
Index0*
T0*
end_mask*
_output_shapes
:
z
8embed_context/embed_nl/EmbeddingLookupUnique/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ч
3embed_context/embed_nl/EmbeddingLookupUnique/concatConcatV22embed_context/embed_nl/EmbeddingLookupUnique/Shape:embed_context/embed_nl/EmbeddingLookupUnique/strided_slice8embed_context/embed_nl/EmbeddingLookupUnique/concat/axis*
_output_shapes
:*
T0*
N
ь
6embed_context/embed_nl/EmbeddingLookupUnique/Reshape_1Reshape5embed_context/embed_nl/EmbeddingLookupUnique/GatherV23embed_context/embed_nl/EmbeddingLookupUnique/concat*
T0*4
_output_shapes"
 :                  
a
embed_context/embed_nl/mul/yConst*
valueB
 *╫│▌?*
dtype0*
_output_shapes
: 
╢
embed_context/embed_nl/mulMul6embed_context/embed_nl/EmbeddingLookupUnique/Reshape_1embed_context/embed_nl/mul/y*
T0*4
_output_shapes"
 :                  
╟
Aembed_nl/positional_embeddings/0/Initializer/random_uniform/shapeConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB"      *
dtype0*
_output_shapes
:
╣
?embed_nl/positional_embeddings/0/Initializer/random_uniform/minConst*
_output_shapes
: *3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *bЧ'┐*
dtype0
╣
?embed_nl/positional_embeddings/0/Initializer/random_uniform/maxConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *bЧ'?*
dtype0*
_output_shapes
: 
И
Iembed_nl/positional_embeddings/0/Initializer/random_uniform/RandomUniformRandomUniformAembed_nl/positional_embeddings/0/Initializer/random_uniform/shape*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:*
T0
Ю
?embed_nl/positional_embeddings/0/Initializer/random_uniform/subSub?embed_nl/positional_embeddings/0/Initializer/random_uniform/max?embed_nl/positional_embeddings/0/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes
: 
░
?embed_nl/positional_embeddings/0/Initializer/random_uniform/mulMulIembed_nl/positional_embeddings/0/Initializer/random_uniform/RandomUniform?embed_nl/positional_embeddings/0/Initializer/random_uniform/sub*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes

:
в
;embed_nl/positional_embeddings/0/Initializer/random_uniformAdd?embed_nl/positional_embeddings/0/Initializer/random_uniform/mul?embed_nl/positional_embeddings/0/Initializer/random_uniform/min*
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes

:
╤
 embed_nl/positional_embeddings/0VarHandleOp*1
shared_name" embed_nl/positional_embeddings/0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
shape
:*
dtype0*
_output_shapes
: 
С
Aembed_nl/positional_embeddings/0/IsInitialized/VarIsInitializedOpVarIsInitializedOp embed_nl/positional_embeddings/0*
_output_shapes
: 
▄
'embed_nl/positional_embeddings/0/AssignAssignVariableOp embed_nl/positional_embeddings/0;embed_nl/positional_embeddings/0/Initializer/random_uniform*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
dtype0
╩
4embed_nl/positional_embeddings/0/Read/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:
╗
Aembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/scaleConst*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
▓
Qembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:
ї
Bembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2LossL2LossQembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*3
_class)
'%loc:@embed_nl/positional_embeddings/0
Я
;embed_nl/positional_embeddings/0/Regularizer/l2_regularizerMulAembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/scaleBembed_nl/positional_embeddings/0/Regularizer/l2_regularizer/L2Loss*3
_class)
'%loc:@embed_nl/positional_embeddings/0*
_output_shapes
: *
T0

5embed_context/embed_nl/add_positional_embedding/ShapeShapeembed_context/embed_nl/mul*
T0*
_output_shapes
:
Н
Cembed_context/embed_nl/add_positional_embedding/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
П
Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
П
Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
=embed_context/embed_nl/add_positional_embedding/strided_sliceStridedSlice5embed_context/embed_nl/add_positional_embedding/ShapeCembed_context/embed_nl/add_positional_embedding/strided_slice/stackEembed_context/embed_nl/add_positional_embedding/strided_slice/stack_1Eembed_context/embed_nl/add_positional_embedding/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
|
:embed_context/embed_nl/add_positional_embedding/floordiv/yConst*
_output_shapes
: *
value	B :*
dtype0
р
8embed_context/embed_nl/add_positional_embedding/floordivFloorDiv=embed_context/embed_nl/add_positional_embedding/strided_slice:embed_context/embed_nl/add_positional_embedding/floordiv/y*
_output_shapes
: *
T0
w
5embed_context/embed_nl/add_positional_embedding/add/xConst*
value	B :*
dtype0*
_output_shapes
: 
╠
3embed_context/embed_nl/add_positional_embedding/addAdd5embed_context/embed_nl/add_positional_embedding/add/x8embed_context/embed_nl/add_positional_embedding/floordiv*
_output_shapes
: *
T0
д
Cembed_context/embed_nl/add_positional_embedding/Tile/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:
В
@embed_context/embed_nl/add_positional_embedding/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
ы
>embed_context/embed_nl/add_positional_embedding/Tile/multiplesPack3embed_context/embed_nl/add_positional_embedding/add@embed_context/embed_nl/add_positional_embedding/Tile/multiples/1*
_output_shapes
:*
T0*
N
є
4embed_context/embed_nl/add_positional_embedding/TileTileCembed_context/embed_nl/add_positional_embedding/Tile/ReadVariableOp>embed_context/embed_nl/add_positional_embedding/Tile/multiples*
T0*'
_output_shapes
:         
П
Eembed_context/embed_nl/add_positional_embedding/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
╝
Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_1Pack=embed_context/embed_nl/add_positional_embedding/strided_slice*
_output_shapes
:*
T0*
N
С
Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
п
?embed_context/embed_nl/add_positional_embedding/strided_slice_1StridedSlice4embed_context/embed_nl/add_positional_embedding/TileEembed_context/embed_nl/add_positional_embedding/strided_slice_1/stackGembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_1Gembed_context/embed_nl/add_positional_embedding/strided_slice_1/stack_2*

begin_mask*'
_output_shapes
:         *
T0*
Index0
А
>embed_context/embed_nl/add_positional_embedding/ExpandDims/dimConst*
value	B : *
dtype0*
_output_shapes
: 
 
:embed_context/embed_nl/add_positional_embedding/ExpandDims
ExpandDims?embed_context/embed_nl/add_positional_embedding/strided_slice_1>embed_context/embed_nl/add_positional_embedding/ExpandDims/dim*+
_output_shapes
:         *
T0
╙
5embed_context/embed_nl/add_positional_embedding/add_1Addembed_context/embed_nl/mul:embed_context/embed_nl/add_positional_embedding/ExpandDims*4
_output_shapes"
 :                  *
T0
─
:embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
х
(embed_nl/layer_norm_input/LayerNorm/betaVarHandleOp*9
shared_name*(embed_nl/layer_norm_input/LayerNorm/beta*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
б
Iembed_nl/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp(embed_nl/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
є
/embed_nl/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp(embed_nl/layer_norm_input/LayerNorm/beta:embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta*
dtype0
▐
<embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:*;
_class1
/-loc:@embed_nl/layer_norm_input/LayerNorm/beta
┼
:embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
ш
)embed_nl/layer_norm_input/LayerNorm/gammaVarHandleOp*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: *:
shared_name+)embed_nl/layer_norm_input/LayerNorm/gamma
г
Jembed_nl/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp)embed_nl/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
Ў
0embed_nl/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma:embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0
с
=embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*<
_class2
0.loc:@embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ъ
Pembed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Я
>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/meanMean5embed_context/embed_nl/add_positional_embedding/add_1Pembed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indices*
T0*4
_output_shapes"
 :                  *
	keep_dims(
╒
Fembed_context/embed_nl/layer_norm_input/LayerNorm/moments/StopGradientStopGradient>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean*
T0*4
_output_shapes"
 :                  
Ю
Kembed_context/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifference5embed_context/embed_nl/add_positional_embedding/add_1Fembed_context/embed_nl/layer_norm_input/LayerNorm/moments/StopGradient*4
_output_shapes"
 :                  *
T0
Ю
Tembed_context/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
╜
Bembed_context/embed_nl/layer_norm_input/LayerNorm/moments/varianceMeanKembed_context/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceTembed_context/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indices*4
_output_shapes"
 :                  *
	keep_dims(*
T0
Ж
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
М
?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/addAddBembed_context/embed_nl/layer_norm_input/LayerNorm/moments/varianceAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/y*
T0*4
_output_shapes"
 :                  
╩
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add*
T0*4
_output_shapes"
 :                  
┤
Nembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ш
?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mulMulAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtNembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :                  
 
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1Mul5embed_context/embed_nl/add_positional_embedding/add_1?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :                  
И
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2Mul>embed_context/embed_nl/layer_norm_input/LayerNorm/moments/mean?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :                  
п
Jembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
_output_shapes
:*
dtype0
Ф
?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/subSubJembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2*4
_output_shapes"
 :                  *
T0
Л
Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1AddAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1?embed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/sub*4
_output_shapes"
 :                  *
T0
д
1embed_context/embed_nl/self_attention_head_1/CastCastembed_context/embed_nl/NotEqual*

SrcT0
*

DstT0*0
_output_shapes
:                  
г
2embed_context/embed_nl/self_attention_head_1/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0
К
@embed_context/embed_nl/self_attention_head_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
М
Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
М
Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
О
:embed_context/embed_nl/self_attention_head_1/strided_sliceStridedSlice2embed_context/embed_nl/self_attention_head_1/Shape@embed_context/embed_nl/self_attention_head_1/strided_slice/stackBembed_context/embed_nl/self_attention_head_1/strided_slice/stack_1Bembed_context/embed_nl/self_attention_head_1/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
_output_shapes
: 
е
4embed_context/embed_nl/self_attention_head_1/Shape_1ShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0
М
Bembed_context/embed_nl/self_attention_head_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
О
Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
О
Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ш
<embed_context/embed_nl/self_attention_head_1/strided_slice_1StridedSlice4embed_context/embed_nl/self_attention_head_1/Shape_1Bembed_context/embed_nl/self_attention_head_1/strided_slice_1/stackDembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_1Dembed_context/embed_nl/self_attention_head_1/strided_slice_1/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
▀
Membed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/shapeConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB"      *
dtype0*
_output_shapes
:
╤
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/minConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *  А┐*
dtype0*
_output_shapes
: 
╤
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/maxConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
м
Uembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/RandomUniformRandomUniformMembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/shape*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:*
T0
╬
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/subSubKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/maxKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights
р
Kembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/mulMulUembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/RandomUniformKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/sub*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes

:
╥
Gembed_nl/self_attention_head_1/query_weights/Initializer/random_uniformAddKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/mulKembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform/min*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes

:
ї
,embed_nl/self_attention_head_1/query_weightsVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *=
shared_name.,embed_nl/self_attention_head_1/query_weights*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights
й
Membed_nl/self_attention_head_1/query_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp,embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
М
3embed_nl/self_attention_head_1/query_weights/AssignAssignVariableOp,embed_nl/self_attention_head_1/query_weightsGembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform*
dtype0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights
ю
@embed_nl/self_attention_head_1/query_weights/Read/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:
╙
Membed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/scaleConst*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╩
]embed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:
Щ
Nembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2LossL2Loss]embed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
╧
Gembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizerMulMembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/scaleNembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer/L2Loss*
T0*?
_class5
31loc:@embed_nl/self_attention_head_1/query_weights*
_output_shapes
: 
▓
Eembed_context/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:
Е
;embed_context/embed_nl/self_attention_head_1/Tensordot/axesConst*
dtype0*
_output_shapes
:*
valueB:
М
;embed_context/embed_nl/self_attention_head_1/Tensordot/freeConst*
dtype0*
_output_shapes
:*
valueB"       
н
<embed_context/embed_nl/self_attention_head_1/Tensordot/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:
Ж
Dembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╘
?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Shape;embed_context/embed_nl/self_attention_head_1/Tensordot/freeDembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
И
Fembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╪
Aembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Shape;embed_context/embed_nl/self_attention_head_1/Tensordot/axesFembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axis*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:
Ж
<embed_context/embed_nl/self_attention_head_1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
у
;embed_context/embed_nl/self_attention_head_1/Tensordot/ProdProd?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2<embed_context/embed_nl/self_attention_head_1/Tensordot/Const*
T0*
_output_shapes
: 
И
>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
щ
=embed_context/embed_nl/self_attention_head_1/Tensordot/Prod_1ProdAembed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2_1>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_1*
_output_shapes
: *
T0
Д
Bembed_context/embed_nl/self_attention_head_1/Tensordot/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╡
=embed_context/embed_nl/self_attention_head_1/Tensordot/concatConcatV2;embed_context/embed_nl/self_attention_head_1/Tensordot/free;embed_context/embed_nl/self_attention_head_1/Tensordot/axesBembed_context/embed_nl/self_attention_head_1/Tensordot/concat/axis*
N*
_output_shapes
:*
T0
ю
<embed_context/embed_nl/self_attention_head_1/Tensordot/stackPack;embed_context/embed_nl/self_attention_head_1/Tensordot/Prod=embed_context/embed_nl/self_attention_head_1/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
О
@embed_context/embed_nl/self_attention_head_1/Tensordot/transpose	TransposeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1=embed_context/embed_nl/self_attention_head_1/Tensordot/concat*
T0*4
_output_shapes"
 :                  
Д
>embed_context/embed_nl/self_attention_head_1/Tensordot/ReshapeReshape@embed_context/embed_nl/self_attention_head_1/Tensordot/transpose<embed_context/embed_nl/self_attention_head_1/Tensordot/stack*
T0*0
_output_shapes
:                  
Ш
Gembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1/permConst*
dtype0*
_output_shapes
:*
valueB"       
И
Bembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1	TransposeEembed_context/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpGembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1/perm*
T0*
_output_shapes

:
Ч
Fembed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
А
@embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1ReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot/transpose_1Fembed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shape*
T0*
_output_shapes

:
√
=embed_context/embed_nl/self_attention_head_1/Tensordot/MatMulMatMul>embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape@embed_context/embed_nl/self_attention_head_1/Tensordot/Reshape_1*
T0*'
_output_shapes
:         
И
>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
Ж
Dembed_context/embed_nl/self_attention_head_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
└
?embed_context/embed_nl/self_attention_head_1/Tensordot/concat_1ConcatV2?embed_context/embed_nl/self_attention_head_1/Tensordot/GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot/Const_2Dembed_context/embed_nl/self_attention_head_1/Tensordot/concat_1/axis*
T0*
N*
_output_shapes
:
А
6embed_context/embed_nl/self_attention_head_1/TensordotReshape=embed_context/embed_nl/self_attention_head_1/Tensordot/MatMul?embed_context/embed_nl/self_attention_head_1/Tensordot/concat_1*4
_output_shapes"
 :                  *
T0
▌
Lembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/shapeConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB"      *
dtype0*
_output_shapes
:
╧
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/minConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *  А┐*
dtype0*
_output_shapes
: 
╧
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/maxConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
й
Tembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/RandomUniformRandomUniformLembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/shape*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:
╩
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/subSubJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/maxJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/min*
_output_shapes
: *
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights
▄
Jembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/mulMulTembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/RandomUniformJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/sub*
_output_shapes

:*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights
╬
Fembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniformAddJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/mulJembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform/min*
_output_shapes

:*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights
Є
+embed_nl/self_attention_head_1/keys_weightsVarHandleOp*
dtype0*
_output_shapes
: *<
shared_name-+embed_nl/self_attention_head_1/keys_weights*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
shape
:
з
Lembed_nl/self_attention_head_1/keys_weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp+embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 
И
2embed_nl/self_attention_head_1/keys_weights/AssignAssignVariableOp+embed_nl/self_attention_head_1/keys_weightsFembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0
ы
?embed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:
╤
Lembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/scaleConst*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╚
\embed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:
Ц
Membed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2LossL2Loss\embed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 
╦
Fembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizerMulLembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/scaleMembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer/L2Loss*
T0*>
_class4
20loc:@embed_nl/self_attention_head_1/keys_weights*
_output_shapes
: 
│
Gembed_context/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
_output_shapes

:*
dtype0
З
=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesConst*
valueB:*
dtype0*
_output_shapes
:
О
=embed_context/embed_nl/self_attention_head_1/Tensordot_1/freeConst*
valueB"       *
dtype0*
_output_shapes
:
п
>embed_context/embed_nl/self_attention_head_1/Tensordot_1/ShapeShapeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:
И
Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
▄
Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Shape=embed_context/embed_nl/self_attention_head_1/Tensordot_1/freeFembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
К
Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
р
Cembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Shape=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesHembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axis*
Tparams0*
_output_shapes
:*
Taxis0*
Tindices0
И
>embed_context/embed_nl/self_attention_head_1/Tensordot_1/ConstConst*
valueB: *
dtype0*
_output_shapes
:
щ
=embed_context/embed_nl/self_attention_head_1/Tensordot_1/ProdProdAembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2>embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const*
T0*
_output_shapes
: 
К
@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_1Const*
dtype0*
_output_shapes
:*
valueB: 
я
?embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod_1ProdCembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_1*
_output_shapes
: *
T0
Ж
Dembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╜
?embed_context/embed_nl/self_attention_head_1/Tensordot_1/concatConcatV2=embed_context/embed_nl/self_attention_head_1/Tensordot_1/free=embed_context/embed_nl/self_attention_head_1/Tensordot_1/axesDembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat/axis*
T0*
N*
_output_shapes
:
Ї
>embed_context/embed_nl/self_attention_head_1/Tensordot_1/stackPack=embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod?embed_context/embed_nl/self_attention_head_1/Tensordot_1/Prod_1*
_output_shapes
:*
T0*
N
Т
Bembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose	TransposeAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1?embed_context/embed_nl/self_attention_head_1/Tensordot_1/concat*4
_output_shapes"
 :                  *
T0
К
@embed_context/embed_nl/self_attention_head_1/Tensordot_1/ReshapeReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose>embed_context/embed_nl/self_attention_head_1/Tensordot_1/stack*0
_output_shapes
:                  *
T0
Ъ
Iembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
О
Dembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1	TransposeGembed_context/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpIembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/perm*
T0*
_output_shapes

:
Щ
Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
Ж
Bembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1ReshapeDembed_context/embed_nl/self_attention_head_1/Tensordot_1/transpose_1Hembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shape*
T0*
_output_shapes

:
Б
?embed_context/embed_nl/self_attention_head_1/Tensordot_1/MatMulMatMul@embed_context/embed_nl/self_attention_head_1/Tensordot_1/ReshapeBembed_context/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1*
T0*'
_output_shapes
:         
К
@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_2Const*
_output_shapes
:*
valueB:*
dtype0
И
Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╚
Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1ConcatV2Aembed_context/embed_nl/self_attention_head_1/Tensordot_1/GatherV2@embed_context/embed_nl/self_attention_head_1/Tensordot_1/Const_2Fembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
:
Ж
8embed_context/embed_nl/self_attention_head_1/Tensordot_1Reshape?embed_context/embed_nl/self_attention_head_1/Tensordot_1/MatMulAembed_context/embed_nl/self_attention_head_1/Tensordot_1/concat_1*
T0*4
_output_shapes"
 :                  
Л
3embed_context/embed_nl/self_attention_head_1/MatMulBatchMatMulV26embed_context/embed_nl/self_attention_head_1/Tensordot8embed_context/embed_nl/self_attention_head_1/Tensordot_1*=
_output_shapes+
):'                           *
adj_y(*
T0
}
;embed_context/embed_nl/self_attention_head_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
Ї
7embed_context/embed_nl/self_attention_head_1/ExpandDims
ExpandDims1embed_context/embed_nl/self_attention_head_1/Cast;embed_context/embed_nl/self_attention_head_1/ExpandDims/dim*4
_output_shapes"
 :                  *
T0
w
2embed_context/embed_nl/self_attention_head_1/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
у
0embed_context/embed_nl/self_attention_head_1/subSub2embed_context/embed_nl/self_attention_head_1/sub/x7embed_context/embed_nl/self_attention_head_1/ExpandDims*
T0*4
_output_shapes"
 :                  
w
2embed_context/embed_nl/self_attention_head_1/mul/xConst*
dtype0*
_output_shapes
: *
valueB
 *(knN
▄
0embed_context/embed_nl/self_attention_head_1/mulMul2embed_context/embed_nl/self_attention_head_1/mul/x0embed_context/embed_nl/self_attention_head_1/sub*4
_output_shapes"
 :                  *
T0
ш
2embed_context/embed_nl/self_attention_head_1/sub_1Sub3embed_context/embed_nl/self_attention_head_1/MatMul0embed_context/embed_nl/self_attention_head_1/mul*=
_output_shapes+
):'                           *
T0
╗
4embed_context/embed_nl/self_attention_head_1/SoftmaxSoftmax2embed_context/embed_nl/self_attention_head_1/sub_1*=
_output_shapes+
):'                           *
T0
Ф
Iembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Р
Eembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims
ExpandDims1embed_context/embed_nl/self_attention_head_1/CastIembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dim*
T0*4
_output_shapes"
 :                  
К
>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mulMul4embed_context/embed_nl/self_attention_head_1/SoftmaxEembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims*=
_output_shapes+
):'                           *
T0
Ы
Pembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indicesConst*
valueB :
■        *
dtype0*
_output_shapes
: 
з
>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/SumSum>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mulPembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indices*4
_output_shapes"
 :                  *
	keep_dims(*
T0
Ф
Rembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
С
@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1Sum1embed_context/embed_nl/self_attention_head_1/CastRembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(
Г
Aembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast/xConst*
value	B :*
dtype0*
_output_shapes
: 
║
?embed_context/embed_nl/self_attention_head_1/sqrtn_combine/CastCastAembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast/x*

SrcT0*

DstT0*
_output_shapes
: 
В
Bembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MaximumMaximum?embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Cast@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1*
T0*'
_output_shapes
:         
┐
@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtRsqrtBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Maximum*'
_output_shapes
:         *
T0
Ц
Kembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Ъ
Gembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1
ExpandDims@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtKembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dim*
T0*+
_output_shapes
:         
П
@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Mul>embed_context/embed_nl/self_attention_head_1/sqrtn_combine/SumGembed_context/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1*
T0*4
_output_shapes"
 :                  
Н
Aembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MatMulBatchMatMulV2@embed_context/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Aembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*+
_output_shapes
:         
┘
Bembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeSqueezeAembed_context/embed_nl/self_attention_head_1/sqrtn_combine/MatMul*
squeeze_dims
*
T0*'
_output_shapes
:         
Я
sequence_encodingIdentityAembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*4
_output_shapes"
 :                  *
T0
╩
Bskip_connection/projection/weights/Initializer/random_normal/shapeConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"      *
dtype0*
_output_shapes
:
╜
Askip_connection/projection/weights/Initializer/random_normal/meanConst*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *    *
dtype0
┐
Cskip_connection/projection/weights/Initializer/random_normal/stddevConst*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *  А?*
dtype0
Ъ
Qskip_connection/projection/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalBskip_connection/projection/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*5
_class+
)'loc:@skip_connection/projection/weights
┐
@skip_connection/projection/weights/Initializer/random_normal/mulMulQskip_connection/projection/weights/Initializer/random_normal/RandomStandardNormalCskip_connection/projection/weights/Initializer/random_normal/stddev*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:*
T0
и
<skip_connection/projection/weights/Initializer/random_normalAdd@skip_connection/projection/weights/Initializer/random_normal/mulAskip_connection/projection/weights/Initializer/random_normal/mean*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
▀
1skip_connection/projection/weights/Initializer/QrQr<skip_connection/projection/weights/Initializer/random_normal*(
_output_shapes
::*
T0*5
_class+
)'loc:@skip_connection/projection/weights
╘
7skip_connection/projection/weights/Initializer/DiagPartDiagPart3skip_connection/projection/weights/Initializer/Qr:1*
_output_shapes
:*
T0*5
_class+
)'loc:@skip_connection/projection/weights
╨
3skip_connection/projection/weights/Initializer/SignSign7skip_connection/projection/weights/Initializer/DiagPart*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes
:
Б
2skip_connection/projection/weights/Initializer/mulMul1skip_connection/projection/weights/Initializer/Qr3skip_connection/projection/weights/Initializer/Sign*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:*
T0
╓
Nskip_connection/projection/weights/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"       
║
Iskip_connection/projection/weights/Initializer/matrix_transpose/transpose	Transpose2skip_connection/projection/weights/Initializer/mulNskip_connection/projection/weights/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:*
T0*5
_class+
)'loc:@skip_connection/projection/weights
─
<skip_connection/projection/weights/Initializer/Reshape/shapeConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB"      *
dtype0*
_output_shapes
:
к
6skip_connection/projection/weights/Initializer/ReshapeReshapeIskip_connection/projection/weights/Initializer/matrix_transpose/transpose<skip_connection/projection/weights/Initializer/Reshape/shape*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
▓
6skip_connection/projection/weights/Initializer/mul_1/xConst*5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Л
4skip_connection/projection/weights/Initializer/mul_1Mul6skip_connection/projection/weights/Initializer/mul_1/x6skip_connection/projection/weights/Initializer/Reshape*
T0*5
_class+
)'loc:@skip_connection/projection/weights*
_output_shapes

:
╫
"skip_connection/projection/weightsVarHandleOp*
dtype0*
_output_shapes
: *3
shared_name$"skip_connection/projection/weights*5
_class+
)'loc:@skip_connection/projection/weights*
shape
:
Х
Cskip_connection/projection/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp"skip_connection/projection/weights*
_output_shapes
: 
█
)skip_connection/projection/weights/AssignAssignVariableOp"skip_connection/projection/weights4skip_connection/projection/weights/Initializer/mul_1*5
_class+
)'loc:@skip_connection/projection/weights*
dtype0
╨
6skip_connection/projection/weights/Read/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
_output_shapes

:*5
_class+
)'loc:@skip_connection/projection/weights*
dtype0
┐
Cskip_connection/projection/weights/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *5
_class+
)'loc:@skip_connection/projection/weights*
valueB
 *═╠╠=*
dtype0
╢
Sskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
√
Dskip_connection/projection/weights/Regularizer/l2_regularizer/L2LossL2LossSskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*5
_class+
)'loc:@skip_connection/projection/weights
з
=skip_connection/projection/weights/Regularizer/l2_regularizerMulCskip_connection/projection/weights/Regularizer/l2_regularizer/scaleDskip_connection/projection/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*5
_class+
)'loc:@skip_connection/projection/weights
У
0skip_connection/projection/MatMul/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
╙
!skip_connection/projection/MatMulMatMulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze0skip_connection/projection/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
р
Hencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
П
6encode_context_feature/layer_norm_input/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *G
shared_name86encode_context_feature/layer_norm_input/LayerNorm/beta*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta
╜
Wencode_context_feature/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp6encode_context_feature/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
л
=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp6encode_context_feature/layer_norm_input/LayerNorm/betaHencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0
И
Jencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp6encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:*I
_class?
=;loc:@encode_context_feature/layer_norm_input/LayerNorm/beta
с
Hencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
Т
7encode_context_feature/layer_norm_input/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *H
shared_name97encode_context_feature/layer_norm_input/LayerNorm/gamma*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
shape:
┐
Xencode_context_feature/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
о
>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gammaHencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0
Л
Kencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
:*J
_class@
><loc:@encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0
Ъ
Pencode_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Я
>encode_context_feature/layer_norm_input/LayerNorm/moments/meanMeanBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezePencode_context_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(
╚
Fencode_context_feature/layer_norm_input/LayerNorm/moments/StopGradientStopGradient>encode_context_feature/layer_norm_input/LayerNorm/moments/mean*'
_output_shapes
:         *
T0
Ю
Kencode_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeFencode_context_feature/layer_norm_input/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
Ю
Tencode_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
░
Bencode_context_feature/layer_norm_input/LayerNorm/moments/varianceMeanKencode_context_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceTencode_context_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:         
Ж
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
 
?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/addAddBencode_context_feature/layer_norm_input/LayerNorm/moments/varianceAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:         
╜
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:         
┬
Nencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
Л
?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mulMulAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtNencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
 
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1MulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
√
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2Mul>encode_context_feature/layer_norm_input/LayerNorm/moments/mean?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
╜
Jencode_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp6encode_context_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
З
?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/subSubJencode_context_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:         
■
Aencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1AddAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/mul_1?encode_context_feature/layer_norm_input/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:         
ф
Oencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
╫
Nencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
Pencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┴
^encode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalOencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
є
Mencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulMul^encode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalPencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
▄
Iencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normalAddMencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulNencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal/mean*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
Ж
>encode_context_feature/layer_0/hidden_0/weights/Initializer/QrQrIencode_context_feature/layer_0/hidden_0/weights/Initializer/random_normal*(
_output_shapes
::*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
√
Dencode_context_feature/layer_0/hidden_0/weights/Initializer/DiagPartDiagPart@encode_context_feature/layer_0/hidden_0/weights/Initializer/Qr:1*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
:
ў
@encode_context_feature/layer_0/hidden_0/weights/Initializer/SignSignDencode_context_feature/layer_0/hidden_0/weights/Initializer/DiagPart*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
:*
T0
╡
?encode_context_feature/layer_0/hidden_0/weights/Initializer/mulMul>encode_context_feature/layer_0/hidden_0/weights/Initializer/Qr@encode_context_feature/layer_0/hidden_0/weights/Initializer/Sign*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
▐
Iencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*
dtype0*
_output_shapes
:*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB"      
╟
Cencode_context_feature/layer_0/hidden_0/weights/Initializer/ReshapeReshape?encode_context_feature/layer_0/hidden_0/weights/Initializer/mulIencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape/shape*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights
╠
Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┐
Aencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1MulCencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1/xCencode_context_feature/layer_0/hidden_0/weights/Initializer/Reshape*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:
■
/encode_context_feature/layer_0/hidden_0/weightsVarHandleOp*
dtype0*
_output_shapes
: *@
shared_name1/encode_context_feature/layer_0/hidden_0/weights*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
shape
:
п
Pencode_context_feature/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 
П
6encode_context_feature/layer_0/hidden_0/weights/AssignAssignVariableOp/encode_context_feature/layer_0/hidden_0/weightsAencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
dtype0
ў
Cencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
dtype0
┘
Pencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╨
`encode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*
_output_shapes

:*
dtype0
в
Qencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Loss`encode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 
█
Jencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulPencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleQencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*
T0*B
_class8
64loc:@encode_context_feature/layer_0/hidden_0/weights*
_output_shapes
: 
н
=encode_context_feature/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp/encode_context_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
ь
.encode_context_feature/layer_0/hidden_0/MatMulMatMulAencode_context_feature/layer_norm_input/LayerNorm/batchnorm/add_1=encode_context_feature/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
Ц
,encode_context_feature/layer_0/hidden_0/ReluRelu.encode_context_feature/layer_0/hidden_0/MatMul*
T0*'
_output_shapes
:         
ф
Jencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
valueB*    
Х
8encode_context_feature/layer_0/layer_norm/LayerNorm/betaVarHandleOp*I
shared_name:8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
shape:*
dtype0*
_output_shapes
: 
┴
Yencode_context_feature/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 
│
?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/betaJencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0
О
Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
х
Jencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
Ш
9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*
_output_shapes
: *J
shared_name;9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
shape:*
dtype0
├
Zencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
╢
@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaJencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0
С
Mencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ь
Rencode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Н
@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/meanMean,encode_context_feature/layer_0/hidden_0/ReluRencode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
╠
Hencode_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradient@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:         
М
Mencode_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference,encode_context_feature/layer_0/hidden_0/ReluHencode_context_feature/layer_0/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
а
Vencode_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
╢
Dencode_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceMeanMencode_context_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceVencode_context_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
И
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
Е
Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/addAddDencode_context_feature/layer_0/layer_norm/LayerNorm/moments/varianceCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:         
┴
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:         *
T0
╞
Pencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
С
Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mulMulCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtPencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
э
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul,encode_context_feature/layer_0/hidden_0/ReluAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
Б
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2Mul@encode_context_feature/layer_0/layer_norm/LayerNorm/moments/meanAencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
┴
Lencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
Н
Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/subSubLencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:         
Д
Cencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1AddCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Aencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:         *
T0
ф
Oencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
╫
Nencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
┘
Pencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┴
^encode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalOencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
є
Mencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulMul^encode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalPencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
▄
Iencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normalAddMencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulNencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
Ж
>encode_context_feature/layer_1/hidden_1/weights/Initializer/QrQrIencode_context_feature/layer_1/hidden_1/weights/Initializer/random_normal*(
_output_shapes
::*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
√
Dencode_context_feature/layer_1/hidden_1/weights/Initializer/DiagPartDiagPart@encode_context_feature/layer_1/hidden_1/weights/Initializer/Qr:1*
_output_shapes
:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
ў
@encode_context_feature/layer_1/hidden_1/weights/Initializer/SignSignDencode_context_feature/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
:
╡
?encode_context_feature/layer_1/hidden_1/weights/Initializer/mulMul>encode_context_feature/layer_1/hidden_1/weights/Initializer/Qr@encode_context_feature/layer_1/hidden_1/weights/Initializer/Sign*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
Ё
[encode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:
ю
Vencode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	Transpose?encode_context_feature/layer_1/hidden_1/weights/Initializer/mul[encode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
▐
Iencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
▐
Cencode_context_feature/layer_1/hidden_1/weights/Initializer/ReshapeReshapeVencode_context_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeIencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape/shape*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
╠
Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
┐
Aencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1MulCencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1/xCencode_context_feature/layer_1/hidden_1/weights/Initializer/Reshape*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes

:
■
/encode_context_feature/layer_1/hidden_1/weightsVarHandleOp*
dtype0*
_output_shapes
: *@
shared_name1/encode_context_feature/layer_1/hidden_1/weights*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
shape
:
п
Pencode_context_feature/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp/encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 
П
6encode_context_feature/layer_1/hidden_1/weights/AssignAssignVariableOp/encode_context_feature/layer_1/hidden_1/weightsAencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
dtype0
ў
Cencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights
┘
Pencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╨
`encode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
в
Qencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Loss`encode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 
█
Jencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulPencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleQencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*
T0*B
_class8
64loc:@encode_context_feature/layer_1/hidden_1/weights*
_output_shapes
: 
н
=encode_context_feature/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp/encode_context_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
ю
.encode_context_feature/layer_1/hidden_1/MatMulMatMulCencode_context_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1=encode_context_feature/layer_1/hidden_1/MatMul/ReadVariableOp*'
_output_shapes
:         *
T0
Ц
,encode_context_feature/layer_1/hidden_1/ReluRelu.encode_context_feature/layer_1/hidden_1/MatMul*
T0*'
_output_shapes
:         
ф
Jencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Х
8encode_context_feature/layer_1/layer_norm/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *I
shared_name:8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta
┴
Yencode_context_feature/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 
│
?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/betaJencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0
О
Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*K
_classA
?=loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
х
Jencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
Ш
9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *J
shared_name;9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma
├
Zencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
╢
@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaJencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0
С
Mencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*L
_classB
@>loc:@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ь
Rencode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
Н
@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/meanMean,encode_context_feature/layer_1/hidden_1/ReluRencode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
╠
Hencode_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradient@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:         
М
Mencode_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference,encode_context_feature/layer_1/hidden_1/ReluHencode_context_feature/layer_1/layer_norm/LayerNorm/moments/StopGradient*'
_output_shapes
:         *
T0
а
Vencode_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
╢
Dencode_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceMeanMencode_context_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceVencode_context_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
И
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *╠╝М+
Е
Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/addAddDencode_context_feature/layer_1/layer_norm/LayerNorm/moments/varianceCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:         *
T0
┴
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrtAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:         
╞
Pencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
С
Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mulMulCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtPencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:         *
T0
э
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul,encode_context_feature/layer_1/hidden_1/ReluAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
Б
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2Mul@encode_context_feature/layer_1/layer_norm/LayerNorm/moments/meanAencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
┴
Lencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
Н
Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/subSubLencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:         
Д
Cencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1AddCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Aencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:         
╬
Dencode_context_feature/final/weights/Initializer/random_normal/shapeConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
┴
Cencode_context_feature/final/weights/Initializer/random_normal/meanConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
├
Eencode_context_feature/final/weights/Initializer/random_normal/stddevConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
а
Sencode_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalDencode_context_feature/final/weights/Initializer/random_normal/shape*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
dtype0*
_output_shapes

:
╟
Bencode_context_feature/final/weights/Initializer/random_normal/mulMulSencode_context_feature/final/weights/Initializer/random_normal/RandomStandardNormalEencode_context_feature/final/weights/Initializer/random_normal/stddev*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
░
>encode_context_feature/final/weights/Initializer/random_normalAddBencode_context_feature/final/weights/Initializer/random_normal/mulCencode_context_feature/final/weights/Initializer/random_normal/mean*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
х
3encode_context_feature/final/weights/Initializer/QrQr>encode_context_feature/final/weights/Initializer/random_normal*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*(
_output_shapes
::
┌
9encode_context_feature/final/weights/Initializer/DiagPartDiagPart5encode_context_feature/final/weights/Initializer/Qr:1*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes
:
╓
5encode_context_feature/final/weights/Initializer/SignSign9encode_context_feature/final/weights/Initializer/DiagPart*
_output_shapes
:*
T0*7
_class-
+)loc:@encode_context_feature/final/weights
Й
4encode_context_feature/final/weights/Initializer/mulMul3encode_context_feature/final/weights/Initializer/Qr5encode_context_feature/final/weights/Initializer/Sign*
_output_shapes

:*
T0*7
_class-
+)loc:@encode_context_feature/final/weights
┌
Pencode_context_feature/final/weights/Initializer/matrix_transpose/transpose/permConst*
dtype0*
_output_shapes
:*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"       
┬
Kencode_context_feature/final/weights/Initializer/matrix_transpose/transpose	Transpose4encode_context_feature/final/weights/Initializer/mulPencode_context_feature/final/weights/Initializer/matrix_transpose/transpose/perm*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
╚
>encode_context_feature/final/weights/Initializer/Reshape/shapeConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
▓
8encode_context_feature/final/weights/Initializer/ReshapeReshapeKencode_context_feature/final/weights/Initializer/matrix_transpose/transpose>encode_context_feature/final/weights/Initializer/Reshape/shape*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
╢
8encode_context_feature/final/weights/Initializer/mul_1/xConst*7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
У
6encode_context_feature/final/weights/Initializer/mul_1Mul8encode_context_feature/final/weights/Initializer/mul_1/x8encode_context_feature/final/weights/Initializer/Reshape*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes

:
▌
$encode_context_feature/final/weightsVarHandleOp*
dtype0*
_output_shapes
: *5
shared_name&$encode_context_feature/final/weights*7
_class-
+)loc:@encode_context_feature/final/weights*
shape
:
Щ
Eencode_context_feature/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp$encode_context_feature/final/weights*
_output_shapes
: 
у
+encode_context_feature/final/weights/AssignAssignVariableOp$encode_context_feature/final/weights6encode_context_feature/final/weights/Initializer/mul_1*7
_class-
+)loc:@encode_context_feature/final/weights*
dtype0
╓
8encode_context_feature/final/weights/Read/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*7
_class-
+)loc:@encode_context_feature/final/weights*
dtype0*
_output_shapes

:
├
Eencode_context_feature/final/weights/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *7
_class-
+)loc:@encode_context_feature/final/weights*
valueB
 *═╠╠=*
dtype0
║
Uencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*
dtype0*
_output_shapes

:
Б
Fencode_context_feature/final/weights/Regularizer/l2_regularizer/L2LossL2LossUencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*7
_class-
+)loc:@encode_context_feature/final/weights
п
?encode_context_feature/final/weights/Regularizer/l2_regularizerMulEencode_context_feature/final/weights/Regularizer/l2_regularizer/scaleFencode_context_feature/final/weights/Regularizer/l2_regularizer/L2Loss*
T0*7
_class-
+)loc:@encode_context_feature/final/weights*
_output_shapes
: 
Ч
2encode_context_feature/final/MatMul/ReadVariableOpReadVariableOp$encode_context_feature/final/weights*
_output_shapes

:*
dtype0
╪
#encode_context_feature/final/MatMulMatMulCencode_context_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_12encode_context_feature/final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
Ы
encode_context_feature/addAdd#encode_context_feature/final/MatMul!skip_connection/projection/MatMul*'
_output_shapes
:         *
T0
╘
Bencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zerosConst*
_output_shapes
:*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
valueB*    *
dtype0
¤
0encode_context_feature/layer_norm/LayerNorm/betaVarHandleOp*
dtype0*
_output_shapes
: *A
shared_name20encode_context_feature/layer_norm/LayerNorm/beta*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
shape:
▒
Qencode_context_feature/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp0encode_context_feature/layer_norm/LayerNorm/beta*
_output_shapes
: 
У
7encode_context_feature/layer_norm/LayerNorm/beta/AssignAssignVariableOp0encode_context_feature/layer_norm/LayerNorm/betaBencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
dtype0
Ў
Dencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp0encode_context_feature/layer_norm/LayerNorm/beta*C
_class9
75loc:@encode_context_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
╒
Bencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/onesConst*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
А
1encode_context_feature/layer_norm/LayerNorm/gammaVarHandleOp*
dtype0*
_output_shapes
: *B
shared_name31encode_context_feature/layer_norm/LayerNorm/gamma*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
shape:
│
Rencode_context_feature/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp1encode_context_feature/layer_norm/LayerNorm/gamma*
_output_shapes
: 
Ц
8encode_context_feature/layer_norm/LayerNorm/gamma/AssignAssignVariableOp1encode_context_feature/layer_norm/LayerNorm/gammaBencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0
∙
Eencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp1encode_context_feature/layer_norm/LayerNorm/gamma*D
_class:
86loc:@encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ф
Jencode_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
ы
8encode_context_feature/layer_norm/LayerNorm/moments/meanMeanencode_context_feature/addJencode_context_feature/layer_norm/LayerNorm/moments/mean/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:         
╝
@encode_context_feature/layer_norm/LayerNorm/moments/StopGradientStopGradient8encode_context_feature/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:         *
T0
ъ
Eencode_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifferenceencode_context_feature/add@encode_context_feature/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
Ш
Nencode_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
valueB:*
dtype0
Ю
<encode_context_feature/layer_norm/LayerNorm/moments/varianceMeanEencode_context_feature/layer_norm/LayerNorm/moments/SquaredDifferenceNencode_context_feature/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
А
;encode_context_feature/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
э
9encode_context_feature/layer_norm/LayerNorm/batchnorm/addAdd<encode_context_feature/layer_norm/LayerNorm/moments/variance;encode_context_feature/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:         *
T0
▒
;encode_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt9encode_context_feature/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:         *
T0
╢
Hencode_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp1encode_context_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
∙
9encode_context_feature/layer_norm/LayerNorm/batchnorm/mulMul;encode_context_feature/layer_norm/LayerNorm/batchnorm/RsqrtHencode_context_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
╦
;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_1Mulencode_context_feature/add9encode_context_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
щ
;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_2Mul8encode_context_feature/layer_norm/LayerNorm/moments/mean9encode_context_feature/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
▒
Dencode_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp0encode_context_feature/layer_norm/LayerNorm/beta*
_output_shapes
:*
dtype0
ї
9encode_context_feature/layer_norm/LayerNorm/batchnorm/subSubDencode_context_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOp;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:         *
T0
ь
;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1Add;encode_context_feature/layer_norm/LayerNorm/batchnorm/mul_19encode_context_feature/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:         
╣
@encode_context_feature/normalize/context_feature_encoding/SquareSquare;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1*'
_output_shapes
:         *
T0
С
Oencode_context_feature/normalize/context_feature_encoding/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ъ
=encode_context_feature/normalize/context_feature_encoding/SumSum@encode_context_feature/normalize/context_feature_encoding/SquareOencode_context_feature/normalize/context_feature_encoding/Sum/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
И
Cencode_context_feature/normalize/context_feature_encoding/Maximum/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
В
Aencode_context_feature/normalize/context_feature_encoding/MaximumMaximum=encode_context_feature/normalize/context_feature_encoding/SumCencode_context_feature/normalize/context_feature_encoding/Maximum/y*'
_output_shapes
:         *
T0
╜
?encode_context_feature/normalize/context_feature_encoding/RsqrtRsqrtAencode_context_feature/normalize/context_feature_encoding/Maximum*
T0*'
_output_shapes
:         
Ё
9encode_context_feature/normalize/context_feature_encodingMul;encode_context_feature/layer_norm/LayerNorm/batchnorm/add_1?encode_context_feature/normalize/context_feature_encoding/Rsqrt*'
_output_shapes
:         *
T0
Й
context_encodingIdentity9encode_context_feature/normalize/context_feature_encoding*'
_output_shapes
:         *
T0
в
"normalize_sentence_encoding/SquareSquareBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze*'
_output_shapes
:         *
T0
s
1normalize_sentence_encoding/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
└
normalize_sentence_encoding/SumSum"normalize_sentence_encoding/Square1normalize_sentence_encoding/Sum/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
j
%normalize_sentence_encoding/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *╠╝М+
и
#normalize_sentence_encoding/MaximumMaximumnormalize_sentence_encoding/Sum%normalize_sentence_encoding/Maximum/y*
T0*'
_output_shapes
:         
Б
!normalize_sentence_encoding/RsqrtRsqrt#normalize_sentence_encoding/Maximum*
T0*'
_output_shapes
:         
╗
normalize_sentence_encodingMulBembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze!normalize_sentence_encoding/Rsqrt*
T0*'
_output_shapes
:         
l
sentence_encodingIdentitynormalize_sentence_encoding*
T0*'
_output_shapes
:         
u
3embed_response/embed_nl/SparseToDense/default_valueConst*
_output_shapes
: *
value	B	 Rw*
dtype0	
Ь
%embed_response/embed_nl/SparseToDenseSparseToDense#RaggedToSparse/RaggedTensorToSparse%RaggedToSparse/RaggedTensorToSparse:2hash_table_Lookup/Select3embed_response/embed_nl/SparseToDense/default_value*
Tindices0	*
T0	*0
_output_shapes
:                  
d
"embed_response/embed_nl/NotEqual/yConst*
_output_shapes
: *
value	B	 Rw*
dtype0	
▓
 embed_response/embed_nl/NotEqualNotEqual%embed_response/embed_nl/SparseToDense"embed_response/embed_nl/NotEqual/y*
T0	*0
_output_shapes
:                  
И
3embed_response/embed_nl/EmbeddingLookupUnique/ShapeShape%embed_response/embed_nl/SparseToDense*
_output_shapes
:*
T0	
}
3embed_response/embed_nl/EmbeddingLookupUnique/ConstConst*
valueB: *
dtype0*
_output_shapes
:
┌
2embed_response/embed_nl/EmbeddingLookupUnique/ProdProd3embed_response/embed_nl/EmbeddingLookupUnique/Shape3embed_response/embed_nl/EmbeddingLookupUnique/Const*
	keep_dims(*
T0*
_output_shapes
:
╔
5embed_response/embed_nl/EmbeddingLookupUnique/ReshapeReshape%embed_response/embed_nl/SparseToDense2embed_response/embed_nl/EmbeddingLookupUnique/Prod*
T0	*#
_output_shapes
:         
▓
4embed_response/embed_nl/EmbeddingLookupUnique/UniqueUnique5embed_response/embed_nl/EmbeddingLookupUnique/Reshape*2
_output_shapes 
:         :         *
T0	
н
>embed_response/embed_nl/EmbeddingLookupUnique/embedding_lookupResourceGather%embedding_matrices/subword_embeddings4embed_response/embed_nl/EmbeddingLookupUnique/Unique*
Tindices0	*
dtype0*'
_output_shapes
:         *8
_class.
,*loc:@embedding_matrices/subword_embeddings
 
Gembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/IdentityIdentity>embed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup*
T0*8
_class.
,*loc:@embedding_matrices/subword_embeddings*'
_output_shapes
:         
╨
Iembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1IdentityGembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity*'
_output_shapes
:         *
T0
в
]embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scaleConst*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╘
^embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2LossL2LossIembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
T0*
_output_shapes
: 
╛
Wembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizerMul]embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/scale^embed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer/L2Loss*
T0*
_output_shapes
: 
╬
Hembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penaltyIdentityWembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty/l2_regularizer*
_output_shapes
: *
T0
}
;embed_response/embed_nl/EmbeddingLookupUnique/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╫
6embed_response/embed_nl/EmbeddingLookupUnique/GatherV2GatherV2Iembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_16embed_response/embed_nl/EmbeddingLookupUnique/Unique:1;embed_response/embed_nl/EmbeddingLookupUnique/GatherV2/axis*
Tparams0*'
_output_shapes
:         *
Taxis0*
Tindices0
о
5embed_response/embed_nl/EmbeddingLookupUnique/Shape_1ShapeIembed_response/embed_nl/EmbeddingLookupUnique/embedding_lookup/Identity_1*
_output_shapes
:*
T0
Л
Aembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Н
Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
Н
Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
С
;embed_response/embed_nl/EmbeddingLookupUnique/strided_sliceStridedSlice5embed_response/embed_nl/EmbeddingLookupUnique/Shape_1Aembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stackCembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_1Cembed_response/embed_nl/EmbeddingLookupUnique/strided_slice/stack_2*
end_mask*
_output_shapes
:*
T0*
Index0
{
9embed_response/embed_nl/EmbeddingLookupUnique/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
Ы
4embed_response/embed_nl/EmbeddingLookupUnique/concatConcatV23embed_response/embed_nl/EmbeddingLookupUnique/Shape;embed_response/embed_nl/EmbeddingLookupUnique/strided_slice9embed_response/embed_nl/EmbeddingLookupUnique/concat/axis*
N*
_output_shapes
:*
T0
я
7embed_response/embed_nl/EmbeddingLookupUnique/Reshape_1Reshape6embed_response/embed_nl/EmbeddingLookupUnique/GatherV24embed_response/embed_nl/EmbeddingLookupUnique/concat*
T0*4
_output_shapes"
 :                  
b
embed_response/embed_nl/mul/yConst*
dtype0*
_output_shapes
: *
valueB
 *╫│▌?
╣
embed_response/embed_nl/mulMul7embed_response/embed_nl/EmbeddingLookupUnique/Reshape_1embed_response/embed_nl/mul/y*
T0*4
_output_shapes"
 :                  
Б
6embed_response/embed_nl/add_positional_embedding/ShapeShapeembed_response/embed_nl/mul*
T0*
_output_shapes
:
О
Dembed_response/embed_nl/add_positional_embedding/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
Р
Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:
Р
Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
в
>embed_response/embed_nl/add_positional_embedding/strided_sliceStridedSlice6embed_response/embed_nl/add_positional_embedding/ShapeDembed_response/embed_nl/add_positional_embedding/strided_slice/stackFembed_response/embed_nl/add_positional_embedding/strided_slice/stack_1Fembed_response/embed_nl/add_positional_embedding/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask
}
;embed_response/embed_nl/add_positional_embedding/floordiv/yConst*
value	B :*
dtype0*
_output_shapes
: 
у
9embed_response/embed_nl/add_positional_embedding/floordivFloorDiv>embed_response/embed_nl/add_positional_embedding/strided_slice;embed_response/embed_nl/add_positional_embedding/floordiv/y*
_output_shapes
: *
T0
x
6embed_response/embed_nl/add_positional_embedding/add/xConst*
value	B :*
dtype0*
_output_shapes
: 
╧
4embed_response/embed_nl/add_positional_embedding/addAdd6embed_response/embed_nl/add_positional_embedding/add/x9embed_response/embed_nl/add_positional_embedding/floordiv*
_output_shapes
: *
T0
е
Dembed_response/embed_nl/add_positional_embedding/Tile/ReadVariableOpReadVariableOp embed_nl/positional_embeddings/0*
dtype0*
_output_shapes

:
Г
Aembed_response/embed_nl/add_positional_embedding/Tile/multiples/1Const*
value	B :*
dtype0*
_output_shapes
: 
ю
?embed_response/embed_nl/add_positional_embedding/Tile/multiplesPack4embed_response/embed_nl/add_positional_embedding/addAembed_response/embed_nl/add_positional_embedding/Tile/multiples/1*
T0*
N*
_output_shapes
:
Ў
5embed_response/embed_nl/add_positional_embedding/TileTileDembed_response/embed_nl/add_positional_embedding/Tile/ReadVariableOp?embed_response/embed_nl/add_positional_embedding/Tile/multiples*'
_output_shapes
:         *
T0
Р
Fembed_response/embed_nl/add_positional_embedding/strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
╛
Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_1Pack>embed_response/embed_nl/add_positional_embedding/strided_slice*
_output_shapes
:*
T0*
N
Т
Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_2Const*
_output_shapes
:*
valueB:*
dtype0
┤
@embed_response/embed_nl/add_positional_embedding/strided_slice_1StridedSlice5embed_response/embed_nl/add_positional_embedding/TileFembed_response/embed_nl/add_positional_embedding/strided_slice_1/stackHembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_1Hembed_response/embed_nl/add_positional_embedding/strided_slice_1/stack_2*
Index0*
T0*

begin_mask*'
_output_shapes
:         
Б
?embed_response/embed_nl/add_positional_embedding/ExpandDims/dimConst*
dtype0*
_output_shapes
: *
value	B : 
В
;embed_response/embed_nl/add_positional_embedding/ExpandDims
ExpandDims@embed_response/embed_nl/add_positional_embedding/strided_slice_1?embed_response/embed_nl/add_positional_embedding/ExpandDims/dim*
T0*+
_output_shapes
:         
╓
6embed_response/embed_nl/add_positional_embedding/add_1Addembed_response/embed_nl/mul;embed_response/embed_nl/add_positional_embedding/ExpandDims*
T0*4
_output_shapes"
 :                  
Ы
Qembed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
в
?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/meanMean6embed_response/embed_nl/add_positional_embedding/add_1Qembed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean/reduction_indices*4
_output_shapes"
 :                  *
	keep_dims(*
T0
╫
Gembed_response/embed_nl/layer_norm_input/LayerNorm/moments/StopGradientStopGradient?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean*
T0*4
_output_shapes"
 :                  
б
Lembed_response/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifference6embed_response/embed_nl/add_positional_embedding/add_1Gembed_response/embed_nl/layer_norm_input/LayerNorm/moments/StopGradient*
T0*4
_output_shapes"
 :                  
Я
Uembed_response/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
└
Cembed_response/embed_nl/layer_norm_input/LayerNorm/moments/varianceMeanLembed_response/embed_nl/layer_norm_input/LayerNorm/moments/SquaredDifferenceUembed_response/embed_nl/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
T0*4
_output_shapes"
 :                  *
	keep_dims(
З
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
П
@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/addAddCembed_response/embed_nl/layer_norm_input/LayerNorm/moments/varianceBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add/y*4
_output_shapes"
 :                  *
T0
╠
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add*4
_output_shapes"
 :                  *
T0
╡
Oembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp)embed_nl/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:
Ы
@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mulMulBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/RsqrtOembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*4
_output_shapes"
 :                  
В
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1Mul6embed_response/embed_nl/add_positional_embedding/add_1@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :                  
Л
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2Mul?embed_response/embed_nl/layer_norm_input/LayerNorm/moments/mean@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul*
T0*4
_output_shapes"
 :                  
░
Kembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp(embed_nl/layer_norm_input/LayerNorm/beta*
_output_shapes
:*
dtype0
Ч
@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/subSubKembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_2*
T0*4
_output_shapes"
 :                  
О
Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1AddBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/mul_1@embed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/sub*4
_output_shapes"
 :                  *
T0
ж
2embed_response/embed_nl/self_attention_head_1/CastCast embed_response/embed_nl/NotEqual*

DstT0*0
_output_shapes
:                  *

SrcT0

е
3embed_response/embed_nl/self_attention_head_1/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0
Л
Aembed_response/embed_nl/self_attention_head_1/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
Н
Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
У
;embed_response/embed_nl/self_attention_head_1/strided_sliceStridedSlice3embed_response/embed_nl/self_attention_head_1/ShapeAembed_response/embed_nl/self_attention_head_1/strided_slice/stackCembed_response/embed_nl/self_attention_head_1/strided_slice/stack_1Cembed_response/embed_nl/self_attention_head_1/strided_slice/stack_2*
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
з
5embed_response/embed_nl/self_attention_head_1/Shape_1ShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:
Н
Cembed_response/embed_nl/self_attention_head_1/strided_slice_1/stackConst*
dtype0*
_output_shapes
:*
valueB:
П
Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
П
Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Э
=embed_response/embed_nl/self_attention_head_1/strided_slice_1StridedSlice5embed_response/embed_nl/self_attention_head_1/Shape_1Cembed_response/embed_nl/self_attention_head_1/strided_slice_1/stackEembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_1Eembed_response/embed_nl/self_attention_head_1/strided_slice_1/stack_2*
shrink_axis_mask*
_output_shapes
: *
T0*
Index0
│
Fembed_response/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpReadVariableOp,embed_nl/self_attention_head_1/query_weights*
dtype0*
_output_shapes

:
Ж
<embed_response/embed_nl/self_attention_head_1/Tensordot/axesConst*
valueB:*
dtype0*
_output_shapes
:
Н
<embed_response/embed_nl/self_attention_head_1/Tensordot/freeConst*
dtype0*
_output_shapes
:*
valueB"       
п
=embed_response/embed_nl/self_attention_head_1/Tensordot/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
_output_shapes
:*
T0
З
Eembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╪
@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Shape<embed_response/embed_nl/self_attention_head_1/Tensordot/freeEembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
Й
Gembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
▄
Bembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Shape<embed_response/embed_nl/self_attention_head_1/Tensordot/axesGembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1/axis*
Tindices0*
Tparams0*
_output_shapes
:*
Taxis0
З
=embed_response/embed_nl/self_attention_head_1/Tensordot/ConstConst*
valueB: *
dtype0*
_output_shapes
:
ц
<embed_response/embed_nl/self_attention_head_1/Tensordot/ProdProd@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2=embed_response/embed_nl/self_attention_head_1/Tensordot/Const*
_output_shapes
: *
T0
Й
?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
ь
>embed_response/embed_nl/self_attention_head_1/Tensordot/Prod_1ProdBembed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2_1?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_1*
T0*
_output_shapes
: 
Е
Cembed_response/embed_nl/self_attention_head_1/Tensordot/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
╣
>embed_response/embed_nl/self_attention_head_1/Tensordot/concatConcatV2<embed_response/embed_nl/self_attention_head_1/Tensordot/free<embed_response/embed_nl/self_attention_head_1/Tensordot/axesCembed_response/embed_nl/self_attention_head_1/Tensordot/concat/axis*
T0*
N*
_output_shapes
:
ё
=embed_response/embed_nl/self_attention_head_1/Tensordot/stackPack<embed_response/embed_nl/self_attention_head_1/Tensordot/Prod>embed_response/embed_nl/self_attention_head_1/Tensordot/Prod_1*
T0*
N*
_output_shapes
:
С
Aembed_response/embed_nl/self_attention_head_1/Tensordot/transpose	TransposeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1>embed_response/embed_nl/self_attention_head_1/Tensordot/concat*
T0*4
_output_shapes"
 :                  
З
?embed_response/embed_nl/self_attention_head_1/Tensordot/ReshapeReshapeAembed_response/embed_nl/self_attention_head_1/Tensordot/transpose=embed_response/embed_nl/self_attention_head_1/Tensordot/stack*
T0*0
_output_shapes
:                  
Щ
Hembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1/permConst*
valueB"       *
dtype0*
_output_shapes
:
Л
Cembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1	TransposeFembed_response/embed_nl/self_attention_head_1/Tensordot/ReadVariableOpHembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1/perm*
_output_shapes

:*
T0
Ш
Gembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shapeConst*
_output_shapes
:*
valueB"      *
dtype0
Г
Aembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1ReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot/transpose_1Gembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1/shape*
T0*
_output_shapes

:
■
>embed_response/embed_nl/self_attention_head_1/Tensordot/MatMulMatMul?embed_response/embed_nl/self_attention_head_1/Tensordot/ReshapeAembed_response/embed_nl/self_attention_head_1/Tensordot/Reshape_1*
T0*'
_output_shapes
:         
Й
?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_2Const*
valueB:*
dtype0*
_output_shapes
:
З
Eembed_response/embed_nl/self_attention_head_1/Tensordot/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
─
@embed_response/embed_nl/self_attention_head_1/Tensordot/concat_1ConcatV2@embed_response/embed_nl/self_attention_head_1/Tensordot/GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot/Const_2Eembed_response/embed_nl/self_attention_head_1/Tensordot/concat_1/axis*
N*
_output_shapes
:*
T0
Г
7embed_response/embed_nl/self_attention_head_1/TensordotReshape>embed_response/embed_nl/self_attention_head_1/Tensordot/MatMul@embed_response/embed_nl/self_attention_head_1/Tensordot/concat_1*4
_output_shapes"
 :                  *
T0
┤
Hembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpReadVariableOp+embed_nl/self_attention_head_1/keys_weights*
dtype0*
_output_shapes

:
И
>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesConst*
valueB:*
dtype0*
_output_shapes
:
П
>embed_response/embed_nl/self_attention_head_1/Tensordot_1/freeConst*
valueB"       *
dtype0*
_output_shapes
:
▒
?embed_response/embed_nl/self_attention_head_1/Tensordot_1/ShapeShapeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*
T0*
_output_shapes
:
Й
Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
р
Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Shape>embed_response/embed_nl/self_attention_head_1/Tensordot_1/freeGembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
Л
Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
ф
Dembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Shape>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesIembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1/axis*
_output_shapes
:*
Taxis0*
Tindices0*
Tparams0
Й
?embed_response/embed_nl/self_attention_head_1/Tensordot_1/ConstConst*
_output_shapes
:*
valueB: *
dtype0
ь
>embed_response/embed_nl/self_attention_head_1/Tensordot_1/ProdProdBembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2?embed_response/embed_nl/self_attention_head_1/Tensordot_1/Const*
T0*
_output_shapes
: 
Л
Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
Є
@embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod_1ProdDembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2_1Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_1*
_output_shapes
: *
T0
З
Eembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
┴
@embed_response/embed_nl/self_attention_head_1/Tensordot_1/concatConcatV2>embed_response/embed_nl/self_attention_head_1/Tensordot_1/free>embed_response/embed_nl/self_attention_head_1/Tensordot_1/axesEembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat/axis*
T0*
N*
_output_shapes
:
ў
?embed_response/embed_nl/self_attention_head_1/Tensordot_1/stackPack>embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod@embed_response/embed_nl/self_attention_head_1/Tensordot_1/Prod_1*
_output_shapes
:*
T0*
N
Х
Cembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose	TransposeBembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1@embed_response/embed_nl/self_attention_head_1/Tensordot_1/concat*
T0*4
_output_shapes"
 :                  
Н
Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReshapeReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose?embed_response/embed_nl/self_attention_head_1/Tensordot_1/stack*
T0*0
_output_shapes
:                  
Ы
Jembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/permConst*
_output_shapes
:*
valueB"       *
dtype0
С
Eembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1	TransposeHembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReadVariableOpJembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1/perm*
T0*
_output_shapes

:
Ъ
Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*
valueB"      
Й
Cembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1ReshapeEembed_response/embed_nl/self_attention_head_1/Tensordot_1/transpose_1Iembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1/shape*
T0*
_output_shapes

:
Д
@embed_response/embed_nl/self_attention_head_1/Tensordot_1/MatMulMatMulAembed_response/embed_nl/self_attention_head_1/Tensordot_1/ReshapeCembed_response/embed_nl/self_attention_head_1/Tensordot_1/Reshape_1*'
_output_shapes
:         *
T0
Л
Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_2Const*
_output_shapes
:*
valueB:*
dtype0
Й
Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
╠
Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1ConcatV2Bembed_response/embed_nl/self_attention_head_1/Tensordot_1/GatherV2Aembed_response/embed_nl/self_attention_head_1/Tensordot_1/Const_2Gembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1/axis*
T0*
N*
_output_shapes
:
Й
9embed_response/embed_nl/self_attention_head_1/Tensordot_1Reshape@embed_response/embed_nl/self_attention_head_1/Tensordot_1/MatMulBembed_response/embed_nl/self_attention_head_1/Tensordot_1/concat_1*
T0*4
_output_shapes"
 :                  
О
4embed_response/embed_nl/self_attention_head_1/MatMulBatchMatMulV27embed_response/embed_nl/self_attention_head_1/Tensordot9embed_response/embed_nl/self_attention_head_1/Tensordot_1*=
_output_shapes+
):'                           *
adj_y(*
T0
~
<embed_response/embed_nl/self_attention_head_1/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
ў
8embed_response/embed_nl/self_attention_head_1/ExpandDims
ExpandDims2embed_response/embed_nl/self_attention_head_1/Cast<embed_response/embed_nl/self_attention_head_1/ExpandDims/dim*
T0*4
_output_shapes"
 :                  
x
3embed_response/embed_nl/self_attention_head_1/sub/xConst*
valueB
 *  А?*
dtype0*
_output_shapes
: 
ц
1embed_response/embed_nl/self_attention_head_1/subSub3embed_response/embed_nl/self_attention_head_1/sub/x8embed_response/embed_nl/self_attention_head_1/ExpandDims*
T0*4
_output_shapes"
 :                  
x
3embed_response/embed_nl/self_attention_head_1/mul/xConst*
valueB
 *(knN*
dtype0*
_output_shapes
: 
▀
1embed_response/embed_nl/self_attention_head_1/mulMul3embed_response/embed_nl/self_attention_head_1/mul/x1embed_response/embed_nl/self_attention_head_1/sub*4
_output_shapes"
 :                  *
T0
ы
3embed_response/embed_nl/self_attention_head_1/sub_1Sub4embed_response/embed_nl/self_attention_head_1/MatMul1embed_response/embed_nl/self_attention_head_1/mul*
T0*=
_output_shapes+
):'                           
╜
5embed_response/embed_nl/self_attention_head_1/SoftmaxSoftmax3embed_response/embed_nl/self_attention_head_1/sub_1*
T0*=
_output_shapes+
):'                           
Х
Jembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
У
Fembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims
ExpandDims2embed_response/embed_nl/self_attention_head_1/CastJembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims/dim*
T0*4
_output_shapes"
 :                  
Н
?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/mulMul5embed_response/embed_nl/self_attention_head_1/SoftmaxFembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims*
T0*=
_output_shapes+
):'                           
Ь
Qembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indicesConst*
valueB :
■        *
dtype0*
_output_shapes
: 
к
?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/SumSum?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/mulQembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum/reduction_indices*
T0*4
_output_shapes"
 :                  *
	keep_dims(
Х
Sembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
Ф
Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1Sum2embed_response/embed_nl/self_attention_head_1/CastSembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
Д
Bembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Cast/xConst*
value	B :*
dtype0*
_output_shapes
: 
╝
@embed_response/embed_nl/self_attention_head_1/sqrtn_combine/CastCastBembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Cast/x*

DstT0*
_output_shapes
: *

SrcT0
Е
Cembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MaximumMaximum@embed_response/embed_nl/self_attention_head_1/sqrtn_combine/CastAembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Sum_1*
T0*'
_output_shapes
:         
┴
Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtRsqrtCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Maximum*
T0*'
_output_shapes
:         
Ч
Lembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dimConst*
valueB :
         *
dtype0*
_output_shapes
: 
Э
Hembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1
ExpandDimsAembed_response/embed_nl/self_attention_head_1/sqrtn_combine/RsqrtLembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1/dim*+
_output_shapes
:         *
T0
Т
Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Mul?embed_response/embed_nl/self_attention_head_1/sqrtn_combine/SumHembed_response/embed_nl/self_attention_head_1/sqrtn_combine/ExpandDims_1*4
_output_shapes"
 :                  *
T0
Р
Bembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MatMulBatchMatMulV2Aembed_response/embed_nl/self_attention_head_1/sqrtn_combine/mul_1Bembed_response/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1*+
_output_shapes
:         *
T0
█
Cembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeSqueezeBembed_response/embed_nl/self_attention_head_1/sqrtn_combine/MatMul*
squeeze_dims
*
T0*'
_output_shapes
:         
Х
2skip_connection_1/projection/MatMul/ReadVariableOpReadVariableOp"skip_connection/projection/weights*
dtype0*
_output_shapes

:
╪
#skip_connection_1/projection/MatMulMatMulCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze2skip_connection_1/projection/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
╓
Cencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zerosConst*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
А
1encode_nl_feature/layer_norm_input/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *B
shared_name31encode_nl_feature/layer_norm_input/LayerNorm/beta*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta
│
Rencode_nl_feature/layer_norm_input/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*
_output_shapes
: 
Ч
8encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignAssignVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/betaCencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0
∙
Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*D
_class:
86loc:@encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
╫
Cencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/onesConst*
_output_shapes
:*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma*
valueB*  А?*
dtype0
Г
2encode_nl_feature/layer_norm_input/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *C
shared_name42encode_nl_feature/layer_norm_input/LayerNorm/gamma*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma
╡
Sencode_nl_feature/layer_norm_input/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
: 
Ъ
9encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignAssignVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gammaCencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma*
dtype0
№
Fencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*
dtype0*
_output_shapes
:*E
_class;
97loc:@encode_nl_feature/layer_norm_input/LayerNorm/gamma
Х
Kencode_nl_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indicesConst*
dtype0*
_output_shapes
:*
valueB:
Ц
9encode_nl_feature/layer_norm_input/LayerNorm/moments/meanMeanCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeKencode_nl_feature/layer_norm_input/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(
╛
Aencode_nl_feature/layer_norm_input/LayerNorm/moments/StopGradientStopGradient9encode_nl_feature/layer_norm_input/LayerNorm/moments/mean*
T0*'
_output_shapes
:         
Х
Fencode_nl_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceSquaredDifferenceCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/SqueezeAencode_nl_feature/layer_norm_input/LayerNorm/moments/StopGradient*'
_output_shapes
:         *
T0
Щ
Oencode_nl_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
б
=encode_nl_feature/layer_norm_input/LayerNorm/moments/varianceMeanFencode_nl_feature/layer_norm_input/LayerNorm/moments/SquaredDifferenceOencode_nl_feature/layer_norm_input/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:         
Б
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *╠╝М+
Ё
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/addAdd=encode_nl_feature/layer_norm_input/LayerNorm/moments/variance<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add/y*'
_output_shapes
:         *
T0
│
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtRsqrt:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:         
╕
Iencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gamma*
_output_shapes
:*
dtype0
№
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mulMul<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/RsqrtIencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
Ў
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_1MulCembed_response/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
ь
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_2Mul9encode_nl_feature/layer_norm_input/LayerNorm/moments/mean:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
│
Eencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOpReadVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/beta*
dtype0*
_output_shapes
:
°
:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/subSubEencode_nl_feature/layer_norm_input/LayerNorm/batchnorm/ReadVariableOp<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_2*'
_output_shapes
:         *
T0
я
<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add_1Add<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/mul_1:encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/sub*'
_output_shapes
:         *
T0
┌
Jencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/shapeConst*
_output_shapes
:*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0
═
Iencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/meanConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
╧
Kencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddevConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
▓
Yencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalJencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/shape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
▀
Hencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulMulYencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/RandomStandardNormalKencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/stddev*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:
╚
Dencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normalAddHencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mulIencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal/mean*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:*
T0
ў
9encode_nl_feature/layer_0/hidden_0/weights/Initializer/QrQrDencode_nl_feature/layer_0/hidden_0/weights/Initializer/random_normal*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*(
_output_shapes
::
ь
?encode_nl_feature/layer_0/hidden_0/weights/Initializer/DiagPartDiagPart;encode_nl_feature/layer_0/hidden_0/weights/Initializer/Qr:1*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
:*
T0
ш
;encode_nl_feature/layer_0/hidden_0/weights/Initializer/SignSign?encode_nl_feature/layer_0/hidden_0/weights/Initializer/DiagPart*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
:
б
:encode_nl_feature/layer_0/hidden_0/weights/Initializer/mulMul9encode_nl_feature/layer_0/hidden_0/weights/Initializer/Qr;encode_nl_feature/layer_0/hidden_0/weights/Initializer/Sign*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
╘
Dencode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB"      *
dtype0*
_output_shapes
:
│
>encode_nl_feature/layer_0/hidden_0/weights/Initializer/ReshapeReshape:encode_nl_feature/layer_0/hidden_0/weights/Initializer/mulDencode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape/shape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes

:
┬
>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1/xConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
л
<encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1Mul>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1/x>encode_nl_feature/layer_0/hidden_0/weights/Initializer/Reshape*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
я
*encode_nl_feature/layer_0/hidden_0/weightsVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *;
shared_name,*encode_nl_feature/layer_0/hidden_0/weights*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
е
Kencode_nl_feature/layer_0/hidden_0/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp*encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
: 
√
1encode_nl_feature/layer_0/hidden_0/weights/AssignAssignVariableOp*encode_nl_feature/layer_0/hidden_0/weights<encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
dtype0
ш
>encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
╧
Kencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleConst*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╞
[encode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
У
Lencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2LossL2Loss[encode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights*
_output_shapes
: 
╟
Eencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizerMulKencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/scaleLencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*=
_class3
1/loc:@encode_nl_feature/layer_0/hidden_0/weights
г
8encode_nl_feature/layer_0/hidden_0/MatMul/ReadVariableOpReadVariableOp*encode_nl_feature/layer_0/hidden_0/weights*
dtype0*
_output_shapes

:
▌
)encode_nl_feature/layer_0/hidden_0/MatMulMatMul<encode_nl_feature/layer_norm_input/LayerNorm/batchnorm/add_18encode_nl_feature/layer_0/hidden_0/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
М
'encode_nl_feature/layer_0/hidden_0/ReluRelu)encode_nl_feature/layer_0/hidden_0/MatMul*'
_output_shapes
:         *
T0
┌
Eencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zerosConst*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Ж
3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *D
shared_name53encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta
╖
Tencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
: 
Я
:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignAssignVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaEencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0
 
Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
_output_shapes
:*F
_class<
:8loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0
█
Eencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/onesConst*
_output_shapes
:*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
valueB*  А?*
dtype0
Й
4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *E
shared_name64encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma
╣
Uencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
: 
в
;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignAssignVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaEencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0
В
Hencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
_output_shapes
:*G
_class=
;9loc:@encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0
Ч
Mencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
■
;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/meanMean'encode_nl_feature/layer_0/hidden_0/ReluMencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(
┬
Cencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/StopGradientStopGradient;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:         
¤
Hencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference'encode_nl_feature/layer_0/hidden_0/ReluCencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
Ы
Qencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
з
?encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/varianceMeanHencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/SquaredDifferenceQencode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
Г
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
Ў
<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/addAdd?encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/variance>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add/y*
T0*'
_output_shapes
:         
╖
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:         *
T0
╝
Kencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
В
<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mulMul>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/RsqrtKencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
▐
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1Mul'encode_nl_feature/layer_0/hidden_0/Relu<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
Є
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2Mul;encode_nl_feature/layer_0/layer_norm/LayerNorm/moments/mean<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
╖
Gencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
■
<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/subSubGencode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/ReadVariableOp>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:         
ї
>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_1Add>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/mul_1<encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:         *
T0
┌
Jencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
═
Iencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/meanConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
╧
Kencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddevConst*
_output_shapes
: *=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *  А?*
dtype0
▓
Yencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormalJencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
▀
Hencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulMulYencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/RandomStandardNormalKencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/stddev*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
╚
Dencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normalAddHencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mulIencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal/mean*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
ў
9encode_nl_feature/layer_1/hidden_1/weights/Initializer/QrQrDencode_nl_feature/layer_1/hidden_1/weights/Initializer/random_normal*(
_output_shapes
::*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
ь
?encode_nl_feature/layer_1/hidden_1/weights/Initializer/DiagPartDiagPart;encode_nl_feature/layer_1/hidden_1/weights/Initializer/Qr:1*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
:
ш
;encode_nl_feature/layer_1/hidden_1/weights/Initializer/SignSign?encode_nl_feature/layer_1/hidden_1/weights/Initializer/DiagPart*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
:
б
:encode_nl_feature/layer_1/hidden_1/weights/Initializer/mulMul9encode_nl_feature/layer_1/hidden_1/weights/Initializer/Qr;encode_nl_feature/layer_1/hidden_1/weights/Initializer/Sign*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
ц
Vencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/permConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"       *
dtype0*
_output_shapes
:
┌
Qencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose	Transpose:encode_nl_feature/layer_1/hidden_1/weights/Initializer/mulVencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transpose/perm*
_output_shapes

:*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
╘
Dencode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape/shapeConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB"      *
dtype0*
_output_shapes
:
╩
>encode_nl_feature/layer_1/hidden_1/weights/Initializer/ReshapeReshapeQencode_nl_feature/layer_1/hidden_1/weights/Initializer/matrix_transpose/transposeDencode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape/shape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
┬
>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1/xConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
л
<encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1Mul>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1/x>encode_nl_feature/layer_1/hidden_1/weights/Initializer/Reshape*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes

:
я
*encode_nl_feature/layer_1/hidden_1/weightsVarHandleOp*
dtype0*
_output_shapes
: *;
shared_name,*encode_nl_feature/layer_1/hidden_1/weights*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
shape
:
е
Kencode_nl_feature/layer_1/hidden_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOp*encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
: 
√
1encode_nl_feature/layer_1/hidden_1/weights/AssignAssignVariableOp*encode_nl_feature/layer_1/hidden_1/weights<encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
dtype0
ш
>encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
╧
Kencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleConst*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
valueB
 *═╠╠=*
dtype0*
_output_shapes
: 
╞
[encode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
У
Lencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2LossL2Loss[encode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights*
_output_shapes
: 
╟
Eencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizerMulKencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/scaleLencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer/L2Loss*
_output_shapes
: *
T0*=
_class3
1/loc:@encode_nl_feature/layer_1/hidden_1/weights
г
8encode_nl_feature/layer_1/hidden_1/MatMul/ReadVariableOpReadVariableOp*encode_nl_feature/layer_1/hidden_1/weights*
dtype0*
_output_shapes

:
▀
)encode_nl_feature/layer_1/hidden_1/MatMulMatMul>encode_nl_feature/layer_0/layer_norm/LayerNorm/batchnorm/add_18encode_nl_feature/layer_1/hidden_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
М
'encode_nl_feature/layer_1/hidden_1/ReluRelu)encode_nl_feature/layer_1/hidden_1/MatMul*
T0*'
_output_shapes
:         
┌
Eencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zerosConst*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
Ж
3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaVarHandleOp*
_output_shapes
: *D
shared_name53encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
shape:*
dtype0
╖
Tencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
_output_shapes
: 
Я
:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignAssignVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaEencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros*
dtype0*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta
 
Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:*F
_class<
:8loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/beta
█
Eencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/onesConst*
dtype0*
_output_shapes
:*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
valueB*  А?
Й
4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaVarHandleOp*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: *E
shared_name64encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma
╣
Uencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
: 
в
;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignAssignVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaEencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0
В
Hencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
_output_shapes
:*G
_class=
;9loc:@encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0
Ч
Mencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
■
;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/meanMean'encode_nl_feature/layer_1/hidden_1/ReluMencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
┬
Cencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/StopGradientStopGradient;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean*'
_output_shapes
:         *
T0
¤
Hencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifference'encode_nl_feature/layer_1/hidden_1/ReluCencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
Ы
Qencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
з
?encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/varianceMeanHencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/SquaredDifferenceQencode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
Г
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
Ў
<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/addAdd?encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/variance>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:         *
T0
╖
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add*
T0*'
_output_shapes
:         
╝
Kencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
В
<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mulMul>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/RsqrtKencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:         
▐
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1Mul'encode_nl_feature/layer_1/hidden_1/Relu<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
Є
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2Mul;encode_nl_feature/layer_1/layer_norm/LayerNorm/moments/mean<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
╖
Gencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
■
<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/subSubGencode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/ReadVariableOp>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_2*
T0*'
_output_shapes
:         
ї
>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1Add>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/mul_1<encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/sub*'
_output_shapes
:         *
T0
─
?encode_nl_feature/final/weights/Initializer/random_normal/shapeConst*
_output_shapes
:*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"      *
dtype0
╖
>encode_nl_feature/final/weights/Initializer/random_normal/meanConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *    *
dtype0*
_output_shapes
: 
╣
@encode_nl_feature/final/weights/Initializer/random_normal/stddevConst*
dtype0*
_output_shapes
: *2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *  А?
С
Nencode_nl_feature/final/weights/Initializer/random_normal/RandomStandardNormalRandomStandardNormal?encode_nl_feature/final/weights/Initializer/random_normal/shape*
dtype0*
_output_shapes

:*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights
│
=encode_nl_feature/final/weights/Initializer/random_normal/mulMulNencode_nl_feature/final/weights/Initializer/random_normal/RandomStandardNormal@encode_nl_feature/final/weights/Initializer/random_normal/stddev*
_output_shapes

:*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights
Ь
9encode_nl_feature/final/weights/Initializer/random_normalAdd=encode_nl_feature/final/weights/Initializer/random_normal/mul>encode_nl_feature/final/weights/Initializer/random_normal/mean*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
╓
.encode_nl_feature/final/weights/Initializer/QrQr9encode_nl_feature/final/weights/Initializer/random_normal*2
_class(
&$loc:@encode_nl_feature/final/weights*(
_output_shapes
::*
T0
╦
4encode_nl_feature/final/weights/Initializer/DiagPartDiagPart0encode_nl_feature/final/weights/Initializer/Qr:1*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
:*
T0
╟
0encode_nl_feature/final/weights/Initializer/SignSign4encode_nl_feature/final/weights/Initializer/DiagPart*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
:
ї
/encode_nl_feature/final/weights/Initializer/mulMul.encode_nl_feature/final/weights/Initializer/Qr0encode_nl_feature/final/weights/Initializer/Sign*
_output_shapes

:*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights
╨
Kencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose/permConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"       *
dtype0*
_output_shapes
:
о
Fencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose	Transpose/encode_nl_feature/final/weights/Initializer/mulKencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose/perm*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
╛
9encode_nl_feature/final/weights/Initializer/Reshape/shapeConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB"      *
dtype0*
_output_shapes
:
Ю
3encode_nl_feature/final/weights/Initializer/ReshapeReshapeFencode_nl_feature/final/weights/Initializer/matrix_transpose/transpose9encode_nl_feature/final/weights/Initializer/Reshape/shape*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
м
3encode_nl_feature/final/weights/Initializer/mul_1/xConst*2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *  А?*
dtype0*
_output_shapes
: 
 
1encode_nl_feature/final/weights/Initializer/mul_1Mul3encode_nl_feature/final/weights/Initializer/mul_1/x3encode_nl_feature/final/weights/Initializer/Reshape*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes

:
╬
encode_nl_feature/final/weightsVarHandleOp*
shape
:*
dtype0*
_output_shapes
: *0
shared_name!encode_nl_feature/final/weights*2
_class(
&$loc:@encode_nl_feature/final/weights
П
@encode_nl_feature/final/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpencode_nl_feature/final/weights*
_output_shapes
: 
╧
&encode_nl_feature/final/weights/AssignAssignVariableOpencode_nl_feature/final/weights1encode_nl_feature/final/weights/Initializer/mul_1*
dtype0*2
_class(
&$loc:@encode_nl_feature/final/weights
╟
3encode_nl_feature/final/weights/Read/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*2
_class(
&$loc:@encode_nl_feature/final/weights*
dtype0*
_output_shapes

:
╣
@encode_nl_feature/final/weights/Regularizer/l2_regularizer/scaleConst*
_output_shapes
: *2
_class(
&$loc:@encode_nl_feature/final/weights*
valueB
 *═╠╠=*
dtype0
░
Pencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*
_output_shapes

:*
dtype0
Є
Aencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2LossL2LossPencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss/ReadVariableOp*
_output_shapes
: *
T0*2
_class(
&$loc:@encode_nl_feature/final/weights
Ы
:encode_nl_feature/final/weights/Regularizer/l2_regularizerMul@encode_nl_feature/final/weights/Regularizer/l2_regularizer/scaleAencode_nl_feature/final/weights/Regularizer/l2_regularizer/L2Loss*
T0*2
_class(
&$loc:@encode_nl_feature/final/weights*
_output_shapes
: 
Н
-encode_nl_feature/final/MatMul/ReadVariableOpReadVariableOpencode_nl_feature/final/weights*
dtype0*
_output_shapes

:
╔
encode_nl_feature/final/MatMulMatMul>encode_nl_feature/layer_1/layer_norm/LayerNorm/batchnorm/add_1-encode_nl_feature/final/MatMul/ReadVariableOp*
T0*'
_output_shapes
:         
У
encode_nl_feature/addAddencode_nl_feature/final/MatMul#skip_connection_1/projection/MatMul*
T0*'
_output_shapes
:         
╩
=encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zerosConst*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
valueB*    *
dtype0*
_output_shapes
:
ю
+encode_nl_feature/layer_norm/LayerNorm/betaVarHandleOp*
shape:*
dtype0*
_output_shapes
: *<
shared_name-+encode_nl_feature/layer_norm/LayerNorm/beta*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta
з
Lencode_nl_feature/layer_norm/LayerNorm/beta/IsInitialized/VarIsInitializedOpVarIsInitializedOp+encode_nl_feature/layer_norm/LayerNorm/beta*
_output_shapes
: 
 
2encode_nl_feature/layer_norm/LayerNorm/beta/AssignAssignVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta=encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0
ч
?encode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpReadVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:*>
_class4
20loc:@encode_nl_feature/layer_norm/LayerNorm/beta
╦
=encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/onesConst*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
valueB*  А?*
dtype0*
_output_shapes
:
ё
,encode_nl_feature/layer_norm/LayerNorm/gammaVarHandleOp*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
shape:*
dtype0*
_output_shapes
: *=
shared_name.,encode_nl_feature/layer_norm/LayerNorm/gamma
й
Mencode_nl_feature/layer_norm/LayerNorm/gamma/IsInitialized/VarIsInitializedOpVarIsInitializedOp,encode_nl_feature/layer_norm/LayerNorm/gamma*
_output_shapes
: 
В
3encode_nl_feature/layer_norm/LayerNorm/gamma/AssignAssignVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma=encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0
ъ
@encode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma*?
_class5
31loc:@encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
П
Eencode_nl_feature/layer_norm/LayerNorm/moments/mean/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
▄
3encode_nl_feature/layer_norm/LayerNorm/moments/meanMeanencode_nl_feature/addEencode_nl_feature/layer_norm/LayerNorm/moments/mean/reduction_indices*
T0*'
_output_shapes
:         *
	keep_dims(
▓
;encode_nl_feature/layer_norm/LayerNorm/moments/StopGradientStopGradient3encode_nl_feature/layer_norm/LayerNorm/moments/mean*
T0*'
_output_shapes
:         
█
@encode_nl_feature/layer_norm/LayerNorm/moments/SquaredDifferenceSquaredDifferenceencode_nl_feature/add;encode_nl_feature/layer_norm/LayerNorm/moments/StopGradient*
T0*'
_output_shapes
:         
У
Iencode_nl_feature/layer_norm/LayerNorm/moments/variance/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
П
7encode_nl_feature/layer_norm/LayerNorm/moments/varianceMean@encode_nl_feature/layer_norm/LayerNorm/moments/SquaredDifferenceIencode_nl_feature/layer_norm/LayerNorm/moments/variance/reduction_indices*
	keep_dims(*
T0*'
_output_shapes
:         
{
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add/yConst*
dtype0*
_output_shapes
: *
valueB
 *╠╝М+
▐
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/addAdd7encode_nl_feature/layer_norm/LayerNorm/moments/variance6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add/y*'
_output_shapes
:         *
T0
з
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/RsqrtRsqrt4encode_nl_feature/layer_norm/LayerNorm/batchnorm/add*'
_output_shapes
:         *
T0
м
Cencode_nl_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp,encode_nl_feature/layer_norm/LayerNorm/gamma*
dtype0*
_output_shapes
:
ъ
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mulMul6encode_nl_feature/layer_norm/LayerNorm/batchnorm/RsqrtCencode_nl_feature/layer_norm/LayerNorm/batchnorm/mul/ReadVariableOp*'
_output_shapes
:         *
T0
╝
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_1Mulencode_nl_feature/add4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul*
T0*'
_output_shapes
:         
┌
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_2Mul3encode_nl_feature/layer_norm/LayerNorm/moments/mean4encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul*'
_output_shapes
:         *
T0
з
?encode_nl_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOpReadVariableOp+encode_nl_feature/layer_norm/LayerNorm/beta*
dtype0*
_output_shapes
:
ц
4encode_nl_feature/layer_norm/LayerNorm/batchnorm/subSub?encode_nl_feature/layer_norm/LayerNorm/batchnorm/ReadVariableOp6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_2*'
_output_shapes
:         *
T0
▌
6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_1Add6encode_nl_feature/layer_norm/LayerNorm/batchnorm/mul_14encode_nl_feature/layer_norm/LayerNorm/batchnorm/sub*
T0*'
_output_shapes
:         
к
6encode_nl_feature/normalize/nl_feature_encoding/SquareSquare6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_1*'
_output_shapes
:         *
T0
З
Eencode_nl_feature/normalize/nl_feature_encoding/Sum/reduction_indicesConst*
dtype0*
_output_shapes
: *
value	B :
№
3encode_nl_feature/normalize/nl_feature_encoding/SumSum6encode_nl_feature/normalize/nl_feature_encoding/SquareEencode_nl_feature/normalize/nl_feature_encoding/Sum/reduction_indices*'
_output_shapes
:         *
	keep_dims(*
T0
~
9encode_nl_feature/normalize/nl_feature_encoding/Maximum/yConst*
valueB
 *╠╝М+*
dtype0*
_output_shapes
: 
ф
7encode_nl_feature/normalize/nl_feature_encoding/MaximumMaximum3encode_nl_feature/normalize/nl_feature_encoding/Sum9encode_nl_feature/normalize/nl_feature_encoding/Maximum/y*
T0*'
_output_shapes
:         
й
5encode_nl_feature/normalize/nl_feature_encoding/RsqrtRsqrt7encode_nl_feature/normalize/nl_feature_encoding/Maximum*
T0*'
_output_shapes
:         
╫
/encode_nl_feature/normalize/nl_feature_encodingMul6encode_nl_feature/layer_norm/LayerNorm/batchnorm/add_15encode_nl_feature/normalize/nl_feature_encoding/Rsqrt*
T0*'
_output_shapes
:         
z
nl_encodingIdentity/encode_nl_feature/normalize/nl_feature_encoding*
T0*'
_output_shapes
:         
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
╪
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:*Л
valueБB■
B(embed_nl/layer_norm_input/LayerNorm/betaB)embed_nl/layer_norm_input/LayerNorm/gammaB embed_nl/positional_embeddings/0B+embed_nl/self_attention_head_1/keys_weightsB,embed_nl/self_attention_head_1/query_weightsB%embedding_matrices/subword_embeddingsB$encode_context_feature/final/weightsB/encode_context_feature/layer_0/hidden_0/weightsB8encode_context_feature/layer_0/layer_norm/LayerNorm/betaB9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaB/encode_context_feature/layer_1/hidden_1/weightsB8encode_context_feature/layer_1/layer_norm/LayerNorm/betaB9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaB0encode_context_feature/layer_norm/LayerNorm/betaB1encode_context_feature/layer_norm/LayerNorm/gammaB6encode_context_feature/layer_norm_input/LayerNorm/betaB7encode_context_feature/layer_norm_input/LayerNorm/gammaBencode_nl_feature/final/weightsB*encode_nl_feature/layer_0/hidden_0/weightsB3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaB*encode_nl_feature/layer_1/hidden_1/weightsB3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaB+encode_nl_feature/layer_norm/LayerNorm/betaB,encode_nl_feature/layer_norm/LayerNorm/gammaB1encode_nl_feature/layer_norm_input/LayerNorm/betaB2encode_nl_feature/layer_norm_input/LayerNorm/gammaB"skip_connection/projection/weights
Э
save/SaveV2/shape_and_slicesConst*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
└
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices<embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp=embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp4embed_nl/positional_embeddings/0/Read/ReadVariableOp?embed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp@embed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp9embedding_matrices/subword_embeddings/Read/ReadVariableOp8encode_context_feature/final/weights/Read/ReadVariableOpCencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOpLencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpMencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOpCencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOpLencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpMencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOpDencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOpEencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpJencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpKencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp3encode_nl_feature/final/weights/Read/ReadVariableOp>encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOpGencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOpHencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp>encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOpGencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOpHencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp?encode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp@encode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOpEencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOpFencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp6skip_connection/projection/weights/Read/ReadVariableOp*+
dtypes!
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ъ
save/RestoreV2/tensor_namesConst"/device:CPU:0*Л
valueБB■
B(embed_nl/layer_norm_input/LayerNorm/betaB)embed_nl/layer_norm_input/LayerNorm/gammaB embed_nl/positional_embeddings/0B+embed_nl/self_attention_head_1/keys_weightsB,embed_nl/self_attention_head_1/query_weightsB%embedding_matrices/subword_embeddingsB$encode_context_feature/final/weightsB/encode_context_feature/layer_0/hidden_0/weightsB8encode_context_feature/layer_0/layer_norm/LayerNorm/betaB9encode_context_feature/layer_0/layer_norm/LayerNorm/gammaB/encode_context_feature/layer_1/hidden_1/weightsB8encode_context_feature/layer_1/layer_norm/LayerNorm/betaB9encode_context_feature/layer_1/layer_norm/LayerNorm/gammaB0encode_context_feature/layer_norm/LayerNorm/betaB1encode_context_feature/layer_norm/LayerNorm/gammaB6encode_context_feature/layer_norm_input/LayerNorm/betaB7encode_context_feature/layer_norm_input/LayerNorm/gammaBencode_nl_feature/final/weightsB*encode_nl_feature/layer_0/hidden_0/weightsB3encode_nl_feature/layer_0/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammaB*encode_nl_feature/layer_1/hidden_1/weightsB3encode_nl_feature/layer_1/layer_norm/LayerNorm/betaB4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammaB+encode_nl_feature/layer_norm/LayerNorm/betaB,encode_nl_feature/layer_norm/LayerNorm/gammaB1encode_nl_feature/layer_norm_input/LayerNorm/betaB2encode_nl_feature/layer_norm_input/LayerNorm/gammaB"skip_connection/projection/weights*
dtype0*
_output_shapes
:
п
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
м
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*+
dtypes!
2*И
_output_shapesv
t:::::::::::::::::::::::::::::
L
save/IdentityIdentitysave/RestoreV2*
_output_shapes
:*
T0
o
save/AssignVariableOpAssignVariableOp(embed_nl/layer_norm_input/LayerNorm/betasave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
t
save/AssignVariableOp_1AssignVariableOp)embed_nl/layer_norm_input/LayerNorm/gammasave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
_output_shapes
:*
T0
k
save/AssignVariableOp_2AssignVariableOp embed_nl/positional_embeddings/0save/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
v
save/AssignVariableOp_3AssignVariableOp+embed_nl/self_attention_head_1/keys_weightssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
w
save/AssignVariableOp_4AssignVariableOp,embed_nl/self_attention_head_1/query_weightssave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
p
save/AssignVariableOp_5AssignVariableOp%embedding_matrices/subword_embeddingssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
o
save/AssignVariableOp_6AssignVariableOp$encode_context_feature/final/weightssave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
z
save/AssignVariableOp_7AssignVariableOp/encode_context_feature/layer_0/hidden_0/weightssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
Г
save/AssignVariableOp_8AssignVariableOp8encode_context_feature/layer_0/layer_norm/LayerNorm/betasave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Д
save/AssignVariableOp_9AssignVariableOp9encode_context_feature/layer_0/layer_norm/LayerNorm/gammasave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
|
save/AssignVariableOp_10AssignVariableOp/encode_context_feature/layer_1/hidden_1/weightssave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
_output_shapes
:*
T0
Е
save/AssignVariableOp_11AssignVariableOp8encode_context_feature/layer_1/layer_norm/LayerNorm/betasave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
Ж
save/AssignVariableOp_12AssignVariableOp9encode_context_feature/layer_1/layer_norm/LayerNorm/gammasave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
}
save/AssignVariableOp_13AssignVariableOp0encode_context_feature/layer_norm/LayerNorm/betasave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
~
save/AssignVariableOp_14AssignVariableOp1encode_context_feature/layer_norm/LayerNorm/gammasave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
_output_shapes
:*
T0
Г
save/AssignVariableOp_15AssignVariableOp6encode_context_feature/layer_norm_input/LayerNorm/betasave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
Д
save/AssignVariableOp_16AssignVariableOp7encode_context_feature/layer_norm_input/LayerNorm/gammasave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
_output_shapes
:*
T0
l
save/AssignVariableOp_17AssignVariableOpencode_nl_feature/final/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
w
save/AssignVariableOp_18AssignVariableOp*encode_nl_feature/layer_0/hidden_0/weightssave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
А
save/AssignVariableOp_19AssignVariableOp3encode_nl_feature/layer_0/layer_norm/LayerNorm/betasave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
Б
save/AssignVariableOp_20AssignVariableOp4encode_nl_feature/layer_0/layer_norm/LayerNorm/gammasave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
w
save/AssignVariableOp_21AssignVariableOp*encode_nl_feature/layer_1/hidden_1/weightssave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
А
save/AssignVariableOp_22AssignVariableOp3encode_nl_feature/layer_1/layer_norm/LayerNorm/betasave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
Б
save/AssignVariableOp_23AssignVariableOp4encode_nl_feature/layer_1/layer_norm/LayerNorm/gammasave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
_output_shapes
:*
T0
x
save/AssignVariableOp_24AssignVariableOp+encode_nl_feature/layer_norm/LayerNorm/betasave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
_output_shapes
:*
T0
y
save/AssignVariableOp_25AssignVariableOp,encode_nl_feature/layer_norm/LayerNorm/gammasave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:
~
save/AssignVariableOp_26AssignVariableOp1encode_nl_feature/layer_norm_input/LayerNorm/betasave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
_output_shapes
:*
T0

save/AssignVariableOp_27AssignVariableOp2encode_nl_feature/layer_norm_input/LayerNorm/gammasave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
_output_shapes
:*
T0
o
save/AssignVariableOp_28AssignVariableOp"skip_connection/projection/weightssave/Identity_28*
dtype0
Ы
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
f
ConstConst*1
value(B& B 5997d69a2c6e4870920685e48f828146*
dtype0*
_output_shapes
: 
6
idIdentityConst*
_output_shapes
: *
T0"&"°
regularization_losses▐
█
Iembed_context/embed_nl/EmbeddingLookupUnique/get_regularization_penalty:0
=embed_nl/positional_embeddings/0/Regularizer/l2_regularizer:0
Iembed_nl/self_attention_head_1/query_weights/Regularizer/l2_regularizer:0
Hembed_nl/self_attention_head_1/keys_weights/Regularizer/l2_regularizer:0
?skip_connection/projection/weights/Regularizer/l2_regularizer:0
Lencode_context_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Lencode_context_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
Aencode_context_feature/final/weights/Regularizer/l2_regularizer:0
Jembed_response/embed_nl/EmbeddingLookupUnique/get_regularization_penalty:0
Gencode_nl_feature/layer_0/hidden_0/weights/Regularizer/l2_regularizer:0
Gencode_nl_feature/layer_1/hidden_1/weights/Regularizer/l2_regularizer:0
<encode_nl_feature/final/weights/Regularizer/l2_regularizer:0"╓%
model_variables┬%┐%
▀
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
Ч
8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ъ
9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
Я
:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
Я
:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
 
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
В
3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Г
3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ж
4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
Л
5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
Л
5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08"а9
trainable_variablesИ9Е9
▄
'embedding_matrices/subword_embeddings:0,embedding_matrices/subword_embeddings/Assign;embedding_matrices/subword_embeddings/Read/ReadVariableOp:0(2Bembedding_matrices/subword_embeddings/Initializer/random_uniform:08
╚
"embed_nl/positional_embeddings/0:0'embed_nl/positional_embeddings/0/Assign6embed_nl/positional_embeddings/0/Read/ReadVariableOp:0(2=embed_nl/positional_embeddings/0/Initializer/random_uniform:08
▀
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
°
.embed_nl/self_attention_head_1/query_weights:03embed_nl/self_attention_head_1/query_weights/AssignBembed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp:0(2Iembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform:08
Ї
-embed_nl/self_attention_head_1/keys_weights:02embed_nl/self_attention_head_1/keys_weights/AssignAembed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp:0(2Hembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform:08
╟
$skip_connection/projection/weights:0)skip_connection/projection/weights/Assign8skip_connection/projection/weights/Read/ReadVariableOp:0(26skip_connection/projection/weights/Initializer/mul_1:08
Ч
8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ъ
9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
√
1encode_context_feature/layer_0/hidden_0/weights:06encode_context_feature/layer_0/hidden_0/weights/AssignEencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
Я
:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
√
1encode_context_feature/layer_1/hidden_1/weights:06encode_context_feature/layer_1/hidden_1/weights/AssignEencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
Я
:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
╧
&encode_context_feature/final/weights:0+encode_context_feature/final/weights/Assign:encode_context_feature/final/weights/Read/ReadVariableOp:0(28encode_context_feature/final/weights/Initializer/mul_1:08
 
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
В
3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Г
3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ж
4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_0/hidden_0/weights:01encode_nl_feature/layer_0/hidden_0/weights/Assign@encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
Л
5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_1/hidden_1/weights:01encode_nl_feature/layer_1/hidden_1/weights/Assign@encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
Л
5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
╗
!encode_nl_feature/final/weights:0&encode_nl_feature/final/weights/Assign5encode_nl_feature/final/weights/Read/ReadVariableOp:0(23encode_nl_feature/final/weights/Initializer/mul_1:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08"Ц9
	variablesИ9Е9
▄
'embedding_matrices/subword_embeddings:0,embedding_matrices/subword_embeddings/Assign;embedding_matrices/subword_embeddings/Read/ReadVariableOp:0(2Bembedding_matrices/subword_embeddings/Initializer/random_uniform:08
╚
"embed_nl/positional_embeddings/0:0'embed_nl/positional_embeddings/0/Assign6embed_nl/positional_embeddings/0/Read/ReadVariableOp:0(2=embed_nl/positional_embeddings/0/Initializer/random_uniform:08
▀
*embed_nl/layer_norm_input/LayerNorm/beta:0/embed_nl/layer_norm_input/LayerNorm/beta/Assign>embed_nl/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
т
+embed_nl/layer_norm_input/LayerNorm/gamma:00embed_nl/layer_norm_input/LayerNorm/gamma/Assign?embed_nl/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2<embed_nl/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
°
.embed_nl/self_attention_head_1/query_weights:03embed_nl/self_attention_head_1/query_weights/AssignBembed_nl/self_attention_head_1/query_weights/Read/ReadVariableOp:0(2Iembed_nl/self_attention_head_1/query_weights/Initializer/random_uniform:08
Ї
-embed_nl/self_attention_head_1/keys_weights:02embed_nl/self_attention_head_1/keys_weights/AssignAembed_nl/self_attention_head_1/keys_weights/Read/ReadVariableOp:0(2Hembed_nl/self_attention_head_1/keys_weights/Initializer/random_uniform:08
╟
$skip_connection/projection/weights:0)skip_connection/projection/weights/Assign8skip_connection/projection/weights/Read/ReadVariableOp:0(26skip_connection/projection/weights/Initializer/mul_1:08
Ч
8encode_context_feature/layer_norm_input/LayerNorm/beta:0=encode_context_feature/layer_norm_input/LayerNorm/beta/AssignLencode_context_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ъ
9encode_context_feature/layer_norm_input/LayerNorm/gamma:0>encode_context_feature/layer_norm_input/LayerNorm/gamma/AssignMencode_context_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Jencode_context_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
√
1encode_context_feature/layer_0/hidden_0/weights:06encode_context_feature/layer_0/hidden_0/weights/AssignEencode_context_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
Я
:encode_context_feature/layer_0/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_0/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_0/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_0/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
√
1encode_context_feature/layer_1/hidden_1/weights:06encode_context_feature/layer_1/hidden_1/weights/AssignEencode_context_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2Cencode_context_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
Я
:encode_context_feature/layer_1/layer_norm/LayerNorm/beta:0?encode_context_feature/layer_1/layer_norm/LayerNorm/beta/AssignNencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
в
;encode_context_feature/layer_1/layer_norm/LayerNorm/gamma:0@encode_context_feature/layer_1/layer_norm/LayerNorm/gamma/AssignOencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Lencode_context_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
╧
&encode_context_feature/final/weights:0+encode_context_feature/final/weights/Assign:encode_context_feature/final/weights/Read/ReadVariableOp:0(28encode_context_feature/final/weights/Initializer/mul_1:08
 
2encode_context_feature/layer_norm/LayerNorm/beta:07encode_context_feature/layer_norm/LayerNorm/beta/AssignFencode_context_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
В
3encode_context_feature/layer_norm/LayerNorm/gamma:08encode_context_feature/layer_norm/LayerNorm/gamma/AssignGencode_context_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Dencode_context_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08
Г
3encode_nl_feature/layer_norm_input/LayerNorm/beta:08encode_nl_feature/layer_norm_input/LayerNorm/beta/AssignGencode_nl_feature/layer_norm_input/LayerNorm/beta/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/beta/Initializer/zeros:08
Ж
4encode_nl_feature/layer_norm_input/LayerNorm/gamma:09encode_nl_feature/layer_norm_input/LayerNorm/gamma/AssignHencode_nl_feature/layer_norm_input/LayerNorm/gamma/Read/ReadVariableOp:0(2Eencode_nl_feature/layer_norm_input/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_0/hidden_0/weights:01encode_nl_feature/layer_0/hidden_0/weights/Assign@encode_nl_feature/layer_0/hidden_0/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_0/hidden_0/weights/Initializer/mul_1:08
Л
5encode_nl_feature/layer_0/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_0/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_0/layer_norm/LayerNorm/gamma/Initializer/ones:08
ч
,encode_nl_feature/layer_1/hidden_1/weights:01encode_nl_feature/layer_1/hidden_1/weights/Assign@encode_nl_feature/layer_1/hidden_1/weights/Read/ReadVariableOp:0(2>encode_nl_feature/layer_1/hidden_1/weights/Initializer/mul_1:08
Л
5encode_nl_feature/layer_1/layer_norm/LayerNorm/beta:0:encode_nl_feature/layer_1/layer_norm/LayerNorm/beta/AssignIencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/beta/Initializer/zeros:08
О
6encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma:0;encode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/AssignJencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2Gencode_nl_feature/layer_1/layer_norm/LayerNorm/gamma/Initializer/ones:08
╗
!encode_nl_feature/final/weights:0&encode_nl_feature/final/weights/Assign5encode_nl_feature/final/weights/Read/ReadVariableOp:0(23encode_nl_feature/final/weights/Initializer/mul_1:08
ы
-encode_nl_feature/layer_norm/LayerNorm/beta:02encode_nl_feature/layer_norm/LayerNorm/beta/AssignAencode_nl_feature/layer_norm/LayerNorm/beta/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/beta/Initializer/zeros:08
ю
.encode_nl_feature/layer_norm/LayerNorm/gamma:03encode_nl_feature/layer_norm/LayerNorm/gamma/AssignBencode_nl_feature/layer_norm/LayerNorm/gamma/Read/ReadVariableOp:0(2?encode_nl_feature/layer_norm/LayerNorm/gamma/Initializer/ones:08"╕
table_initializerв
Я
[SubwordTokenizer/tokenizer/SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2
@SubwordTokenizer/lookup_table/key_value_init/LookupTableImportV2"╘О
cond_context┬О╛О
╡
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_textrSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *╙
}SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0ш
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
╫
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*ї
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
sSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0ш
rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0rSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0╫
[SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0xSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0┐
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_2:0zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
┼
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_texttSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *▌
SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0ь
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
т
vSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_text_1tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0*·
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
|SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
БSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0ь
tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0█
]SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0zSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0╡
5SubwordTokenizer/tokenize/RaggedFromValueRowIds/sub:0|SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
х
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_textXSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0 *╤
cSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency:0
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0┤
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
Ю
ZSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_text_1XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0*К
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0
`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2:0
^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4:0
eSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1:0
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
YSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0
+SubwordTokenizer/tokenize/strided_slice_1:0е
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/strided_slice_5:0`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0┤
XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0XSubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0г
ASubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/All:0^SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0П
+SubwordTokenizer/tokenize/strided_slice_1:0`SubwordTokenizer/tokenize/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
┼
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_texttSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0 *▌
SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency:0
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_t:0ь
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
■
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/cond_text_1tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0*Ц
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
БSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0
uSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0ь
tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0tSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/pred_id:0█
]SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/All:0zSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch:0├
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_2:0|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
╓
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_textvSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0 *ш
БSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency:0
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_t:0Ё
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
И
xSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/cond_text_1vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0*Ъ
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0
~SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_0:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_1:0
|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/data_2:0
ГSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/control_dependency_1:0
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0
wSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/switch_f:0
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0Ё
vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0vSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/pred_id:0▀
_SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/All:0|SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch:0╣
7SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/sub:0~SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_non_negative_1/assert_less_equal/Assert/AssertGuard/Assert/Switch_1:0
ї
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_textZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0 *█
eSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency:0
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_t:0╕
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
╬
\SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/cond_text_1ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0*┤
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0
bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0
bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_0:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_1:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_2:0
`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/data_4:0
gSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/control_dependency_1:0
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0
[SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/switch_f:0
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0
-SubwordTokenizer/tokenize_1/strided_slice_1:0й
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/strided_slice_5:0bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_1:0╕
ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0ZSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/pred_id:0з
CSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/All:0`SubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch:0У
-SubwordTokenizer/tokenize_1/strided_slice_1:0bSubwordTokenizer/tokenize_1/RaggedFromValueRowIds/assert_less/Assert/AssertGuard/Assert/Switch_2:0*е
defaultЩ
/
default$
context_feature:0         f
default[
Dembed_context/embed_nl/self_attention_head_1/sqrtn_combine/Squeeze:0         *Х
encode_responseБ
*
default
nl_feature:0         S
defaultH
1encode_nl_feature/normalize/nl_feature_encoding:0         *г
encode_contextР
/
default$
context_feature:0         ]
defaultR
;encode_context_feature/normalize/context_feature_encoding:0         *┼
encode_context_and_responseе
+
response
nl_feature:0         
/
context$
context_feature:0         ]
response_encodingH
1encode_nl_feature/normalize/nl_feature_encoding:0         f
context_encodingR
;encode_context_feature/normalize/context_feature_encoding:0         *y
tokenizem
/
default$
context_feature:0         :
default/
SparseToDense:0                  *■
encode_sequenceъ
/
default$
context_feature:0         9
tokens/
SparseToDense:0                  |
sequence_encodingg
Cembed_context/embed_nl/layer_norm_input/LayerNorm/batchnorm/add_1:0                  