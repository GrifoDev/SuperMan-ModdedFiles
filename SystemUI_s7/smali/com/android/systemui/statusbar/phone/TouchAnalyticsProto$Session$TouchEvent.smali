.class public final Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;,
        Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;


# instance fields
.field private actionIndex_:I

.field private action_:I

.field private bitField0_:I

.field public pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedRedacted_:Z

.field private timeOffsetNanos_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    sput-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;->emptyArray()[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v3, 0x1

    invoke-static {v3, v4, v5}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v4, 0x3

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-lez v3, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v3, v1

    if-eqz v0, :cond_3

    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v4, 0x6

    invoke-static {v4, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_6
    return v2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    invoke-static {p1, v3}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v6

    if-nez v6, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto :goto_0

    :sswitch_4
    const/16 v6, 0x22

    invoke-static {p1, v6}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v6, :cond_2

    move v1, v5

    :goto_1
    add-int v6, v1, v0

    new-array v2, v6, [Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v1, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-static {v6, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v6, v2

    add-int/lit8 v6, v6, -0x1

    if-ge v1, v6, :cond_3

    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v6, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v1, v6

    goto :goto_1

    :cond_3
    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    aput-object v6, v2, v1

    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    goto/16 :goto_0

    :sswitch_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-nez v6, :cond_4

    new-instance v6, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v6}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
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

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setActionIndex(I)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    const/4 v3, 0x3

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-lez v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v0, v2, v1

    if-eqz v0, :cond_3

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v3, 0x5

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v3, 0x6

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
