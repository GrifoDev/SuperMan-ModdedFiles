.class final Landroid/view/ViewRootImpl$EarlyPostImeInputStage;
.super Landroid/view/ViewRootImpl$InputStage;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EarlyPostImeInputStage"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    return-void
.end method

.method private processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 2

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->handleTooltipKey(Landroid/view/KeyEvent;)V

    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-wrap1(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, v0}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    const/4 v1, 0x0

    return v1
.end method

.method private processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v1, Landroid/view/MotionEvent;

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_6

    const/16 v2, 0x4002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->semEnsureMouseStylusMode(Z)Z

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    const/16 v3, 0x1002

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hideTooltip()V

    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v2, v2, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_4
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v3

    iput v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    iput v3, v2, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    :cond_5
    return v4

    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processKeyEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1}, Landroid/view/InputEvent;->getSource()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;->processPointerEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v1

    return v1

    :cond_1
    return v2
.end method
