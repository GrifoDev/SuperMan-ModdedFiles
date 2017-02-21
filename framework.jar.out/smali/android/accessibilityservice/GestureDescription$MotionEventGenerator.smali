.class public Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventGenerator"
.end annotation


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    const/4 v7, 0x0

    move v8, p2

    :goto_0
    if-ge v7, p4, :cond_2

    aget-object v2, p3, v7

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v2, :cond_3

    add-int/lit8 p2, v8, 0x1

    aget-object v2, p1, v8

    aget-object v3, p3, v7

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_1

    move-wide v0, p5

    :goto_2
    shl-int/lit8 v2, v7, 0x8

    or-int/2addr v4, v2

    move-wide v2, p5

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v8, p2

    goto :goto_0

    :cond_0
    const/4 v4, 0x5

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    move p2, v8

    goto :goto_3
.end method

.method private static appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p4, :cond_3

    aget-object v2, p3, v7

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v8

    if-ltz v8, :cond_0

    aget-object v2, p1, v8

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v3, p3, v7

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    aget-object v2, p1, v8

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v3, p3, v7

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    or-int/2addr v9, v2

    aget-object v2, p1, v8

    aget-object v3, p3, v7

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    const/4 v4, 0x2

    move-wide/from16 v2, p5

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private static appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "I[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)I"
        }
    .end annotation

    const/4 v7, 0x0

    :goto_0
    if-ge v7, p4, :cond_4

    aget-object v2, p3, v7

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v2, :cond_0

    aget-object v2, p3, v7

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    invoke-static {p1, p2, v2}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v8

    if-gez v8, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const/4 v4, 0x1

    :goto_2
    shl-int/lit8 v2, v8, 0x8

    or-int/2addr v4, v2

    move-wide/from16 v2, p5

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v8

    :goto_3
    add-int/lit8 v2, p2, -0x1

    if-ge v9, v2, :cond_3

    aget-object v2, p1, v9

    add-int/lit8 v3, v9, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x6

    goto :goto_2

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_4
    return p2
.end method

.method private static findPointByPathIndex([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    if-ne v1, p2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private static getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sCurrentTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v1
.end method

.method static getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accessibilityservice/GestureDescription;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription;->getStrokeCount()I

    move-result v3

    invoke-static {v3}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getCurrentTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v1

    const/4 v0, 0x0

    const-wide/16 v6, 0x0

    invoke-static {p0, v6, v7}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-ltz v3, :cond_1

    if-nez v0, :cond_0

    move-wide v6, v4

    :goto_1
    invoke-static {p0, v6, v7, v1}, Landroid/accessibilityservice/GestureDescription;->-wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    new-instance v3, Landroid/accessibilityservice/GestureDescription$GestureStep;

    invoke-direct {v3, v6, v7, v0, v1}, Landroid/accessibilityservice/GestureDescription$GestureStep;-><init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    invoke-static {p0, v8, v9}, Landroid/accessibilityservice/GestureDescription;->-wrap1(Landroid/accessibilityservice/GestureDescription;J)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    int-to-long v8, p1

    add-long/2addr v8, v6

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 3

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    new-array v1, p0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v1
.end method

.method public static getMotionEventsFromGestureSteps(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/GestureDescription$GestureStep;

    iget v5, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getLastTouchPoints(I)[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v2

    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    move-result v3

    iget-object v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget-wide v6, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-static/range {v1 .. v7}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;I[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v1
.end method

.method private static getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 3

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v1

    if-ge v1, p0, :cond_1

    :cond_0
    new-array v1, p0, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    return-object v1
.end method

.method private static obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 20

    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerCoords(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    invoke-static/range {p6 .. p6}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getPointerProps(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    aget-object v2, v8, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mPathIndex:I

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    aget-object v2, v8, v18

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    aget-object v2, v9, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v2, v9, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v2, v9, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    aget-object v2, v9, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v18

    aget-object v3, p5, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p6

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method
