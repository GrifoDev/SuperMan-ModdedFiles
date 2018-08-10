.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftApReturnCodeCount"
.end annotation


# static fields
.field public static final SOFT_AP_FAILED_GENERAL_ERROR:I = 0x2

.field public static final SOFT_AP_FAILED_NO_CHANNEL:I = 0x3

.field public static final SOFT_AP_RETURN_CODE_UNKNOWN:I = 0x0

.field public static final SOFT_AP_STARTED_SUCCESSFULLY:I = 0x1

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;


# instance fields
.field public count:I

.field public returnCode:I

.field public startResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;
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

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->returnCode:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->count:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$SoftApReturnCodeCount;->startResult:I

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
