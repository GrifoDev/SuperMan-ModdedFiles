.class public Lcom/android/systemui/recents/sec/base/LayoutConfiguration;
.super Ljava/lang/Object;
.source "LayoutConfiguration.java"


# static fields
.field private static sConfig:Lcom/android/systemui/recents/sec/base/LayoutConfiguration;


# instance fields
.field public mButtonContainerHeight:I

.field public mCloseAllContainerHeight:I

.field public mDisplayOrientation:I

.field public mDisplayRect:Landroid/graphics/Rect;

.field public mDividerSize:I

.field public mMeasuredHeight:I

.field public mMeasuredWidth:I

.field public mNaviBarHeight:I

.field public mRvSidePadding:I

.field public mScreenPinningEnabled:Z

.field public mSizeRatio:F

.field public mSystemInsets:Landroid/graphics/Rect;

.field public mTaskViewGap:I

.field public mTaskViewHeight:I

.field public mTaskViewWidth:I

.field public mTouchExplorationEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->update(Landroid/content/Context;)V

    return-void
.end method

.method public static create(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->sConfig:Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/android/systemui/recents/sec/base/LayoutConfiguration;
    .locals 1

    sget-object v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->sConfig:Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->create(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->sConfig:Lcom/android/systemui/recents/sec/base/LayoutConfiguration;

    return-object v0
.end method


# virtual methods
.method public getThumbnailTransitionTarget(Landroid/content/Context;)Landroid/graphics/RectF;
    .locals 13

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v7

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    const-string/jumbo v9, "TabletRecents_LayoutConfiguration"

    const-string/jumbo v10, "getThumbnailTransitionTarget() - inset=%s, land=%b, isSplit=%b"

    const/4 v8, 0x3

    new-array v11, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v11, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v8, v12, :cond_0

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v11, v12

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x2

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int v2, v8, v3

    :goto_1
    iget v8, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mCloseAllContainerHeight:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewHeight:I

    add-int/2addr v10, v11

    sub-int/2addr v9, v10

    add-int v6, v8, v9

    int-to-float v8, v2

    int-to-float v9, v6

    iget v10, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    add-int/2addr v10, v2

    int-to-float v10, v10

    iget v11, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewHeight:I

    add-int/2addr v11, v6

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    return-object v5

    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    iget v10, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    div-int/lit8 v3, v8, 0x2

    iget v8, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v3

    iget v9, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    mul-int/lit8 v9, v9, 0x3

    add-int v2, v8, v9

    goto :goto_1
.end method

.method public onSizeChanged(II)V
    .locals 7

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredWidth:I

    if-eq v2, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredWidth:I

    const/4 v1, 0x1

    :cond_0
    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredHeight:I

    if-eq v2, p2, :cond_1

    iput p2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredHeight:I

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->updateLayoutState()V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSystemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int v0, p1, v2

    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    iget v3, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mRvSidePadding:I

    const-string/jumbo v2, "TabletRecents_LayoutConfiguration"

    const-string/jumbo v3, "onSizeChanged() - [%d, %d] - mRvSidePadding=%d\n"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mRvSidePadding:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readSystemFlags(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTouchExplorationEnabled:Z

    const-string/jumbo v2, "lock_to_app_enabled"

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mScreenPinningEnabled:Z

    return-void
.end method

.method public update(Landroid/content/Context;)V
    .locals 6

    invoke-static {p1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v1, v1

    const v2, 0x44408000    # 770.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSizeRatio:F

    const-string/jumbo v1, "TabletRecents_LayoutConfiguration"

    const-string/jumbo v2, "updateConfiguration() ori=%d, display=%s\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mNaviBarHeight:I

    const v1, 0x7f070552

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mCloseAllContainerHeight:I

    const v1, 0x7f07054c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mButtonContainerHeight:I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDockedDividerSize(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDividerSize:I

    const v1, 0x7f0706bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSizeRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewGap:I

    const v1, 0x7f0706c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSizeRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewWidth:I

    const v1, 0x7f0706c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mSizeRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mTaskViewHeight:I

    return-void
.end method

.method public updateLayoutState()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredHeight:I

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v3, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/recents/sec/base/LayoutConfiguration;->mMeasuredWidth:I

    if-eq v0, v1, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v3, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iput v2, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->layout:I

    goto :goto_0
.end method
