.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouterFingerPrint"
.end annotation


# static fields
.field public static final AUTH_ENTERPRISE:I = 0x3

.field public static final AUTH_OPEN:I = 0x1

.field public static final AUTH_PERSONAL:I = 0x2

.field public static final AUTH_UNKNOWN:I = 0x0

.field public static final ROAM_TYPE_DBDC:I = 0x3

.field public static final ROAM_TYPE_ENTERPRISE:I = 0x2

.field public static final ROAM_TYPE_NONE:I = 0x1

.field public static final ROAM_TYPE_UNKNOWN:I = 0x0

.field public static final ROUTER_TECH_A:I = 0x1

.field public static final ROUTER_TECH_AC:I = 0x5

.field public static final ROUTER_TECH_B:I = 0x2

.field public static final ROUTER_TECH_G:I = 0x3

.field public static final ROUTER_TECH_N:I = 0x4

.field public static final ROUTER_TECH_OTHER:I = 0x6

.field public static final ROUTER_TECH_UNKNOWN:I

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;


# instance fields
.field public authentication:I

.field public channelInfo:I

.field public dtim:I

.field public hidden:Z

.field public passpoint:Z

.field public roamType:I

.field public routerTechnology:I

.field public supportsIpv6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    iput-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;
    .locals 3
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

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    :pswitch_2
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    goto :goto_0

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
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->roamType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->channelInfo:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->dtim:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->authentication:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->hidden:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->routerTechnology:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->supportsIpv6:Z

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;->passpoint:Z

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_7
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
