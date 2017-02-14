.class public final Lcom/android/launcher2/backup/BackupProtos$Favorite;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Favorite"
.end annotation


# static fields
.field public static final TARGET_BROWSER:I = 0x4

.field public static final TARGET_CAMERA:I = 0x6

.field public static final TARGET_EMAIL:I = 0x3

.field public static final TARGET_GALLERY:I = 0x5

.field public static final TARGET_MESSENGER:I = 0x2

.field public static final TARGET_NONE:I = 0x0

.field public static final TARGET_PHONE:I = 0x1


# instance fields
.field public appWidgetId:J

.field public cellX:I

.field public cellY:I

.field public color:I

.field public container:J

.field public festival:I

.field public icon:[B

.field public iconMoveUri:Ljava/lang/String;

.field public iconPackage:Ljava/lang/String;

.field public iconResource:Ljava/lang/String;

.field public iconType:I

.field public id:J

.field public intent:Ljava/lang/String;

.field public itemType:I

.field public rank:I

.field public screen:I

.field public spanX:I

.field public spanY:I

.field public targetType:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/backup/BackupProtos$Favorite;->clear()Lcom/android/launcher2/backup/BackupProtos$Favorite;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher2/backup/BackupProtos$Favorite;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v1, :cond_3

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v1, :cond_5

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    const/16 v1, 0xb

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v1, :cond_9

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    sget-object v2, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    if-eqz v1, :cond_e

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    if-eqz v1, :cond_f

    const/16 v1, 0x12

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v1, :cond_10

    const/16 v1, 0x13

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    if-eqz v1, :cond_11

    const/16 v1, 0x14

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Favorite;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    goto :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    goto :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    goto :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x88 -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
        0xa0 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/backup/BackupProtos$Favorite;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Favorite;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->itemType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-wide v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->container:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->screen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->spanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_7
    iget-wide v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_8

    const/16 v0, 0xb

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->appWidgetId:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_8
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    if-eqz v0, :cond_9

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_b
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xf

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->iconMoveUri:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    sget-object v1, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x10

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->icon:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    :cond_d
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    if-eqz v0, :cond_e

    const/16 v0, 0x11

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->color:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    if-eqz v0, :cond_f

    const/16 v0, 0x12

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->festival:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_f
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    if-eqz v0, :cond_10

    const/16 v0, 0x13

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->targetType:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_10
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    if-eqz v0, :cond_11

    const/16 v0, 0x14

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Favorite;->rank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_11
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
