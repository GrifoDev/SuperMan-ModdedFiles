.class Lcom/android/server/accessibility/MagnificationController;
.super Ljava/lang/Object;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;,
        Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;,
        Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
    }
.end annotation


# static fields
.field private static final DEBUG_SET_MAGNIFICATION_SPEC:Z = false

.field private static final DEFAULT_MAGNIFICATION_SCALE:F = 2.0f

.field private static final DEFAULT_SCREEN_MAGNIFICATION_AUTO_UPDATE:I = 0x1

.field private static final INVALID_ID:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationController"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_PERSISTED_SCALE:F = 2.0f

.field private static final MIN_SCALE:F = 1.0f


# instance fields
.field private final mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mIdOfLastServiceToMagnify:I

.field private final mLock:Ljava/lang/Object;

.field private final mMagnificationBounds:Landroid/graphics/Rect;

.field private final mMagnificationRegion:Landroid/graphics/Region;

.field private mRegistered:Z

.field private final mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

.field private final mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect1:Landroid/graphics/Rect;

.field private mUnregisterPending:Z

.field private mUserId:I

.field private final mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController;Landroid/graphics/Region;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationRegionChanged(Landroid/graphics/Region;Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationController;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController;->requestRectangleOnScreen(IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    iput-object p3, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    return-void
.end method

.method private getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getSentOffsetY()F

    move-result v1

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    neg-float v3, v0

    float-to-int v3, v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->scale(F)V

    return-void
.end method

.method private getMinOffsetXLocked()F
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private getMinOffsetYLocked()F
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v0, v1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v1, v1, Landroid/view/MagnificationSpec;->scale:F

    mul-float/2addr v1, v0

    sub-float v1, v0, v1

    return v1
.end method

.method private isScreenMagnificationAutoUpdateEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "accessibility_display_magnification_auto_update"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onMagnificationChangedLocked()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->onMagnificationStateChanged()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mAms:Lcom/android/server/accessibility/AccessibilityManagerService;

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->notifyMagnificationChanged(Landroid/graphics/Region;FFF)V

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V

    goto :goto_0
.end method

.method private onMagnificationRegionChanged(Landroid/graphics/Region;Z)V
    .locals 12

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v11, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v11

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    const/4 v6, 0x1

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v10

    iget v1, v10, Landroid/view/MagnificationSpec;->scale:F

    iget v8, v10, Landroid/view/MagnificationSpec;->offsetX:F

    iget v9, v10, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sub-float/2addr v0, v8

    div-float v2, v0, v1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    add-float/2addr v0, v4

    sub-float/2addr v0, v9

    div-float v3, v0, v1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    :cond_2
    if-eqz v6, :cond_3

    if-eqz p2, :cond_3

    if-eqz v7, :cond_4

    :cond_3
    :goto_0
    monitor-exit v11

    return-void

    :cond_4
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method private requestRectangleOnScreen(IIII)V
    .locals 10

    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/accessibility/MagnificationController;->getMagnificationBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersects(IIII)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    monitor-exit v7

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mTempRect1:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/server/accessibility/MagnificationController;->getMagnifiedFrameInContentCoordsLocked(Landroid/graphics/Rect;)V

    sub-int v6, p3, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-le v6, v8, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-nez v0, :cond_1

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    :goto_0
    sub-int v6, p4, p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v6, v8, :cond_5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v3

    mul-float v6, v4, v3

    mul-float v8, v5, v3

    const/4 v9, -0x1

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/accessibility/MagnificationController;->offsetMagnifiedRegionCenter(FFI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-void

    :cond_1
    :try_start_2
    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_0

    :cond_2
    iget v6, v1, Landroid/graphics/Rect;->left:I

    if-ge p1, v6, :cond_3

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int v6, p1, v6

    int-to-float v4, v6

    goto :goto_0

    :cond_3
    iget v6, v1, Landroid/graphics/Rect;->right:I

    if-le p3, v6, :cond_4

    iget v6, v1, Landroid/graphics/Rect;->right:I

    sub-int v6, p3, v6

    int-to-float v4, v6

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    :cond_5
    iget v6, v1, Landroid/graphics/Rect;->top:I

    if-ge p2, v6, :cond_6

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int v6, p2, v6

    int-to-float v5, v6

    goto :goto_1

    :cond_6
    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    if-le p4, v6, :cond_7

    iget v6, v1, Landroid/graphics/Rect;->bottom:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int v6, p4, v6

    int-to-float v5, v6

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private resetLocked(Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setScaleAndCenterLocked(FFFZI)Z
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->updateMagnificationSpecLocked(FFF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2, p4}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-eq p5, v1, :cond_0

    iput p5, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_0
    return v0
.end method

.method private unregisterInternalLocked()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->unregister()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->unregister()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    return-void
.end method

.method private updateMagnificationSpecLocked(FFF)Z
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterX()F

    move-result p2

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getCenterY()F

    move-result p3

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result p1

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v7

    if-nez v7, :cond_3

    return v8

    :cond_3
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v0, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40a00000    # 5.0f

    invoke-static {p1, v7, v8}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v4

    iget v7, v1, Landroid/view/MagnificationSpec;->scale:F

    invoke-static {v7, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_4

    iput v4, v1, Landroid/view/MagnificationSpec;->scale:F

    const/4 v0, 0x1

    :cond_4
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float v8, p2, p1

    sub-float v2, v7, v8

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v7

    invoke-static {v2, v7, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v5

    iget v7, v1, Landroid/view/MagnificationSpec;->offsetX:F

    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_5

    iput v5, v1, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v0, 0x1

    :cond_5
    iget-object v7, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    iget-object v8, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    mul-float v8, p3, p1

    sub-float v3, v7, v8

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v7

    invoke-static {v3, v7, v9}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v6

    iget v7, v1, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v7

    if-eqz v7, :cond_6

    iput v6, v1, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->onMagnificationChangedLocked()V

    :cond_7
    return v0
.end method


# virtual methods
.method public getCenterX()F
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCenterY()F
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->getScale()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    div-float/2addr v0, v2

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getIdOfLastServiceToMagnify()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    return v0
.end method

.method public getMagnificationBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOffsetX()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getPersistedScale()F
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "accessibility_display_magnification_scale"

    iget v2, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public getSentOffsetX()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    return v0
.end method

.method public getSentOffsetY()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    return v0
.end method

.method public getSentScale()F
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-get1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;

    move-result-object v0

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    return v0
.end method

.method public isMagnifying()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRegisteredLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    return v0
.end method

.method public magnificationRegionContains(FF)Z
    .locals 4

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public offsetMagnifiedRegionCenter(FFI)V
    .locals 6

    iget-object v4, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v1, v3, p1

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetXLocked()F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v1, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    iput v3, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v2, v3, p2

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->getMinOffsetYLocked()F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    iput v3, v0, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1

    iput p3, p0, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->updateSentSpec(Landroid/view/MagnificationSpec;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public persistScale()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v0, v2, Landroid/view/MagnificationSpec;->scale:F

    iget v1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    new-instance v2, Lcom/android/server/accessibility/MagnificationController$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/accessibility/MagnificationController$1;-><init>(Lcom/android/server/accessibility/MagnificationController;FI)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/server/accessibility/MagnificationController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public register()V
    .locals 3

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mScreenStateObserver:Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ScreenStateObserver;->register()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->register()V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mSpecAnimationBridge:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mWindowStateObserver:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->getMagnificationRegion(Landroid/graphics/Region;)V

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method resetIfNeeded(Z)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->isScreenMagnificationAutoUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCenter(FFZI)Z
    .locals 7

    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v6

    return v0

    :cond_0
    const/high16 v1, 0x7fc00000    # NaNf

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v6

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public setScale(FFFZI)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v17

    return v2

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40a00000    # 5.0f

    :try_start_1
    move/from16 v0, p1

    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/MagnificationController;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MagnificationController;->mMagnificationRegion:Landroid/graphics/Region;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/MagnificationController;->mCurrentMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v14, v15, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v2, v3

    div-float v12, v2, v14

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v2, v3

    div-float v13, v2, v14

    iget v2, v15, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float v2, p2, v2

    div-float v8, v2, v14

    iget v2, v15, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float v2, p3, v2

    div-float v9, v2, v14

    sub-float v2, v12, v8

    div-float v3, v14, p1

    mul-float v10, v2, v3

    sub-float v2, v13, v9

    div-float v3, v14, p1

    mul-float v11, v2, v3

    add-float v4, v8, v10

    add-float v5, v9, v11

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/MagnificationController;->mIdOfLastServiceToMagnify:I

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v17

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v17

    throw v2
.end method

.method public setScaleAndCenter(FFFZI)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p5}, Lcom/android/server/accessibility/MagnificationController;->setScaleAndCenterLocked(FFFZI)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setUserId(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/server/accessibility/MagnificationController;->mUserId:I

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->reset(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregister()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController;->unregisterInternalLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController;->mUnregisterPending:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationController;->resetLocked(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
