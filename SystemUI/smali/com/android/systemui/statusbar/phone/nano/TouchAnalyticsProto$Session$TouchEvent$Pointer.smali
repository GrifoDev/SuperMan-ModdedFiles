.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Pointer"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private pressure_:F

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedLength_:F

.field private size_:F

.field private x_:F

.field private y_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v0, :cond_1

    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    sput-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    const/4 v2, 0x2

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    const/4 v2, 0x6

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 2
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

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :sswitch_0
    return-object p0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x28 -> :sswitch_5
        0x35 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    return-object p0
.end method

.method public setPressure(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    return-object p0
.end method

.method public setSize(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    return-object p0
.end method

.method public setX(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    return-object p0
.end method

.method public setY(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->x_:F

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->y_:F

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->size_:F

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->pressure_:F

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->id_:I

    const/4 v1, 0x5

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedLength_:F

    const/4 v1, 0x6

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
