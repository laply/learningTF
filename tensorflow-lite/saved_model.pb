�w
��
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring �
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape�"serve*1.14.02unknown8�g
x
dense_3/kernelVarHandleOp*
shape
:*
shared_namedense_3/kernel*
dtype0*
_output_shapes
: 
�
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*!
_class
loc:@dense_3/kernel*
dtype0*
_output_shapes

:
p
dense_3/biasVarHandleOp*
shape:*
shared_namedense_3/bias*
dtype0*
_output_shapes
: 
�
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_class
loc:@dense_3/bias*
dtype0*
_output_shapes
:
d
SGD/iterVarHandleOp*
shape: *
shared_name
SGD/iter*
dtype0	*
_output_shapes
: 
z
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_class
loc:@SGD/iter*
dtype0	*
_output_shapes
: 
f
	SGD/decayVarHandleOp*
shape: *
shared_name	SGD/decay*
dtype0*
_output_shapes
: 
}
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_class
loc:@SGD/decay*
dtype0*
_output_shapes
: 
v
SGD/learning_rateVarHandleOp*
shape: *"
shared_nameSGD/learning_rate*
dtype0*
_output_shapes
: 
�
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*$
_class
loc:@SGD/learning_rate*
dtype0*
_output_shapes
: 
l
SGD/momentumVarHandleOp*
shape: *
shared_nameSGD/momentum*
dtype0*
_output_shapes
: 
�
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_class
loc:@SGD/momentum*
dtype0*
_output_shapes
: 

NoOpNoOp
�
ConstConst"/device:CPU:0*�
value�B� B�
S
layer-0
layer_with_weights-0
layer-1
	optimizer

signatures
 


kernel
bias
6
iter
	decay
	learning_rate

momentum
 
ZX
VARIABLE_VALUEdense_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
: 
�
serving_default_dense_3_inputPlaceholder*
shape:���������*
dtype0*'
_output_shapes
:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_3_inputdense_3/kerneldense_3/bias**
f%R#
!__inference_signature_wrapper_517*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:���������
O
saver_filenamePlaceholder*
shape: *
dtype0*
_output_shapes
: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOpConst**
_gradient_op_typePartitionedCall-562*%
f R
__inference__traced_save_561*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin

