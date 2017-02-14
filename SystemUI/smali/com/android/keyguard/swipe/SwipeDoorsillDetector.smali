.class public Lcom/android/keyguard/swipe/SwipeDoorsillDetector;
.super Ljava/lang/Object;
.source "SwipeDoorsillDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDistance:D

.field private mIntercepting:Z

.field private mIsMultiTouch:Z

.field private mIsTouching:Z

.field private mStartX:F

.field private mStartY:F

.field private mSwipeUnlockRadius:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

.field private mUnlockExecuted:Z

.field private mWallpaperController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v2, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iput-object p1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iput-object p2, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

    iget-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$dimen;->keyguard_swipe_unlock_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    return-void
.end method

.method private isUnlockPossible()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "SwipeDoorsillDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsMultiTouch:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mUnlockExecuted:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mStartX:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mStartY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isDeviceInteractive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartX:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartY:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private unlockExecute()V
    .locals 2

    const-string/jumbo v0, "SwipeDoorsillDetector"

    const-string/jumbo v1, "unlockExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    iget-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->onUnlock()V

    iget-object v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;->onUnlockExecuted()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v12, 0x2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    if-eqz v5, :cond_0

    const-string/jumbo v4, "SwipeDoorsillDetector"

    const-string/jumbo v5, "onTouchEvent(): Unlock is started already"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    if-nez v5, :cond_1

    const-string/jumbo v4, "SwipeDoorsillDetector"

    const-string/jumbo v5, "onTouchEvent(): Detector can\'t be intercepting touchEvent"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    sget-boolean v5, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v3, "SwipeDoorsillDetector"

    const-string/jumbo v5, "isSupportSimPermDisabled!!"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mWallpaperController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v3, p1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v5, v12, :cond_3

    move v3, v4

    :cond_3
    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v3, "SwipeDoorsillDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_POINTER_DOWN: mIsMultiTouch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    iput-boolean v4, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartY:F

    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    goto :goto_0

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    if-nez v5, :cond_4

    return v3

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v3}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartX:F

    sub-float/2addr v3, v5

    float-to-int v0, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartY:F

    sub-float/2addr v3, v5

    float-to-int v1, v3

    int-to-double v6, v0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    goto :goto_0

    :pswitch_4
    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_CANCEL mDistance: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-gt v5, v4, :cond_5

    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_CANCEL: mIsMultiTouch"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    goto/16 :goto_0

    :pswitch_5
    const-string/jumbo v5, "SwipeDoorsillDetector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ACTION_UP (T/D/R)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->setIntercept(Z)V

    iget-object v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v5}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;->userActivity()V

    iget-wide v6, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    iget v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mTouchSlop:I

    int-to-double v8, v5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockCallback:Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;

    invoke-interface {v5}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector$UnlockCallback;->onAffordanceTap()V

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->reset()V

    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsTouching:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    if-lt v5, v12, :cond_7

    move v3, v4

    :cond_7
    iput-boolean v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    const-string/jumbo v3, "SwipeDoorsillDetector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ACTION_UP: mIsMultiTouch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIsMultiTouch:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mSwipeUnlockRadius:I

    int-to-double v6, v5

    iget-wide v8, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    cmpg-double v5, v6, v8

    if-gez v5, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->isUnlockPossible()Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "SwipeDoorsillDetector#unlockExecute"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->unlockExecute()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    const-string/jumbo v0, "SwipeDoorsillDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mUnlockExecuted:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mDistance:D

    iput v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartX:F

    iput v3, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mStartY:F

    return-void
.end method

.method public setIntercept(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/swipe/SwipeDoorsillDetector;->mIntercepting:Z

    return-void
.end method
