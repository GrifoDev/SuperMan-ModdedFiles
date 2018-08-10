.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
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

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
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

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->type_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->timeOffsetNanos_:J

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
