.class Lcom/android/server/accessibility/SamsungTouchExplorer;
.super Ljava/lang/Object;
.source "SamsungTouchExplorer.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;
.implements Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;,
        Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;
    }
.end annotation


# static fields
.field private static final ALL_POINTER_ID_BITS:I = -0x1

.field private static final CLICK_LOCATION_ACCESSIBILITY_FOCUS:I = 0x1

.field private static final CLICK_LOCATION_LAST_TOUCH_EXPLORED:I = 0x2

.field private static final CLICK_LOCATION_NONE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final EXIT_GESTURE_DETECTION_TIMEOUT:I = 0x7d0

.field private static final INVALID_POINTER_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SamsungTouchExplorer"

.field private static final MAX_DRAGGING_ANGLE_COS:F = 0.52532196f

.field private static final MAX_POINTER_COUNT:I = 0x20

.field private static final MIN_POINTER_DISTANCE_TO_USE_MIDDLE_LOCATION_DIP:I = 0xc8

.field private static final STATE_DELEGATING:I = 0x4

.field private static final STATE_DRAGGING:I = 0x2

.field private static final STATE_GESTURE_DETECTING:I = 0x5

.field private static final STATE_TOUCH_EXPLORING:I = 0x1


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private final mDetermineUserIntentTimeout:I

.field private final mDoubleTapSlop:I

.field private mDraggingPointerId:I

.field private final mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

.field private final mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

.field private mLastTouchedWindowId:I

.field private mLongPressingPointerDeltaX:I

.field private mLongPressingPointerDeltaY:I

.field private mLongPressingPointerId:I

.field private mMultiFingerDetected:I

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private final mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

.field private mScaledMinPointerDistanceToUseMiddleLocation:I

.field private final mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

.field private final mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

.field private final mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

.field private final mTempPoint:Landroid/graphics/Point;

.field private mTouchExplorationInProgress:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/SamsungTouchExplorer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/SamsungTouchExplorer;)I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/SamsungTouchExplorer;)Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/SamsungTouchExplorer;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/SamsungTouchExplorer;Landroid/view/MotionEvent;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    const/16 v3, 0x400

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDetermineUserIntentTimeout:I

    const/high16 v3, 0x200000

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;-><init>(Lcom/android/server/accessibility/SamsungTouchExplorer;II)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    new-instance v1, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-direct {v1, p1, p0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector$Listener;)V

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    return-void
.end method

