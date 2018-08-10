.class public final Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "IpConnectivityLogClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpConnectivityEvent"
.end annotation


# static fields
.field public static final APF_PROGRAM_EVENT_FIELD_NUMBER:I = 0x9

.field public static final APF_STATISTICS_FIELD_NUMBER:I = 0xa

.field public static final CONNECT_STATISTICS_FIELD_NUMBER:I = 0xe

.field public static final DEFAULT_NETWORK_EVENT_FIELD_NUMBER:I = 0x2

.field public static final DHCP_EVENT_FIELD_NUMBER:I = 0x6

.field public static final DNS_LATENCIES_FIELD_NUMBER:I = 0xd

.field public static final DNS_LOOKUP_BATCH_FIELD_NUMBER:I = 0x5

.field public static final IP_PROVISIONING_EVENT_FIELD_NUMBER:I = 0x7

.field public static final IP_REACHABILITY_EVENT_FIELD_NUMBER:I = 0x3

.field public static final NETWORK_EVENT_FIELD_NUMBER:I = 0x4

.field public static final RA_EVENT_FIELD_NUMBER:I = 0xb

.field public static final VALIDATION_PROBE_EVENT_FIELD_NUMBER:I = 0x8

.field private static volatile _emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;


# instance fields
.field private eventCase_:I

.field private event_:Ljava/lang/Object;

.field public ifName:Ljava/lang/String;

.field public linkLayer:I

.field public networkId:I

.field public timeMs:J

.field public transports:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 2

    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    sput-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->_emptyArray:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    invoke-virtual {p0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->clearEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->cachedSize:I

    return-object p0
.end method

.method public clearEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v1, v6, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v6, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v7, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v8, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v1, v9, :cond_4

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-static {v9, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0xa

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0xb

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0xd

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_c

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v2, 0xe

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    const/16 v2, 0xf

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    if-eqz v1, :cond_e

    iget v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const/16 v2, 0x11

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_10

    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const/16 v1, 0x12

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    return v0
.end method

.method public getApfProgramEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApfStatistics()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectStatistics()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultNetworkEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDhcpEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsLatencies()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDnsLookupBatch()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEventCase()I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    return v0
.end method

.method public getIpProvisioningEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIpReachabilityEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetworkEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRaEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValidationProbeEvent()Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasApfProgramEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasApfStatistics()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasConnectStatistics()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDefaultNetworkEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDhcpEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDnsLatencies()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDnsLookupBatch()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIpProvisioningEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIpReachabilityEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNetworkEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRaEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValidationProbeEvent()Z
    .locals 2

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

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

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    goto :goto_0

    :sswitch_2
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-eq v2, v4, :cond_1

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v4, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto :goto_0

    :sswitch_3
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-eq v2, v5, :cond_2

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v5, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto :goto_0

    :sswitch_4
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-eq v2, v6, :cond_3

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_3
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v6, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto :goto_0

    :sswitch_5
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-eq v2, v7, :cond_4

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_4
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v7, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto :goto_0

    :sswitch_6
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-eq v2, v8, :cond_5

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_5
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    iput v8, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto :goto_0

    :sswitch_7
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_6

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_8
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_7

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_7
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0x8

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_9
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_8

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_8
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0x9

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_a
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_9

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0xa

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_b
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0xb

    if-eq v2, v3, :cond_a

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_a
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0xb

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_c
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0xd

    if-eq v2, v3, :cond_b

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_b
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0xd

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_d
    iget v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v3, 0xe

    if-eq v2, v3, :cond_c

    new-instance v2, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v2}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    :cond_c
    iget-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    const/16 v2, 0xe

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x6a -> :sswitch_c
        0x72 -> :sswitch_d
        0x78 -> :sswitch_e
        0x80 -> :sswitch_f
        0x8a -> :sswitch_10
        0x90 -> :sswitch_11
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

.method public setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0xe

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDnsLatencies(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLatencies;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    iput-object p1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    return-object p0
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v4, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_1
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v5, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v6, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_3
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    invoke-virtual {p1, v7, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_4
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_5
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_6
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_7
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_8
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_9
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_a
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_b
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->eventCase_:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->event_:Ljava/lang/Object;

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_c
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    if-eqz v0, :cond_d

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_d
    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_e
    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    const/16 v1, 0x11

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_f
    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    iget-wide v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const/16 v2, 0x12

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_10
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
