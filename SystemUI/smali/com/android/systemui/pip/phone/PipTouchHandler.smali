.class public Lcom/android/systemui/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipTouchHandler$1;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$2;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$3;,
        Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mDeferResizeToNormalBoundsUntilRotation:I

.field private final mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

.field private mDisplayRotation:I

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mExpandedShortestEdgeSize:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

.field private mMenuState:I

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mMovementBounds:Landroid/graphics/Rect;

.field private mMovementWithinDismiss:Z

.field private mMovementWithinMinimize:Z

.field private mNormalBounds:Landroid/graphics/Rect;

.field private mNormalMovementBounds:Landroid/graphics/Rect;

.field private mPinnedStackController:Landroid/view/IPinnedStackController;

.field private mSavedSnapFraction:F

.field private mSendingHoverAccessibilityEvents:Z

.field private mShowDismissAffordance:Ljava/lang/Runnable;

.field private mShowPipMenuOnAnimationEnd:Z

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/pip/phone/PipTouchHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/pip/phone/InputConsumerController;)V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$2;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    new-instance v0, Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-direct {v0, p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    new-instance v0, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/systemui/pip/phone/PipTouchGesture;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->setTouchListener(Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;)V

    new-instance v0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, v0}, Lcom/android/systemui/pip/phone/InputConsumerController;->setRegistrationListener(Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;)V

    invoke-virtual {p4}, Lcom/android/systemui/pip/phone/InputConsumerController;->isRegistered()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method private cleanUpDismissTarget()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->destroyDismissTarget()V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-nez v5, :cond_0

    return v3

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-nez v5, :cond_4

    :goto_1
    return v3

    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_2
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_3
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v8

    if-nez v8, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :pswitch_3
    iget v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, v5}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v7, v6

    move v5, v4

    :goto_4
    if-ge v5, v7, :cond_2

    aget-object v1, v6, v5

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, v8}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    :pswitch_4
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :pswitch_5
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x80

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iput-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto :goto_0

    :pswitch_6
    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x100

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;->obtainRootAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iput-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private onAccessibilityShowMenu()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    return-void
.end method

.method private onRegistrationChanged(Z)V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_1

    new-instance v0, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    new-instance v3, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$2;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMovementBounds(I)V
    .locals 4

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    :goto_1
    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    :goto_2
    invoke-interface {v3, v2}, Landroid/view/IPinnedStackController;->setMinEdgeSize(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "PipTouchHandler"

    const-string/jumbo v3, "Could not set minimized state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-0(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-1(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method synthetic -com_android_systemui_pip_phone_PipTouchHandler-mthref-2()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onAccessibilityShowMenu()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipTouchHandler"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mNormalBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mNormalMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mExpandedBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mExpandedMovementBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMenuState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsImeShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mImeHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mSavedSnapFraction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mEnableDragToEdgeDismiss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mEnableMinimize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipTouchState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object v0
.end method

.method public onActivityPinned()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070483

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v14, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v9, v2, v3

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    int-to-float v3, v3

    iget v4, v11, Landroid/graphics/Point;->x:I

    iget v5, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v9, v3, v4, v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_4

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int v16, v2, v3

    new-instance v13, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    invoke-direct {v13, v0, v2}, Landroid/util/Size;-><init>(II)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v3, v4, v0, v12, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    move/from16 v0, p5

    if-ne v2, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    const/4 v8, 0x1

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_5

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v3

    div-int v16, v2, v3

    new-instance v13, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v16

    invoke-direct {v13, v0, v2}, Landroid/util/Size;-><init>(II)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_6

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int v15, v2, v3

    new-instance v13, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v13, v2, v15}, Landroid/util/Size;-><init>(II)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {v13}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v13}, Landroid/util/Size;->getWidth()I

    move-result v3

    div-int v15, v2, v3

    new-instance v13, Landroid/util/Size;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v13, v2, v15}, Landroid/util/Size;-><init>(II)V

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_8
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    move-object/from16 v17, v12

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v2, :cond_c

    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_b

    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v2, v10}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToIMEOffset(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v17, v14

    goto :goto_4

    :cond_b
    move-object/from16 v0, v17

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v10, v3, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_c
    iget v2, v10, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_9

    iget v2, v10, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v10, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_5
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1, v2, v3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    :cond_0
    return-void
.end method

.method setMenuState(IZ)V
    .locals 13

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v3, -0x1

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v6, 0x0

    if-ne p1, v12, :cond_3

    new-instance v9, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v9, v2, v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    if-eq p1, v10, :cond_2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    if-ne p1, v12, :cond_1

    move v6, v10

    :cond_1
    const/16 v2, 0x337

    invoke-static {v0, v2, v6}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    :cond_2
    return-void

    :cond_3
    if-nez p1, :cond_0

    if-eqz p2, :cond_5

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v0, v3, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    invoke-interface {v0}, Landroid/view/IPinnedStackController;->getDisplayRotation()I

    move-result v7

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v0, v7, :cond_4

    iput v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v0, v3, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    iput v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v0, "PipTouchHandler"

    const-string/jumbo v2, "Could not get display rotation from controller"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    iput v11, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_0
.end method

.method setMinimizedState(ZZ)V
    .locals 0

    return-void
.end method

.method setMinimizedStateInternal(Z)V
    .locals 0

    return-void
.end method

.method setPinnedStackController(Landroid/view/IPinnedStackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->setAllowTouches(Z)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    :cond_0
    return-void
.end method

.method updateDismissFraction()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v3, v4

    const/4 v2, 0x0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float v1, v4, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v4, v2}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setDismissFraction(F)V

    :cond_2
    return-void
.end method