2	*
_output_shapes
: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_3/kerneldense_3/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentum**
_gradient_op_typePartitionedCall-593*(
f#R!
__inference__traced_restore_592*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
	2*
_output_shapes
: �K
�
�
__inference__traced_restore_592
file_prefix#
assignvariableop_dense_3_kernel#
assignvariableop_1_dense_3_bias
assignvariableop_2_sgd_iter 
assignvariableop_3_sgd_decay(
$assignvariableop_4_sgd_learning_rate#
assignvariableop_5_sgd_momentum

identity_7��RestoreV2_1�AssignVariableOp_1�AssignVariableOp_3�AssignVariableOp�AssignVariableOp_2�AssignVariableOp_5�AssignVariableOp_4�	RestoreV2�
RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:|
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
dtypes

2	*,
_output_shapes
::::::L
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:{
AssignVariableOpAssignVariableOpassignvariableop_dense_3_kernelIdentity:output:0*
dtype0*
_output_shapes
 N

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_3_biasIdentity_1:output:0*
dtype0*
_output_shapes
 N

Identity_2IdentityRestoreV2:tensors:2*
T0	*
_output_shapes
:{
AssignVariableOp_2AssignVariableOpassignvariableop_2_sgd_iterIdentity_2:output:0*
dtype0	*
_output_shapes
 N

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:|
AssignVariableOp_3AssignVariableOpassignvariableop_3_sgd_decayIdentity_3:output:0*
dtype0*
_output_shapes
 N

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp$assignvariableop_4_sgd_learning_rateIdentity_4:output:0*
dtype0*
_output_shapes
 N

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_momentumIdentity_5:output:0*
dtype0*
_output_shapes
 �
RestoreV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
dtypes
2*
_output_shapes
:1
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_6Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^NoOp"/device:CPU:0*
T0*
_output_shapes
: �

Identity_7IdentityIdentity_6:output:0^AssignVariableOp_1^AssignVariableOp_3^AssignVariableOp_2^AssignVariableOp_4
^RestoreV2^AssignVariableOp_5^RestoreV2_1^AssignVariableOp*
T0*
_output_shapes
: "!

identity_7Identity_7:output:0*-
_input_shapes
: ::::::2
RestoreV2_1RestoreV2_12
	RestoreV2	RestoreV22(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_5AssignVariableOp_5: : : : :+ '
%
_user_specified_namefile_prefix: : 
�
�
__inference__traced_save_561
file_prefix-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop
savev2_1_const

identity_1��SaveV2_1�MergeV2Checkpoints�SaveV2�
StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_b9cc277152204318907aee9d53d815a9/part*
dtype0*
_output_shapes
: s

StringJoin
StringJoinfile_prefixStringJoin/inputs_1:output:0"/device:CPU:0*
N*
_output_shapes
: L

num_shardsConst*
value	B :*
dtype0*
_output_shapes
: f
ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*�
value�B�B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:y
SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B B *
dtype0*
_output_shapes
:�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"/device:CPU:0*
dtypes

2	*
_output_shapes
 h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: �
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:�
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
dtypes
2*
_output_shapes
 �
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: s

Identity_1IdentityIdentity:output:0	^SaveV2_1^MergeV2Checkpoints^SaveV2*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*/
_input_shapes
: ::: : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1: : : : : :+ '
%
_user_specified_namefile_prefix: : 
�
�
!__inference_signature_wrapper_517
dense_3_input*
&statefulpartitionedcall_dense_3_kernel(
$statefulpartitionedcall_dense_3_bias
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_3_input&statefulpartitionedcall_dense_3_kernel$statefulpartitionedcall_dense_3_bias**
_gradient_op_typePartitionedCall-512*'
f"R 
__inference__wrapped_model_506*
Tout
2**
config_proto

CPU

GPU 2J 8*
Tin
2*'
_output_shapes
:����������
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*.
_input_shapes
:���������::22
StatefulPartitionedCallStatefulPartitionedCall: :- )
'
_user_specified_namedense_3_input: 
�
�
__inference__wrapped_model_506
dense_3_input=
9sequential_3_dense_3_matmul_readvariableop_dense_3_kernel<
8sequential_3_dense_3_biasadd_readvariableop_dense_3_bias
identity��+sequential_3/dense_3/BiasAdd/ReadVariableOp�*sequential_3/dense_3/MatMul/ReadVariableOp�
*sequential_3/dense_3/MatMul/ReadVariableOpReadVariableOp9sequential_3_dense_3_matmul_readvariableop_dense_3_kernel*
dtype0*
_output_shapes

:�
sequential_3/dense_3/MatMulMatMuldense_3_input2sequential_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
+sequential_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp8sequential_3_dense_3_biasadd_readvariableop_dense_3_bias*
dtype0*
_output_shapes
:�
sequential_3/dense_3/BiasAddBiasAdd%sequential_3/dense_3/MatMul:product:03sequential_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
IdentityIdentity%sequential_3/dense_3/BiasAdd:output:0,^sequential_3/dense_3/BiasAdd/ReadVariableOp+^sequential_3/dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*.
_input_shapes
:���������::2Z
+sequential_3/dense_3/BiasAdd/ReadVariableOp+sequential_3/dense_3/BiasAdd/ReadVariableOp2X
*sequential_3/dense_3/MatMul/ReadVariableOp*sequential_3/dense_3/MatMul/ReadVariableOp: :- )
'
_user_specified_namedense_3_input: "&L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
G
dense_3_input6
serving_default_dense_3_input:0���������;
dense_30
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
	optimizer

signatures
_default_save_signature"
_generic_user_object
"
_generic_user_object
4

kernel
bias"
_generic_user_object
I
iter
	decay
	learning_rate

momentum"
	optimizer
,
serving_default"
signature_map
 :2dense_3/kernel
:2dense_3/bias
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
�2�
__inference__wrapped_model_506�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *,�)
'�$
dense_3_input���������
6B4
!__inference_signature_wrapper_517dense_3_input�
__inference__wrapped_model_506o6�3
,�)
'�$
dense_3_input���������
� "1�.
,
dense_3!�
dense_3����������
!__inference_signature_wrapper_517�G�D
� 
=�:
8
dense_3_input'�$
dense_3_input���������"1�.
,
dense_3!�
dense_3���������