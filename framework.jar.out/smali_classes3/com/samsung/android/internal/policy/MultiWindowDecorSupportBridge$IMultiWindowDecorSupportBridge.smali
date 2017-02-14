.class public interface abstract Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge$IMultiWindowDecorSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/policy/MultiWindowDecorSupportBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiWindowDecorSupportBridge"
.end annotation


# virtual methods
.method public abstract checkReadyToResizeFreeform(Landroid/view/MotionEvent;)Z
.end method

.method public abstract createResizingFrameRenderNode(Landroid/view/ThreadedRenderer;Landroid/view/Surface;I)V
.end method

.method public abstract dispatchHoverEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract dispatchWindowSystemUiVisiblityChanged(I)V
.end method

.method public abstract drawFreeformFrameIfNeeded(Landroid/view/DisplayListCanvas;)V
.end method

.method public abstract drawResizingFrameRenderNode(Landroid/view/ThreadedRenderer;IIIILandroid/graphics/Rect;)V
.end method

.method public abstract getMultiWindowModeChanged()Z
.end method

.method public abstract getStackId()I
.end method

.method public abstract hasDecorCaptionView()Z
.end method

.method public abstract hasEdgeFlag()Z
.end method

.method public abstract init(Lcom/android/internal/policy/DecorView;Lcom/android/internal/policy/PhoneWindow;)V
.end method

.method public abstract isDesktopMode()Z
.end method

.method public abstract isFullScreenFreeform()Z
.end method

.method public abstract isImmersiveMode(I)Z
.end method

.method public abstract isResizing()Z
.end method

.method public abstract notifyMovingTask(Z)V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;II)V
.end method

.method public abstract onLayout(ZIIII)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract removeResizingFrameRenderNode(Landroid/view/ThreadedRenderer;)V
.end method

.method public abstract requestInvalidateRenderNode(Ljava/lang/String;)V
.end method

.method public abstract setBlockDrawingFreeformFrame(Z)V
.end method

.method public abstract setDarkDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
.end method

.method public abstract setLightDecorCaptionShade(Lcom/android/internal/widget/DecorCaptionView;)V
.end method

.method public abstract setMultiWindowModeChanged(Z)V
.end method

.method public abstract setResizeMode(I)V
.end method

.method public abstract updateFullScreenFreeform(I)V
.end method
