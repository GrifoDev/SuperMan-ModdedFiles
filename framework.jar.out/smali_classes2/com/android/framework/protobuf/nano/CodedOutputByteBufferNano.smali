.class public final Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# static fields
.field public static final LITTLE_ENDIAN_32_SIZE:I = 0x4

.field public static final LITTLE_ENDIAN_64_SIZE:I = 0x8

.field private static final MAX_UTF8_EXPANSION:I = 0x3


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static computeBoolSize(IZ)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBoolSizeNoTag(Z)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static computeBytesSize(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSize(I[B)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeBytesSizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static computeBytesSizeNoTag([B)I
    .locals 2

    array-length v0, p0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    array-length v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSize(ID)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeDoubleSizeNoTag(D)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeEnumSize(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeEnumSizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method static computeFieldSize(IILjava/lang/Object;)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v0

    return v0

    :pswitch_1
    check-cast p2, [B

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v0

    return v0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    return v0

    :pswitch_3
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v0

    return v0

    :pswitch_4
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v0

    return v0

    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v0

    return v0

    :pswitch_6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v0

    return v0

    :pswitch_7
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v0

    return v0

    :pswitch_8
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v0

    return v0

    :pswitch_9
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v0

    return v0

    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v0

    return v0

    :pswitch_b
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v0

    return v0

    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v0

    return v0

    :pswitch_d
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v0

    return v0

    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v0

    return v0

    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v0

    return v0

    :pswitch_10
    check-cast p2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v0

    return v0

    :pswitch_11
    check-cast p2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_e
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_11
        :pswitch_10
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_9
        :pswitch_d
    .end packed-switch
.end method

.method public static computeFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeFixed64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeFloatSize(IF)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeFloatSizeNoTag(F)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeGroupSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    return v0
.end method

.method public static computeInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt32SizeNoTag(I)I
    .locals 1

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public static computeInt64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeMessageSizeNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeRawVarint32Size(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const/4 v0, 0x5

    return v0
.end method

.method public static computeRawVarint64Size(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    return v0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    return v0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    return v0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xa

    return v0
.end method

.method public static computeSFixed32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed32SizeNoTag(I)I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static computeSFixed64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSFixed64SizeNoTag(J)I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public static computeSInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt32SizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeSInt64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeSInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method public static computeStringSize(ILjava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeStringSizeNoTag(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public static computeTagSize(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt32Size(II)I
    .locals 2

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt32SizeNoTag(I)I
    .locals 1

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    return v0
.end method

.method public static computeUInt64Size(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static computeUInt64SizeNoTag(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint64Size(J)I

    move-result v0

    return v0
.end method

.method private static encode(Ljava/lang/CharSequence;[BII)I
    .locals 11

    const/16 v10, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v3, p2

    const/4 v2, 0x0

    add-int v5, p2, p3

    :goto_0
    if-ge v2, v7, :cond_0

    add-int v8, v2, p2

    if-ge v8, v5, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ge v0, v10, :cond_0

    add-int v8, p2, v2

    int-to-byte v9, v0

    aput-byte v9, p1, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ne v2, v7, :cond_1

    add-int v8, p2, v7

    return v8

    :cond_1
    add-int v3, p2, v2

    move v4, v3

    :goto_1
    if-ge v2, v7, :cond_9

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ge v0, v10, :cond_2

    if-ge v4, v5, :cond_2

    add-int/lit8 v3, v4, 0x1

    int-to-byte v8, v0

    aput-byte v8, p1, v4

    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    const/16 v8, 0x800

    if-ge v0, v8, :cond_3

    add-int/lit8 v8, v5, -0x2

    if-gt v4, v8, :cond_3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v8, v0, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    goto :goto_2

    :cond_3
    const v8, 0xd800

    if-lt v0, v8, :cond_4

    const v8, 0xdfff

    if-ge v8, v0, :cond_5

    :cond_4
    add-int/lit8 v8, v5, -0x3

    if-gt v4, v8, :cond_5

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v8, v0, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v8, v0, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    add-int/lit8 v3, v4, 0x1

    and-int/lit8 v8, v0, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v5, -0x4

    if-gt v4, v8, :cond_8

    add-int/lit8 v8, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-eq v8, v9, :cond_6

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v0, v6}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unpaired surrogate at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v2, -0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    invoke-static {v0, v6}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v8, v1, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    add-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v8, v1, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v8, v1, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v4

    add-int/lit8 v4, v3, 0x1

    and-int/lit8 v8, v1, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, p1, v3

    move v3, v4

    goto/16 :goto_2

    :cond_8
    new-instance v8, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed writing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " at index "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    return v4
.end method

.method private static encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-static {p0, v3, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v0, Ljava/nio/BufferOverflowException;

    invoke-direct {v0}, Ljava/nio/BufferOverflowException;-><init>()V

    invoke-virtual {v0, v1}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method private static encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 8

    const/16 v7, 0x80

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_6

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ge v0, v7, :cond_0

    int-to-byte v5, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    ushr-int/lit8 v5, v0, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    const v5, 0xd800

    if-lt v0, v5, :cond_2

    const v5, 0xdfff

    if-ge v5, v0, :cond_3

    :cond_2
    ushr-int/lit8 v5, v0, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v5, v0, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v5, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_5

    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unpaired surrogate at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    invoke-static {v0, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v5, v1, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public static encodeZigZag32(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 v1, p0, 0x1f

    xor-int/2addr v0, v1

    return v0
.end method

.method public static encodeZigZag64(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static encodedLength(Ljava/lang/CharSequence;)I
    .locals 10

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v2, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x800

    if-ge v0, v4, :cond_1

    rsub-int/lit8 v4, v0, 0x7f

    ushr-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    if-ge v3, v2, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UTF-8 length does not fit in int: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    int-to-long v6, v3

    const-wide v8, 0x100000000L

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return v3
.end method

.method private static encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    move v2, p1

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x800

    if-ge v0, v5, :cond_1

    rsub-int/lit8 v5, v0, 0x7f

    ushr-int/lit8 v5, v5, 0x1f

    add-int/2addr v4, v5

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x2

    const v5, 0xd800

    if-gt v5, v0, :cond_0

    const v5, 0xdfff

    if-gt v0, v5, :cond_0

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unpaired surrogate at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method

.method public static newInstance([B)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .locals 1

    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public checkNoSpaceLeft()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public position()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void
.end method

.method public spaceLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public writeBool(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    return-void
.end method

.method public writeBoolNoTag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeBytes(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    return-void
.end method

.method public writeBytes(I[BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([BII)V

    return-void
.end method

.method public writeBytesNoTag([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    return-void
.end method

.method public writeBytesNoTag([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public writeDouble(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    return-void
.end method

.method public writeDoubleNoTag(D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeEnum(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    return-void
.end method

.method public writeEnumNoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method writeField(IILjava/lang/Object;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown type: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :pswitch_0
    move-object/from16 v6, p3

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v10, p3

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    goto :goto_0

    :pswitch_2
    move-object/from16 v13, p3

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v21, p3

    check-cast v21, Ljava/lang/Long;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v12, p3

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v9, p3

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v8, p3

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32(II)V

    goto :goto_0

    :pswitch_7
    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    goto :goto_0

    :pswitch_8
    move-object/from16 v19, p3

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v5, p3

    check-cast v5, [B

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v20, p3

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32(II)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v7, p3

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnum(II)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v15, p3

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32(II)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v16, p3

    check-cast v16, Ljava/lang/Long;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64(IJ)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v17, p3

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32(II)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v18, p3

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64(IJ)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v14, p3

    check-cast v14, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    :pswitch_11
    move-object/from16 v11, p3

    check-cast v11, Lcom/android/framework/protobuf/nano/MessageNano;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v11}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_11
        :pswitch_10
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public writeFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    return-void
.end method

.method public writeFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    return-void
.end method

.method public writeFixed64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeFloat(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    return-void
.end method

.method public writeFloatNoTag(F)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeGroup(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    return-void
.end method

.method public writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void
.end method

.method public writeInt32NoTag(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    :goto_0
    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    goto :goto_0
.end method

.method public writeInt64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    return-void
.end method

.method public writeInt64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    return-void
.end method

.method public writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p1, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public writeRawByte(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeRawByte(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public writeRawBytes([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public writeRawBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0
.end method

.method public writeRawLittleEndian32(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeRawLittleEndian64(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeRawVarint32(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public writeRawVarint64(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public writeSFixed32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    return-void
.end method

.method public writeSFixed32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian32(I)V

    return-void
.end method

.method public writeSFixed64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    return-void
.end method

.method public writeSFixed64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawLittleEndian64(J)V

    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    return-void
.end method

.method public writeSInt32NoTag(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    return-void
.end method

.method public writeSInt64NoTag(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public writeStringNoTag(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    if-ne v2, v1, :cond_1

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-ge v6, v2, :cond_0

    new-instance v6, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int v7, v4, v2

    iget-object v8, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw v6
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v5, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iget-object v7, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    invoke-virtual {v5, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano$OutOfSpaceException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v5

    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v6, v3, v4

    sub-int/2addr v6, v2

    invoke-virtual {p0, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget-object v6, p0, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/nio/BufferOverflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public writeTag(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/android/framework/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    return-void
.end method

.method public writeUInt32NoTag(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    return-void
.end method

.method public writeUInt64NoTag(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    return-void
.end method
