.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;,
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;,
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private build_:Ljava/lang/String;

.field private durationMillis_:J

.field public phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

.field private result_:I

.field public sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

.field private startTimestampMillis_:J

.field private touchAreaHeight_:I

.field private touchAreaWidth_:I

.field public touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

.field private type_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    return-void
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->durationMillis_:J

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->result_:I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->type_:I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;->emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 8

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    const/4 v5, 0x1

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_0
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->durationMillis_:J

    const/4 v5, 0x2

    invoke-static {v5, v6, v7}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v5

    add-int/2addr v4, v5

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->result_:I

    const/4 v6, 0x4

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    array-length v5, v5

    if-lez v5, :cond_5

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    aget-object v2, v5, v3

    if-eqz v2, :cond_4

    const/4 v5, 0x5

    invoke-static {v5, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    array-length v5, v5

    if-lez v5, :cond_7

    const/4 v3, 0x0

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    aget-object v1, v5, v3

    if-eqz v1, :cond_6

    const/4 v5, 0x6

    invoke-static {v5, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    const/16 v6, 0x9

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_8
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    const/16 v6, 0xa

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_9
    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_a

    iget v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->type_:I

    const/16 v6, 0xb

    invoke-static {v6, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v5

    add-int/2addr v4, v5

    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v5, v5

    if-lez v5, :cond_c

    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v5, v5

    if-ge v3, v5, :cond_c

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    aget-object v0, v5, v3

    if-eqz v0, :cond_b

    const/16 v5, 0xc

    invoke-static {v5, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v5

    add-int/2addr v4, v5

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    return v4
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-static {p1, v5}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v8

    if-nez v8, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->durationMillis_:J

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x4

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->result_:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto :goto_0

    :sswitch_5
    const/16 v8, 0x2a

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v8, :cond_2

    move v1, v7

    :goto_1
    add-int v8, v1, v0

    new-array v4, v8, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-eqz v1, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-static {v8, v7, v4, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v8, v4

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_3

    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    array-length v1, v8

    goto :goto_1

    :cond_3
    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    aput-object v8, v4, v1

    aget-object v8, v4, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    goto/16 :goto_0

    :sswitch_6
    const/16 v8, 0x32

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-nez v8, :cond_5

    move v1, v7

    :goto_3
    add-int v8, v1, v0

    new-array v3, v8, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    invoke-static {v8, v7, v3, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_4
    array-length v8, v3

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_6

    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    array-length v1, v8

    goto :goto_3

    :cond_6
    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    aput-object v8, v3, v1

    aget-object v8, v3, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x10

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_1
    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->type_:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v8, v8, 0x40

    iput v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    goto/16 :goto_0

    :sswitch_a
    const/16 v8, 0x62

    invoke-static {p1, v8}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-nez v8, :cond_8

    move v1, v7

    :goto_5
    add-int v8, v1, v0

    new-array v2, v8, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-eqz v1, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-static {v8, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    :goto_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_9

    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    aput-object v8, v2, v1

    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v1, v8

    goto :goto_5

    :cond_9
    new-instance v8, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v8}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    aput-object v8, v2, v1

    aget-object v8, v2, v1

    invoke-virtual {p1, v8}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x48 -> :sswitch_7
        0x50 -> :sswitch_8
        0x58 -> :sswitch_9
        0x62 -> :sswitch_a
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;

    move-result-object v0

    return-object v0
.end method

.method public setBuild(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setDurationMillis(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->durationMillis_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setResult(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->result_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setStartTimestampMillis(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setTouchAreaHeight(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setTouchAreaWidth(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public setType(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->type_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->startTimestampMillis_:J

    const/4 v6, 0x1

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->durationMillis_:J

    const/4 v6, 0x2

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->build_:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->result_:I

    const/4 v5, 0x4

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    array-length v4, v4

    if-lez v4, :cond_5

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    aget-object v2, v4, v3

    if-eqz v2, :cond_4

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    array-length v4, v4

    if-lez v4, :cond_7

    const/4 v3, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$SensorEvent;

    aget-object v1, v4, v3

    if-eqz v1, :cond_6

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_8

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaWidth_:I

    const/16 v5, 0x9

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_8
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_9

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->touchAreaHeight_:I

    const/16 v5, 0xa

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_9
    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_a

    iget v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->type_:I

    const/16 v5, 0xb

    invoke-virtual {p1, v5, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v4, v4

    if-lez v4, :cond_c

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    array-length v4, v4

    if-ge v3, v4, :cond_c

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$PhoneEvent;

    aget-object v0, v4, v3

    if-eqz v0, :cond_b

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
