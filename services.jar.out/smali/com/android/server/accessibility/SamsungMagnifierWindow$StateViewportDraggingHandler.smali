.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"

# interfaces
.implements Lcom/android/server/accessibility/SamsungMagnifierWindow$MotionEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isMovingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get4(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->setMovingMode(ZFF)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Should have one pointer down."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get6(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap2(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get6(Lcom/android/server/accessibility/SamsungMagnifierWindow;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap1(Lcom/android/server/accessibility/SamsungMagnifierWindow;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->clear()V

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$StateViewportDraggingHandler;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-wrap4(Lcom/android/server/accessibility/SamsungMagnifierWindow;I)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Unexpected event type: ACTION_POINTER_UP"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
