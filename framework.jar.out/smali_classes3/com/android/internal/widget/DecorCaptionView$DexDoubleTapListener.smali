.class Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexDoubleTapListener"
.end annotation


# instance fields
.field mIsNotPrimaryButtonClicked:Z

.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-wrap0(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get2(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    if-eq v2, v3, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get0(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get4(Lcom/android/internal/widget/DecorCaptionView;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->mIsNotPrimaryButtonClicked:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-wrap4(Lcom/android/internal/widget/DecorCaptionView;)V

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DecorCaptionView;->isFullScreenFreeform()Z

    move-result v2

    if-nez v2, :cond_3

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "DMBY"

    aput-object v2, v1, v4

    const-string/jumbo v2, "DMPA"

    aput-object v2, v1, v3

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v2, "MaximizedByDoubleTap"

    aput-object v2, v0, v4

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get1(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v2}, Lcom/android/internal/widget/DecorCaptionView;->-get1(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIMForMaximizedAppInDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return v4

    :cond_4
    move v2, v4

    goto :goto_0

    :cond_5
    move v2, v4

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
