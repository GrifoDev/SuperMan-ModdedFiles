.class public final Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
.super Lcom/android/framework/protobuf/nano/MessageNano;
.source "WifiMetricsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/nano/WifiMetricsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConnectionEvent"
.end annotation


# static fields
.field public static final HLF_DHCP:I = 0x2

.field public static final HLF_NONE:I = 0x1

.field public static final HLF_NO_INTERNET:I = 0x3

.field public static final HLF_UNKNOWN:I = 0x0

.field public static final HLF_UNWANTED:I = 0x4

.field public static final ROAM_DBDC:I = 0x2

.field public static final ROAM_ENTERPRISE:I = 0x3

.field public static final ROAM_NONE:I = 0x1

.field public static final ROAM_UNKNOWN:I = 0x0

.field public static final ROAM_UNRELATED:I = 0x5

.field public static final ROAM_USER_SELECTED:I = 0x4

.field private static volatile _emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;


# instance fields
.field public automaticBugReportTaken:Z

.field public connectionResult:I

.field public connectivityLevelFailureCode:I

.field public durationTakenToConnectMillis:I

.field public level2FailureCode:I

.field public roamType:I

.field public routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

.field public signalStrength:I

.field public startTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/framework/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->clear()Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .locals 2

    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/android/framework/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    sput-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->_emptyArray:[Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static parseFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    invoke-direct {v0}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/nano/MessageNano;->mergeFrom(Lcom/android/framework/protobuf/nano/MessageNano;[B)Lcom/android/framework/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/android/framework/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const/4 v1, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    const/16 v2, 0x9

    invoke-static {v2, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/framework/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;
    .locals 4
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
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-direct {v2}, Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    goto :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    goto :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    goto :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
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
        :pswitch_1
    .end packed-switch
.end method

.method public writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->startTimeMillis:J

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->durationTakenToConnectMillis:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->routerFingerprint:Lcom/android/server/wifi/nano/WifiMetricsProto$RouterFingerPrint;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/android/framework/protobuf/nano/MessageNano;)V

    :cond_2
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->signalStrength:I

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->roamType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectionResult:I

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_5
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->level2FailureCode:I

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_6
    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->connectivityLevelFailureCode:I

    const/16 v1, 0x8

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/wifi/nano/WifiMetricsProto$ConnectionEvent;->automaticBugReportTaken:Z

    const/16 v1, 0x9

    invoke-virtual {p1, v1, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_8
    invoke-super {p0, p1}, Lcom/android/framework/protobuf/nano/MessageNano;->writeTo(Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
