.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0xc8L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x1f4L

.field private static final DEBUG:Z = false

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureLibrary:Landroid/gesture/GestureLibrary;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .locals 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    const v0, 0x1100002

    invoke-static {p1, v0}, Landroid/gesture/GestureLibraries;->fromRawResource(Landroid/content/Context;I)Landroid/gesture/GestureLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setOrientationStyle(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/gesture/GestureLibrary;->setSequenceType(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v0}, Landroid/gesture/GestureLibrary;->load()Z

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    return-void
.end method

.method private cancelGesture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 14

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_3

    const/4 v4, 0x0

    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    :cond_3
    if-ne v4, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 10

    new-instance v1, Landroid/gesture/Gesture;

    invoke-direct {v1}, Landroid/gesture/Gesture;-><init>()V

    new-instance v5, Landroid/gesture/GestureStroke;

    iget-object v6, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Landroid/gesture/GestureStroke;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v1, v5}, Landroid/gesture/Gesture;->addStroke(Landroid/gesture/GestureStroke;)V

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureLibrary:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, v1}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v6, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    cmpl-double v5, v6, v8

    if-ltz v5, :cond_0

    :try_start_0
    iget-object v5, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v5, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    return v5

    :catch_0
    move-exception v3

    const-string/jumbo v5, "AccessibilityGestureDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Non numeric gesture id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v5, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v5

    return v5
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_8

    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    if-nez v9, :cond_7

    const/16 v20, 0x0

    return v20

    :pswitch_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    move/from16 v20, v0

    sub-float v6, v20, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    move/from16 v20, v0

    sub-float v7, v20, v19

    float-to-double v0, v6

    move-wide/from16 v20, v0

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v20, v10, v20

    if-lez v20, :cond_1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v20

    return v20

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    move-wide/from16 v20, v0

    sub-long v16, v14, v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    const-wide/16 v12, 0x1f4

    :goto_1
    cmp-long v20, v16, v12

    if-lez v20, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    :cond_2
    const-wide/16 v12, 0xc8

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v20, 0x40400000    # 3.0f

    cmpl-float v20, v4, v20

    if-gez v20, :cond_4

    const/high16 v20, 0x40400000    # 3.0f

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_0

    :cond_4
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_0

    :cond_6
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    const/16 v20, 0x0

    return v20

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    return v20

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method
