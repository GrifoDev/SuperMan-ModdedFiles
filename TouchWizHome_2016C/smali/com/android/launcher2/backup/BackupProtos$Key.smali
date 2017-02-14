.class public final Lcom/android/launcher2/backup/BackupProtos$Key;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Key"
.end annotation


# static fields
.field public static final APPS:I = 0x5

.field public static final FAVORITE:I = 0x1

.field public static final ICON:I = 0x3

.field public static final SCREEN:I = 0x2

.field public static final WIDGET:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Key;


# instance fields
.field public checksum:J

.field public id:J

.field public name:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/backup/BackupProtos$Key;->clear()Lcom/android/launcher2/backup/BackupProtos$Key;

    return-void
.end method

.method public static emptyArray()[Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 2

    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Key;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Key;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/launcher2/backup/BackupProtos$Key;

    sput-object v0, Lcom/android/launcher2/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Key;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/launcher2/backup/BackupProtos$Key;->_emptyArray:[Lcom/android/launcher2/backup/BackupProtos$Key;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom([B)Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/launcher2/backup/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher2/backup/BackupProtos$Key;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/backup/BackupProtos$Key;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/launcher2/backup/BackupProtos$Key;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Key;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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

    invoke-virtual {p0, p1}, Lcom/android/launcher2/backup/BackupProtos$Key;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Key;

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

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->type:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->id:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_1
    iget-wide v0, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-wide v2, p0, Lcom/android/launcher2/backup/BackupProtos$Key;->checksum:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_2
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
