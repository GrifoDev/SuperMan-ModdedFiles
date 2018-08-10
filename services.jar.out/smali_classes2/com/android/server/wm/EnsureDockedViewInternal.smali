.class public Lcom/android/server/wm/EnsureDockedViewInternal;
.super Ljava/lang/Object;
.source "EnsureDockedViewInternal.java"


# instance fields
.field private mAdjustForIme:Z

.field private mEnsureDockStackBottom:I

.field private final mEnsureDockedBounds:Landroid/graphics/Rect;

.field private mEnsureDockedResizing:Z

.field private final mH:Landroid/os/Handler;

.field private mHasImeHeightChanged:Z

.field private final mOrigDockStackBounds:Landroid/graphics/Rect;

.field private mPrevInputTargetStackId:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mAdjustForIme:Z

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mHasImeHeightChanged:Z

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    iput v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    iput-object p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mH:Landroid/os/Handler;

    return-void
.end method

.method private ensureDockedResize(Landroid/graphics/Rect;Z)V
    .locals 5

    iput-boolean p2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedBounds:Landroid/graphics/Rect;

    const/16 v3, 0xc9

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMinimalDockedTaskBounds()Landroid/graphics/Rect;
    .locals 8

    iget-object v4, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v4, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    iget-object v4, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DockedStackDividerController;->getMinimalSizeResizableTask(I)I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public getOrigDockStackBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasImeHeightChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mHasImeHeightChanged:Z

    return v0
.end method

.method public isAdjustForIme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mAdjustForIme:Z

    return v0
.end method

.method public isEnsureDockedResizing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    return v0
.end method

.method public resetEnsureDockedMode()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iput v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    iput-boolean v1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    :cond_0
    return-void
.end method

.method public setAdjustForIme(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mAdjustForIme:Z

    return-void
.end method

.method public setEnsureDockedBottomPosition(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    return-void
.end method

.method public setEnsureDockedMode(ZFLandroid/graphics/Rect;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v10, 0x1

    const/4 v6, -0x1

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DockedStackDividerController;->isAdjustedForIme()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    if-eqz v5, :cond_1

    if-nez p1, :cond_1

    cmpl-float v5, p2, v8

    if-nez v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    if-eqz v3, :cond_6

    xor-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v5, v10}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    goto :goto_1

    :cond_3
    if-eq v2, v6, :cond_5

    iget v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    if-eq v2, v5, :cond_5

    if-ne v2, v7, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v9}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    iput v7, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    goto :goto_2

    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v5, v10}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    iput v2, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    goto :goto_2

    :cond_5
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mHasImeHeightChanged:Z

    if-eqz v5, :cond_0

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    iget v8, p3, Landroid/graphics/Rect;->right:I

    iget v9, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockStackBottom:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v5, v10}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    goto :goto_2

    :cond_6
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mEnsureDockedResizing:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v5, v9}, Lcom/android/server/wm/EnsureDockedViewInternal;->ensureDockedResize(Landroid/graphics/Rect;Z)V

    iput v6, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mPrevInputTargetStackId:I

    :cond_7
    cmpl-float v5, p2, v8

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mOrigDockStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2
.end method

.method public setImeHeightChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mHasImeHeightChanged:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureDockedViewInternal;->mHasImeHeightChanged:Z

    :cond_0
    return-void
.end method
