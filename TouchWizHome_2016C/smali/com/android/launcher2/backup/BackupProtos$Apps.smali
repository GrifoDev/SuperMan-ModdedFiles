.class public final Lcom/android/launcher2/backup/BackupProtos$Apps;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Apps"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Apps;


# instance fields
.field public cell:I

.field public color:I

.field public componentName:Ljava/lang/String;

.field public folderId:J

.field public hidden:I

.field public id:J

.field public screen:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/backup/BackupProtos$Apps;->clear()Lcom/android/launcher2/backup/BackupProtos$Apps;

    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher2/backup/BackupProtos$Apps;
    .locals 2

    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Apps;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Apps;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Apps;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Apps;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher2/backup/BackupProtos$Apps;

    sput-object v0, Lcom/android/launcher2/backup/BackupProtos$Apps;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Apps;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Apps;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Apps;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Apps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Apps;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Apps;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/launcher2/backup/BackupProtos$Apps;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Apps;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/launcher2/backup/BackupProtos$Apps;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Apps;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Apps;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/backup/BackupProtos$Apps;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher2/backup/BackupProtos$Apps;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->id:J

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->folderId:J

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->folderId:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    if-eqz v1, :cond_2

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    if-eqz v1, :cond_5

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Apps;
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

    move-result v1

    if-nez v1, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->id:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->folderId:J

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
        0x38 -> :sswitch_5
        0x4a -> :sswitch_6
        0x52 -> :sswitch_7
        0x88 -> :sswitch_8
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/backup/BackupProtos$Apps;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Apps;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->folderId:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->screen:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->cell:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->hidden:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xa

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->componentName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_4
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Apps;->color:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
