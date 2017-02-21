.class public Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.policy.MultiWindowDecorSupport"

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorSupportBridge"


# instance fields
.field private IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v2, "com.android.internal.policy.MultiWindowDecorSupport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    iput-object v2, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MultiWindowDecorSupportBridge"

    const-string/jumbo v3, "Not created this class : com.android.internal.policy.MultiWindowDecorSupport"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;Landroid/view/Surface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;Landroid/view/Surface;I)V

    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->dispatchHoverEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public dispatchWindowSystemUiVisiblityChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->dispatchWindowSystemUiVisiblityChanged(I)V

    :cond_0
    return-void
.end method

.method public drawFreeformFrameIfNeeded(Landroid/view/DisplayListCanvas;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->drawFreeformFrameIfNeeded(Landroid/view/DisplayListCanvas;)V

    :cond_0
    return-void
.end method

.method public drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public getMultiWindowModeChanged()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->getMultiWindowModeChanged()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStackId()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->getStackId()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public hasDecorCaptionView()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->hasDecorCaptionView()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasEdgeFlag()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->hasEdgeFlag()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->init(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V

    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isDesktopMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isFullScreenFreeform()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isImmersiveMode(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isImmersiveMode(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isResizing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->isResizing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMovingTask(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->notifyMovingTask(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onConfigurationChanged(Landroid/content/res/Configuration;II)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V

    :cond_0
    return-void
.end method

.method public requestInvalidateRenderNode(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->requestInvalidateRenderNode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setBlockDrawingFreeformFrame(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setBlockDrawingFreeformFrame(Z)V

    :cond_0
    return-void
.end method

.method public setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    :cond_0
    return-void
.end method

.method public setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V

    :cond_0
    return-void
.end method

.method public setMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setMultiWindowModeChanged(Z)V

    :cond_0
    return-void
.end method

.method public setResizeMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->setResizeMode(I)V

    :cond_0
    return-void
.end method

.method public updateFullScreenFreeform(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;->IBridge:Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;->updateFullScreenFreeform(I)V

    :cond_0
    return-void
.end method
