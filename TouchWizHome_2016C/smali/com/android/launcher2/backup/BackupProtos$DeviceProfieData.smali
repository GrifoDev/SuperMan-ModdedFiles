.class public final Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;
.super Lcom/google/protobuf/nano/MessageNano;
.source "BackupProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/backup/BackupProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceProfieData"
.end annotation


# instance fields
.field public allappsRank:I

.field public appsCols:I

.field public appsRows:I

.field public currentMode:Ljava/lang/String;

.field public desktopCols:I

.field public desktopHomeIndex:I

.field public desktopRows:I

.field public desktopScreenCount:I

.field public homeOnlyCols:I

.field public homeOnlyHomeIndex:I

.field public homeOnlyRows:I

.field public homeOnlyScreenCount:I

.field public hotseatCount:I

.field public zeropageEnabled:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->clear()Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyRows:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyCols:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyScreenCount:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyHomeIndex:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->hotseatCount:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsRows:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsCols:I

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->zeropageEnabled:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyRows:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyCols:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyScreenCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyHomeIndex:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x9

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->hotseatCount:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsRows:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xc

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsCols:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->zeropageEnabled:I

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;
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
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyRows:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyCols:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyScreenCount:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyHomeIndex:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->hotseatCount:I

    goto :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    goto :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsRows:I

    goto :goto_0

    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsCols:I

    goto :goto_0

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->zeropageEnabled:I

    goto :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    goto :goto_0

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
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopRows:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopCols:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopScreenCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->desktopHomeIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x5

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyRows:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x6

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyCols:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/4 v0, 0x7

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyScreenCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0x8

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->homeOnlyHomeIndex:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0x9

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->hotseatCount:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xa

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->allappsRank:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xb

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsRows:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xc

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->appsCols:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xd

    iget v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->zeropageEnabled:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/android/launcher2/backup/BackupProtos$DeviceProfieData;->currentMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
