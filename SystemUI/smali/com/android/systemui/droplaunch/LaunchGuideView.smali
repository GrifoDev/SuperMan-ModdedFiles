.class public Lcom/android/systemui/droplaunch/LaunchGuideView;
.super Landroid/view/View;
.source "LaunchGuideView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

.field private mLastOrientation:I

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/droplaunch/LaunchGuideView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastOrientation:I

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    return-void
.end method

.method private finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    invoke-interface {v0}, Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;->finishService()V

    :cond_0
    return-void
.end method

.method private freeformLaunchBounds(II)Landroid/graphics/Rect;
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v6

    iget v5, v6, Landroid/content/res/Configuration;->orientation:I

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/high16 v4, 0x3f000000    # 0.5f

    const v2, 0x3f2b851f    # 0.67f

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v3, v6

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v1, v6

    new-instance v0, Landroid/graphics/Rect;

    add-int v6, p1, v3

    add-int v7, p2, v1

    invoke-direct {v0, p1, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v6, v0, Landroid/graphics/Rect;->left:I

    if-gez v6, :cond_3

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    :cond_0
    :goto_1
    iget v6, v0, Landroid/graphics/Rect;->top:I

    if-gez v6, :cond_4

    iput v8, v0, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    :goto_2
    return-object v0

    :cond_2
    const v4, 0x3f2b851f    # 0.67f

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iput v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iput v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2
.end method

.method private initialize(Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mCallback:Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;

    iget-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastOrientation:I

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mDisplayRect:Landroid/graphics/Rect;

    iput v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastOrientation:I

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iput-object v2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    return-void
.end method

.method private startApp(Landroid/app/PendingIntent;Landroid/graphics/Rect;)V
    .locals 4

    const-string/jumbo v1, "LaunchGuideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startApp: bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/droplaunch/LaunchGuideView$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/droplaunch/LaunchGuideView$1;-><init>(Lcom/android/systemui/droplaunch/LaunchGuideView;Landroid/graphics/Rect;Landroid/app/PendingIntent;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private startApp(Landroid/content/ComponentName;Landroid/graphics/Rect;)V
    .locals 4

    const-string/jumbo v1, "LaunchGuideView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startApp: bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/droplaunch/LaunchGuideView$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/droplaunch/LaunchGuideView$2;-><init>(Lcom/android/systemui/droplaunch/LaunchGuideView;Landroid/graphics/Rect;Landroid/content/ComponentName;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V
    .locals 9

    const/16 v4, 0xfa

    const/4 v2, 0x0

    const/4 v6, -0x1

    iget-object v0, p1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget-object v5, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    invoke-virtual {v5, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    move v3, v2

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    :goto_0
    return-void

    :cond_0
    if-eq p3, v6, :cond_2

    move v2, p3

    :goto_1
    if-eq p4, v6, :cond_3

    move v3, p4

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070416

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getPreFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v1

    :goto_3
    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/ColorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v5

    if-eq v5, p0, :cond_1

    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, p0}, Landroid/graphics/drawable/ColorDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v5, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaOverlay:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->startAnimation(Landroid/graphics/Rect;IIILandroid/view/animation/Interpolator;ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->invalidate()V

    goto :goto_0

    :cond_2
    iget v2, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    goto :goto_1

    :cond_3
    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p1, v5, v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->getFreeformedBounds(II)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredHeight()I

    move-result v4

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v7, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    :goto_0
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->acceptsDrop(IIIILandroid/graphics/Rect;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v12, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-eq v0, v12, :cond_1

    const-string/jumbo v1, "LaunchGuideView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDragEvent(ACTION_DRAG_LOCATION): drop target is change to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v12, :cond_3

    const-string/jumbo v0, "null"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v12, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-nez v0, :cond_4

    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v8, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v9, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/droplaunch/LaunchGuideView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_1
    :goto_2
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/droplaunch/LaunchGuideView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->startApp(Landroid/app/PendingIntent;Landroid/graphics/Rect;)V

    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->finish()V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/droplaunch/LaunchGuideView;->freeformLaunchBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mComponentName:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mLastDropTarget:Lcom/android/systemui/recents/views/DropTarget;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->startApp(Landroid/content/ComponentName;Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/droplaunch/LaunchGuideView;->freeformLaunchBounds(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->finish()V

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v5, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->FREEFORM_DROP_GUIDE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->update(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/droplaunch/LaunchGuideView;->getMeasuredHeight()I

    move-result v2

    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070416

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-direct {v3, v5, v5, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v0, v2, v5, v3}, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->updateFreeformArea(IIZLandroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mVisibleFreeformState:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v3, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->freeformAreaAlpha:I

    sget-object v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->NONE:Lcom/android/systemui/recents/model/TaskStack$FreeformState;

    iget-object v0, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState;->viewState:Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;

    iget v4, v0, Lcom/android/systemui/recents/model/TaskStack$FreeformState$ViewState;->hintTextAlpha:I

    const/4 v2, 0x1

    move-object v0, p0

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/droplaunch/LaunchGuideView;->updateVisibleFreeformRegions(Lcom/android/systemui/recents/model/TaskStack$FreeformState;ZIIZZ)V

    :cond_0
    return-void
.end method

.method public setCallbackAndInitialize(Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/droplaunch/LaunchGuideView;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/android/systemui/droplaunch/LaunchGuideView;->initialize(Lcom/android/systemui/droplaunch/LaunchGuideView$Callback;)V

    return-void
.end method
