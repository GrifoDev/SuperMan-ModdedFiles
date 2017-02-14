.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mChoreographer:Landroid/view/Choreographer;

.field private mDecorView:Lcom/android/internal/policy/DecorView;

.field private mFrameAndBackdropNode:Landroid/view/RenderNode;

.field private mFullscreen:Z

.field private mLastCaptionHeight:I

.field private mLastContentHeight:I

.field private mLastContentWidth:I

.field private mLastXOffset:I

.field private mLastYOffset:I

.field private mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final mNewTargetRect:Landroid/graphics/Rect;

.field private mOldFullscreen:Z

.field private final mOldStableInsets:Landroid/graphics/Rect;

.field private final mOldSystemInsets:Landroid/graphics/Rect;

.field private final mOldTargetRect:Landroid/graphics/Rect;

.field private mRenderer:Landroid/view/ThreadedRenderer;

.field private mReportNextDraw:Z

.field private final mResizeMode:I

.field private mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private mSystemBarBackgroundNode:Landroid/view/RenderNode;

.field private final mSystemInsets:Landroid/graphics/Rect;

.field private final mTargetRect:Landroid/graphics/Rect;

.field private mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/Surface;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    const-string/jumbo v1, "ResizeFrame"

    invoke-virtual {p0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    const-string/jumbo v1, "FrameAndBackdropNode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v8, 0x0

    instance-of v1, p4, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_3

    move-object v9, p4

    nop

    nop

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v8

    :cond_0
    :goto_0
    if-nez v8, :cond_1

    const/4 v8, -0x1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v1, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p13

    invoke-virtual {v1, v2, v0, v8}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;Landroid/view/Surface;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v0, p12

    iput v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizeMode:I

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_3
    instance-of v1, p4, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_0

    move-object v10, p4

    nop

    nop

    invoke-virtual {v10}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    goto :goto_0
.end method

.method private addSystemBarNodeIfNeeded()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SystemBarBackgroundNode"

    invoke-static {v0, v1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/view/RenderNode;Z)V

    return-void
.end method

.method private doFrameUncheckedLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    if-eq v0, v1, :cond_2

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method private drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 10

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v6, p3, p4}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v2

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    add-int v7, p1, p3

    add-int v8, p2, p4

    invoke-virtual {v6, p1, p2, v7, v8}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewTopInset(II)I

    move-result v5

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewBottomInset(II)I

    move-result v1

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p6

    iget v7, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Lcom/android/internal/policy/DecorView;->getColorViewRightInset(II)I

    move-result v3

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    add-int v7, p1, p3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v6, :cond_2

    if-eqz p5, :cond_2

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->getNavBarSize(II)I

    move-result v4

    invoke-static {v1, v3}, Lcom/android/internal/policy/DecorView;->isNavBarToRightEdge(II)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    sub-int v7, p3, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v6, v2}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v6, v2}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v6, v7}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    return-void

    :cond_3
    iget-object v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    sub-int v7, p4, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private pingRenderLocked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method private redrawLocked(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-nez v1, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int v2, v1, v6

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int v3, v1, v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    add-int v6, v2, v4

    add-int v7, v3, v5

    invoke-virtual {v1, v2, v3, v6, v7}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v4, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v15, :cond_4

    if-gez v2, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v15, v6, v7, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_1
    invoke-virtual {v15, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    if-gez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v7, v3, v5

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v13}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    move-object/from16 v1, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v1, v6}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/view/RenderNode;)V

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v1, v1, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v6, v1, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object/from16 v12, p1

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    return-void

    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_8
    add-int v1, v2, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v15, v7, v8, v1, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v7, v2, v4

    add-int v8, v3, v5

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2
.end method

.method private reportDrawIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onConfigurationChange()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onContentDrawn(IIII)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-nez v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    sub-int v3, p4, v3

    iput v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v6, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    add-int/2addr v6, v7

    iget v7, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    :goto_1
    monitor-exit p0

    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onRequestDraw(Z)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    if-eqz p5, :cond_4

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    :goto_3
    if-eqz p6, :cond_7

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    :goto_4
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    :cond_4
    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_FOCUSED_FRAME:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v0, v0, Lcom/android/internal/policy/DecorView;->mStackId:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_5

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_3

    :cond_6
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_3

    :cond_7
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    goto :goto_4
.end method

.method public releaseRenderer()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/view/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/view/RenderNode;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView;->mMultiWindowDecorSupportBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
