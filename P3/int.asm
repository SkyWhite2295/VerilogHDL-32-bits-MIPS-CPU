lw $15,0($4)	# IPD ��ȡ�����豸��ֵ
lw $16,0($5)	# OPD preData ��ȡ����豸�ĳ�ֵ�Ĵ�����ֵ
beq $16,$15,eq	# �Ƚ϶��ߵ�ֵ�������eq��
sw $15,0($5)	# �������ȣ���������豸��ֵ�Ĵ���Ϊ��ǰ�����ֵ
sw $15,0($6)	# �������ȣ���������豸��ǰֵ�Ĵ���Ϊ��ǰ�����ֵ
beq $0, $0,jmp	# ��ת
eq:lw $16,0($6)	# ���������ȣ���������豸�ĵ�ǰֵ�Ĵ�����ֵ
addiu $16,$16,1	# �޷��ż����������Լ�1
sw $16,0($6)	# ���ԼӺ�Ľ���������豸�ĵ�ǰֵ�Ĵ���
jmp:ori $13,$0,0x000a	# 10 ����ʱ �������õ�������ֵ��׼��ֵ��
sw $13,0($2)	# �������
eret		#�жϷ���