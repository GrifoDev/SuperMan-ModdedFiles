.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SensorEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;


# instance fields
.field private bitField0_:I

.field private timeOffsetNanos_:J

.field private timestamp_:J

.field private type_:I

.field public values:[F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    const/4 v5, 0x4

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    invoke-static {v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v4, 0x2

    invoke-static {v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v0, v2, 0x4

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    invoke-static {v5, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    return v1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto :goto_0

    :sswitch_3
    const/16 v7, 0x1d

    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v7, :cond_2

    const/4 v1, 0x0

    :goto_1
    add-int v7, v1, v0

    new-array v4, v7, [F

    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v7, v10, v4, v10, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    :cond_1
    :goto_2
    array-length v7, v4

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v7

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readRawVarint32()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->pushLimit(I)I

    move-result v3

    div-int/lit8 v0, v2, 0x4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-nez v7, :cond_5

    const/4 v1, 0x0

    :goto_3
    add-int v7, v1, v0

    new-array v4, v7, [F

    if-eqz v1, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-static {v7, v10, v4, v10, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    :cond_4
    :goto_4
    array-length v7, v4

    if-ge v1, v7, :cond_6

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v7

    goto :goto_3

    :cond_6
    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    invoke-virtual {p1, v3}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->popLimit(I)V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    iget v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_4
        0x1d -> :sswitch_3
        0x20 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    return-object v0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->type_:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timeOffsetNanos_:J

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    aget v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->timestamp_:J

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
