.class public final Lcom/android/launcher2/backup/BackupProtos$Widget;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Widget"
.end annotation


# instance fields
.field public configure:Z

.field public icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

.field public label:Ljava/lang/String;

.field public minSpanX:I

.field public minSpanY:I

.field public preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

.field public provider:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/backup/BackupProtos$Widget;->clear()Lcom/android/launcher2/backup/BackupProtos$Widget;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher2/backup/BackupProtos$Widget;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iput-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v1, v3, :cond_4

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v1, v3, :cond_5

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Widget;
    .locals 2
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher2/backup/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher2/backup/BackupProtos$Resource;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/backup/BackupProtos$Widget;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$Widget;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->label:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->configure:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->icon:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->preview:Lcom/android/launcher2/backup/BackupProtos$Resource;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    if-eq v0, v2, :cond_4

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    if-eq v0, v2, :cond_5

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
