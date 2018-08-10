.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DNSLookupBatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;


# instance fields
.field public eventTypes:[I

.field public latenciesMs:[I

.field public networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

.field public returnCodes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    sget-object v0, Lcom/android/framework/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-static {v5, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v3, v4

    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v1, v4, v2

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    if-lez v4, :cond_4

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v1, v4, v2

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_4
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    if-lez v4, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v1, v4, v2

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_6
    return v3
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    invoke-static {p1, v6}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-nez v7, :cond_1

    new-instance v7, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v7}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    iput-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-virtual {p1, v7}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_2
    const/16 v7, 0x10

    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v7, :cond_3

    const/4 v1, 0x0

    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_2
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_4

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v7

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-nez v7, :cond_7

    const/4 v1, 0x0

    :goto_4
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_6
    :goto_5
    array-length v7, v4

    if-ge v1, v7, :cond_8

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v7

    goto :goto_4

    :cond_8
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_4
    const/16 v7, 0x18

    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v7, :cond_a

    const/4 v1, 0x0

    :goto_6
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_9
    :goto_7
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_b

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_a
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v7

    goto :goto_6

    :cond_b
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_c

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-nez v7, :cond_e

    const/4 v1, 0x0

    :goto_9
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_d

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_d
    :goto_a
    array-length v7, v4

    if-ge v1, v7, :cond_f

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_e
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v7

    goto :goto_9

    :cond_f
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_6
    const/16 v7, 0x20

    invoke-static {p1, v7}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v7, :cond_11

    const/4 v1, 0x0

    :goto_b
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_10

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_10
    :goto_c
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_12

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_11
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v7

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v5

    :goto_d
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v7

    if-lez v7, :cond_13

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_13
    invoke-virtual {p1, v5}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-nez v7, :cond_15

    const/4 v1, 0x0

    :goto_e
    add-int v7, v1, v0

    new-array v4, v7, [I

    if-eqz v1, :cond_14

    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-static {v7, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy([II[III)V

    :cond_14
    :goto_f
    array-length v7, v4

    if-ge v1, v7, :cond_16

    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_15
    iget-object v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v7

    goto :goto_e

    :cond_16
    iput-object v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    invoke-virtual {p1, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x12 -> :sswitch_3
        0x18 -> :sswitch_4
        0x1a -> :sswitch_5
        0x20 -> :sswitch_6
        0x22 -> :sswitch_7
    .end sparse-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