.method private clear()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v1

    const/high16 v2, 0x2000000

    invoke-direct {p0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method private clear(Landroid/view/MotionEvent;I)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->clear()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->clear()V

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iput-boolean v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private computeClickLocation(Landroid/graphics/Point;)I
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->accessibilityFocusOnlyInActiveWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    iget-object v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v3

    if-ne v2, v3, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v4

    :cond_2
    return v5

    :cond_3
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getAccessibilityFocusClickPointInScreen(Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v4

    :cond_4
    const/4 v2, 0x0

    return v2
.end method

.method private computeInjectionAction(II)I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    return p1

    :sswitch_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x5

    return v1

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getInjectedPointerDownCount()I

    move-result v1

    if-ne v1, v3, :cond_1

    return v3

    :cond_1
    shl-int/lit8 v1, p2, 0x8

    or-int/lit8 v1, v1, 0x6

    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method private endGestureDetection()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x4000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->resetMultiFingerGestureState()V

    const/high16 v0, 0x80000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->cancel()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    return-void
.end method

.method private static getStateSymbolicName(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "STATE_TOUCH_EXPLORING"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "STATE_DRAGGING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "STATE_DELEGATING"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "STATE_GESTURE_DETECTING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    invoke-direct {p0, p1, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object p1

    iput v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    iput v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-direct {p0, p1, v0, v2, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V
    .locals 18

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    const-string/jumbo v14, "SamsungTouchExplorer"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mDraggingPointerId doesn\'t match any pointers on current event. mDraggingPointerId: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", Event: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, 0x1

    shl-int v11, v15, v14

    goto :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_1

    :pswitch_2
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    packed-switch v14, :pswitch_data_1

    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto :goto_1

    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    sub-float v4, v8, v12

    sub-float v5, v9, v13

    float-to-double v14, v4

    float-to-double v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    int-to-double v14, v14

    cmpl-double v14, v6, v14

    if-lez v14, :cond_3

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v4, v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v5, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_3
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1

    :cond_4
    const/4 v14, 0x4

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_0

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v14}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    const/high16 v14, 0x200000

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    if-ne v10, v14, :cond_5

    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v14, v11, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v19

    packed-switch v19, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionStart()V

    const/high16 v19, 0x100000

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v19

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->firstTapDetected()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v19, v0

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v12

    const/16 v19, 0x1

    shl-int v13, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->post(Landroid/view/MotionEvent;ZII)V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v14

    const/16 v19, 0x1

    shl-int v13, v19, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    packed-switch v19, :pswitch_data_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v19

    if-eqz v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    :goto_1
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v19

    if-eqz v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V

    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_0

    const/16 v19, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v19

    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    :cond_5
    :goto_2
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    invoke-virtual {v15, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    sub-float v7, v19, v20

    invoke-virtual {v15, v9}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    sub-float v8, v19, v20

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    sub-float v16, v19, v20

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    sub-float v17, v19, v20

    float-to-double v0, v7

    move-wide/from16 v20, v0

    float-to-double v0, v8

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v20

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->TOUCH_SLOP:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v19, v10, v20

    if-gez v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_0

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->isDraggingGesture(Landroid/view/MotionEvent;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDraggingPointerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v19, 0x43480000    # 200.0f

    mul-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mScaledMinPointerDistanceToUseMiddleLocation:I

    invoke-virtual {v15}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedDownEdgeFlags()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    invoke-virtual {v15, v12}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    sub-float v5, v19, v20

    invoke-virtual {v15, v12}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v19

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    sub-float v6, v19, v20

    float-to-double v0, v5

    move-wide/from16 v20, v0

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mDoubleTapSlop:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    cmpg-double v19, v10, v20

    if-ltz v19, :cond_0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_2

    :cond_8
    const/16 v19, 0x4

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/AccessibilityManagerService;->onTouchInteractionEnd()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    const/16 v19, 0x1

    shl-int v13, v19, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->-wrap0(Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;)Z

    move-result v19

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->post(Landroid/view/MotionEvent;II)V

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v19

    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private isDraggingGesture(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v10, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v0

    invoke-virtual {v9, v8}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v1

    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownX(I)F

    move-result v2

    invoke-virtual {v9, v10}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownY(I)F

    move-result v3

    const v8, 0x3f067b80

    invoke-static/range {v0 .. v8}, Lcom/android/server/accessibility/GestureUtils;->isDraggingGesture(FFFFFFFFF)Z

    move-result v8

    return v8
.end method

.method private offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;
    .locals 21

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    invoke-static/range {v19 .. v19}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/16 v18, 0x0

    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v2, v8, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v2, v9, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p2

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v9, v18

    iget v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p3

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method

.method private sendAccessibilityEvent(I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getActiveWindowId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    :sswitch_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTouchExplorationInProgress:Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x200 -> :sswitch_0
        0x400 -> :sswitch_1
    .end sparse-switch
.end method

.method private sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    shl-int v1, v3, v0

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->setTargetAccessibilityFocus(Z)V

    invoke-direct {p0, p1, v3, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return-void
.end method

.method private sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V
    .locals 7

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-direct {p0, v6, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V
    .locals 4

    const/16 v3, 0xa

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->post()V

    :cond_0
    invoke-direct {p0, v0, v3, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_1
    return-void
.end method

.method private sendMotionEvent(Landroid/view/MotionEvent;III)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p3, v2, :cond_3

    move-object v1, p1

    :goto_0
    if-nez p2, :cond_4

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    :goto_1
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    if-ltz v2, :cond_0

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    neg-int v3, v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->offsetEvent(Landroid/view/MotionEvent;II)Landroid/view/MotionEvent;

    move-result-object v1

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr p4, v2

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v2, v1, v4, p4}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    return-void

    :cond_3
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SamsungTouchExplorer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMotionEvent: Failed to split motion event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedDownEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->setDownTime(J)V

    goto :goto_1
.end method

.method private sendTouchExplorationGestureStartAndHoverEnterIfNeeded(I)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->getLastInjectedHoverEvent()Landroid/view/MotionEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v1

    const/16 v2, 0x200

    invoke-direct {p0, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    const/16 v2, 0x9

    invoke-direct {p0, v0, v2, v1, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    :cond_0
    return-void
.end method

.method private sendUpForInjectedDownPointers(Landroid/view/MotionEvent;I)V
    .locals 8

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->isInjectedPointerDown(I)Z

    move-result v6

    if-nez v6, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    shl-int v6, v7, v4

    or-int/2addr v5, v6

    invoke-direct {p0, v7, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeInjectionAction(II)I

    move-result v0

    invoke-direct {p0, p1, v0, v5, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1

    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_1
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    const/16 v3, 0x100

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/16 v1, 0x400

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->cancel()V

    const/high16 v1, 0x200000

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_1
    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v1, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_2
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->getSIPisShown()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-get0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mInjectedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;->-set0(Lcom/android/server/accessibility/SamsungTouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v1

    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x80 -> :sswitch_2
        0x100 -> :sswitch_2
        0x8000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear()V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 26

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchExplorationEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->isPending()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendTouchInteractionEndDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendAccessibilityEventDelayed;->forceSendAndRemove()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLastTouchedWindowId:I

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->isLastExploreWindowIsSIPType(I)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    sget-object v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->performActionOnAccessibilityFocusedItem(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    return v4

    :cond_3
    const-string/jumbo v4, "SamsungTouchExplorer"

    const-string/jumbo v5, "ACTION_CLICK failed. Dispatching motion events to simulate click."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v23

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v24

    if-nez v24, :cond_4

    const/4 v4, 0x1

    return v4

    :cond_4
    const/4 v4, 0x1

    new-array v10, v4, [Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v10, v5

    const/4 v4, 0x0

    aget-object v4, v10, v4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v4, 0x1

    new-array v11, v4, [Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    const/4 v5, 0x0

    aput-object v4, v11, v5

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v4, 0x0

    aget-object v4, v11, v4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v21

    const/4 v4, 0x1

    move/from16 v0, v24

    if-ne v0, v4, :cond_5

    const/16 v25, 0x1

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendActionDownAndUp(Landroid/view/MotionEvent;IZ)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/MotionEvent;->recycle()V

    const/4 v4, 0x1

    return v4

    :cond_5
    const/16 v25, 0x0

    goto :goto_0
.end method

.method public onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
    .locals 6

    iget v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v4}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getLastReceivedEvent()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mTempPoint:Landroid/graphics/Point;

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->computeClickLocation(Landroid/graphics/Point;)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    iput v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaX:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mLongPressingPointerDeltaY:I

    invoke-direct {p0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendHoverExitAndTouchExplorationGestureEndIfNeeded(I)V

    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendDownForAllNotInjectedPointers(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onGestureCancelled(Landroid/view/MotionEvent;I)Z
    .locals 5

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    return v4

    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    if-ne v2, v4, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->getPrimaryPointerId()I

    move-result v0

    shl-int v1, v4, v0

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->addEvent(Landroid/view/MotionEvent;)V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->forceSendAndRemove()V

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v2}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    const/4 v2, 0x7

    invoke-direct {p0, p1, v2, v1, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendMotionEvent(Landroid/view/MotionEvent;III)V

    return v4

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public onGestureCompleted(I)Z
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->endGestureDetection()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onGestureStarted()Z
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverEnterAndMoveDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverEnterAndMoveDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mSendHoverExitDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$SendHoverExitDelayed;->cancel()V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mExitGestureDetectionModeDelayed:Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungTouchExplorer$ExitGestureDetectionModeDelayed;->post()V

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x2000000

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/SamsungTouchExplorer;->sendAccessibilityEvent(I)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mReceivedPointerTracker:Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/SamsungTouchExplorer$ReceivedPointerTracker;->onMotionEvent(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->onMotionEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->clear(Landroid/view/MotionEvent;I)V

    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Illegal state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateTouchExploring(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDragging(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1, p3}, Lcom/android/server/accessibility/SamsungTouchExplorer;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public onMultiFingerStarted(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mGestureDetector:Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/SamsungAccessibilityGestureDetector;->setTwoFingerEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onMultiFingerStopped(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mMultiFingerDetected:I

    return-void
.end method

.method public onMultiFingerTapDetected(IIZ)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, -0x1

    if-ne p1, v1, :cond_8

    if-ne p2, v3, :cond_3

    if-eqz p3, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v1, "SamsungTouchExplorer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MultiFinger TAP GestureId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onGesture(I)Z

    :cond_1
    return-void

    :cond_2
    const/16 v0, 0x21

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_5

    if-eqz p3, :cond_4

    const/16 v0, 0x25

    goto :goto_0

    :cond_4
    const/16 v0, 0x23

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_7

    if-eqz p3, :cond_6

    const/16 v0, 0x2a

    goto :goto_0

    :cond_6
    const/16 v0, 0x27

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_0

    if-nez p3, :cond_0

    const/16 v0, 0x2c

    goto :goto_0

    :cond_8
    if-ne p1, v2, :cond_e

    if-ne p2, v3, :cond_9

    if-nez p3, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_9
    if-ne p2, v1, :cond_b

    if-eqz p3, :cond_a

    const/16 v0, 0x26

    goto :goto_0

    :cond_a
    const/16 v0, 0x24

    goto :goto_0

    :cond_b
    if-ne p2, v2, :cond_d

    if-eqz p3, :cond_c

    const/16 v0, 0x2b

    goto :goto_0

    :cond_c
    const/16 v0, 0x28

    goto :goto_0

    :cond_d
    if-ne p2, v4, :cond_0

    if-nez p3, :cond_0

    const/16 v0, 0x2d

    goto :goto_0

    :cond_e
    if-ne p1, v4, :cond_0

    if-ne p2, v3, :cond_f

    if-nez p3, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_f
    if-ne p2, v1, :cond_10

    if-nez p3, :cond_0

    const/16 v0, 0x2f

    goto :goto_0

    :cond_10
    if-ne p2, v2, :cond_0

    if-nez p3, :cond_0

    const/16 v0, 0x30

    goto :goto_0
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchExplorer;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SamsungTouchExplorer"

    return-object v0
.end method
