.class public Lcom/android/systemui/analytics/SensorLoggerSession;
.super Ljava/lang/Object;
.source "SensorLoggerSession.java"


# instance fields
.field private mEndTimestampMillis:J

.field private mMotionEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mResult:I

.field private mSensorEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartSystemTimeNanos:J

.field private final mStartTimestampMillis:J

.field private mTouchAreaHeight:I

.field private mTouchAreaWidth:I

.field private mType:I


# direct methods
.method public constructor <init>(JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    iput-wide p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    iput-wide p3, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mType:I

    return-void
.end method

.method private motionEventToProto(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    new-instance v3, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTimeNano()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->setAction(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->setActionIndex(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    new-array v4, v0, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iput-object v4, v3, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setX(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setY(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setSize(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setPressure(F)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->setId(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aput-object v2, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private phoneEventToProto(IJ)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    return-object v0
.end method

.method private sensorEventToProto(Landroid/hardware/SensorEvent;J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;-><init>()V

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    sub-long v2, p2, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->setTimestamp(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;->values:[F

    return-object v0
.end method


# virtual methods
.method public addMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/analytics/SensorLoggerSession;->motionEventToProto(Landroid/view/MotionEvent;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPhoneEvent(IJ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->phoneEventToProto(IJ)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSensorEvent(Landroid/hardware/SensorEvent;J)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/analytics/SensorLoggerSession;->sensorEventToProto(Landroid/hardware/SensorEvent;J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public end(JI)V
    .locals 1

    iput p3, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    iput-wide p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    return-void
.end method

.method public getResult()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    return v0
.end method

.method public getStartTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    return-wide v0
.end method

.method public setTouchArea(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    iput p2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mType:I

    return-void
.end method

.method public toProto()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
    .locals 6

    new-instance v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;-><init>()V

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setStartTimestampMillis(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    iget-wide v4, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setDurationMillis(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setBuild(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setResult(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mType:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setType(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->sensorEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$SensorEvent;

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->touchEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    iget-object v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->phoneEvents:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$PhoneEvent;

    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setTouchAreaWidth(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    iget v1, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;->setTouchAreaHeight(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "mStartTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartTimestampMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mStartSystemTimeNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mStartSystemTimeNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mEndTimestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mEndTimestampMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mTouchAreaHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mTouchAreaWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mTouchAreaWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mMotionEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mMotionEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mSensorEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mSensorEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mPhoneEvents=[size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/analytics/SensorLoggerSession;->mPhoneEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
