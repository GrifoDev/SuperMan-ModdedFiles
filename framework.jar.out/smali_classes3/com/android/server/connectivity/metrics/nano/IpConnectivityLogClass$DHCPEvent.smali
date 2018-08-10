.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DHCPEvent"
.end annotation


# static fields
.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x3

.field public static final STATE_TRANSITION_FIELD_NUMBER:I = 0x2

.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;


# instance fields
.field public durationMs:I

.field public ifName:Ljava/lang/String;

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->clearValue()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->cachedSize:I

    return-object p0
.end method

.method public clearValue()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v4, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    return v0
.end method

.method public getErrorCode()I
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStateTransition()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getValueCase()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    return v0
.end method

.method public hasErrorCode()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStateTransition()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->ifName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->valueCase_:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->value_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
