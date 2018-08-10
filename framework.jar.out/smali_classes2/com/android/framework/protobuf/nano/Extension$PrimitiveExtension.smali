.class Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
.super Lcom/android/framework/protobuf/nano/Extension;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrimitiveExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/framework/protobuf/nano/Extension",
        "<TM;TT;>;"
    }
.end annotation


# instance fields
.field private final nonPackedTag:I

.field private final packedTag:I


# direct methods
.method public constructor <init>(ILjava/lang/Class;IZII)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZII)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension;)V

    iput p5, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    iput p6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    return-void
.end method

.method private computePackedDataSize(Ljava/lang/Object;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unexpected non-packable type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move v1, v0

    :cond_0
    :goto_0
    return v1

    :pswitch_2
    mul-int/lit8 v1, v0, 0x4

    goto :goto_0

    :pswitch_3
    mul-int/lit8 v1, v0, 0x8

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :pswitch_5
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32SizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :pswitch_7
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_8
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :pswitch_9
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64SizeNoTag(J)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :pswitch_a
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_0

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_0

    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v2

    return v2

    :cond_0
    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int v1, v0, v2

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2

    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected repeated extension tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", unequal to both non-packed variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and packed variant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected final computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_0

    :pswitch_0
    new-instance v19, Ljava/lang/IllegalArgumentException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown type "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v19

    :pswitch_1
    move-object/from16 v4, p1

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v19

    return v19

    :pswitch_2
    move-object/from16 v9, p1

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v19

    return v19

    :pswitch_3
    move-object/from16 v11, p1

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v19

    return v19

    :pswitch_4
    move-object/from16 v18, p1

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v19

    return v19

    :pswitch_5
    move-object/from16 v10, p1

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v19

    return v19

    :pswitch_6
    move-object/from16 v8, p1

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v19

    return v19

    :pswitch_7
    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeFixed32Size(II)I

    move-result v19

    return v19

    :pswitch_8
    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v19

    return v19

    :pswitch_9
    move-object/from16 v16, p1

    check-cast v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v19

    return v19

    :pswitch_a
    move-object/from16 v3, p1

    check-cast v3, [B

    invoke-static {v6, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v19

    return v19

    :pswitch_b
    move-object/from16 v17, p1

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeUInt32Size(II)I

    move-result v19

    return v19

    :pswitch_c
    move-object/from16 v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeEnumSize(II)I

    move-result v19

    return v19

    :pswitch_d
    move-object/from16 v12, p1

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed32Size(II)I

    move-result v19

    return v19

    :pswitch_e
    move-object/from16 v13, p1

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSFixed64Size(IJ)I

    move-result v19

    return v19

    :pswitch_f
    move-object/from16 v14, p1

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt32Size(II)I

    move-result v19

    return v19

    :pswitch_10
    move-object/from16 v15, p1

    check-cast v15, Ljava/lang/Long;

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v6, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeSInt64Size(IJ)I

    move-result v19

    return v19

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {p1, v1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readPrimitiveField(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget v2, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->tag:I

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v2, v3, :cond_1

    iget-object v2, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->isAtEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Error reading extension field"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    if-ne v4, v5, :cond_1

    invoke-super {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    if-ne v4, v5, :cond_2

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->computePackedDataSize(Ljava/lang/Object;)I

    move-result v1

    :try_start_0
    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    invoke-virtual {p2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unpackable type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :pswitch_1
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    :try_start_1
    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_4
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_5
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_6
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_7
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getDouble(Ljava/lang/Object;I)D

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_8
    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_9
    const/4 v3, 0x0

    :goto_8
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :pswitch_a
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :pswitch_b
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :pswitch_c
    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :pswitch_d
    const/4 v3, 0x0

    :goto_c
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :pswitch_e
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v0, :cond_0

    invoke-static {p1, v3}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected repeated extension tag "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", unequal to both non-packed variant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->nonPackedTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and packed variant "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->packedTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_d
        :pswitch_8
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_e
        :pswitch_3
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected final writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 24

    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->tag:I

    move/from16 v21, v0

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    :pswitch_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Unknown type "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;->type:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    :pswitch_1
    :try_start_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Double;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    :goto_0
    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Float;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    goto :goto_0

    :pswitch_4
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64NoTag(J)V

    goto :goto_0

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v12, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    goto :goto_0

    :pswitch_6
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64NoTag(J)V

    goto :goto_0

    :pswitch_7
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeFixed32NoTag(I)V

    goto :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    goto :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v5, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBytesNoTag([B)V

    goto/16 :goto_0

    :pswitch_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeUInt32NoTag(I)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeEnumNoTag(I)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed32NoTag(I)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSFixed64NoTag(J)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v21

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt32NoTag(I)V

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeSInt64NoTag(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
