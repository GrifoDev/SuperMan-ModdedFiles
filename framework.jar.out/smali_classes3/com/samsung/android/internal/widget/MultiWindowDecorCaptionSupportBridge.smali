.class public Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;
.super Ljava/lang/Object;
.source "MultiWindowDecorCaptionSupportBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "com.android.internal.widget.MultiWindowDecorCaptionSupport"

.field public static final GONE_CAPTION:I = 0x0

.field public static final SHOW_CAPTION:I = 0x1

.field public static final SHOW_CAPTION_OVERLAY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiWindowDecorCaptionSupportBridge"


# instance fields
.field private IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v2, "com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    iput-object v2, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "MultiWindowDecorCaptionSupportBridge"

    const-string/jumbo v3, "Not created this class : com.android.internal.widget.MultiWindowDecorCaptionSupport"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getFullScreenFreeformWindowCaptionVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getFullScreenFreeformWindowCaptionVisibility()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getLastMeasuredWithCaptionHeight()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getLastMeasuredWithCaptionHeight()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->getMultiWindowOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->init(Lcom/android/internal/policy/PhoneWindow;Lcom/android/internal/widget/DecorCaptionView;Landroid/view/GestureDetector;Z)V

    :cond_0
    return-void
.end method

.method public isDesktopMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isDesktopMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->isFullScreenFreeform()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMovingTask(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->notifyMovingTask(Z)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onConfigurationChanged(Z)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLayout(ZIIII)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLayout(ZIIII)V

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onLongPress(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeContentView()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->removeContentView()V

    :cond_0
    return-void
.end method

.method public setCaptionView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setCaptionView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setLastMeasuredWithCaptionHeight(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->setLastMeasuredWithCaptionHeight(Z)V

    :cond_0
    return-void
.end method

.method public updateButtonFocus(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonFocus(Z)V

    :cond_0
    return-void
.end method

.method public updateButtonVisibilityByFeature()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateButtonVisibilityByFeature()V

    :cond_0
    return-void
.end method

.method public updateFullScreenFreeformWindowCaptionVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge;->IBridge:Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;

    invoke-interface {v0, p1}, Lcom/samsung/android/internal/widget/MultiWindowDecorCaptionSupportBridge$IMultiWindowDecorCaptionSupportBridge;->updateFullScreenFreeformWindowCaptionVisibility(I)V

    :cond_0
    return-void
.end method
