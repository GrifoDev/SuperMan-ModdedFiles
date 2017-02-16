.class Lcom/samsung/android/directpeninput/SemDirectPenInput$6;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/directpeninput/SemDirectPenInput;->createPopupCue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;


# direct methods
.method constructor <init>(Lcom/samsung/android/directpeninput/SemDirectPenInput;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/directpeninput/SemDirectPenInput;

    .prologue
    .line 1471
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x96

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 1475
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1476
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1479
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1480
    .local v0, "action":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get4(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I

    move-result v2

    if-nez v2, :cond_1

    .line 1481
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    .line 1482
    .local v1, "im":Landroid/hardware/input/InputManager;
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v2, p1, v3, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap4(Lcom/samsung/android/directpeninput/SemDirectPenInput;Landroid/view/View;FF)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1483
    const-string/jumbo v2, "DirectPenInput"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Close DirectPenInput cue : 1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1485
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-set0(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1486
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1502
    .end local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_1
    :goto_0
    return v6

    .line 1488
    .restart local v1    # "im":Landroid/hardware/input/InputManager;
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1490
    :cond_3
    if-eqz v1, :cond_4

    const/4 v2, -0x1

    const/16 v3, -0x100

    const/16 v4, 0x140

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/input/InputManager;->getScanCodeState(III)I

    move-result v2

    if-nez v2, :cond_4

    .line 1491
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Close DirectPenInput cue : 2"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1493
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    const-string/jumbo v3, "HOVER_CANCELED"

    invoke-static {v2, v3}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap7(Lcom/samsung/android/directpeninput/SemDirectPenInput;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1494
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isAirButtonClicked()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1495
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Close DirectPenInput cue : 3"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v7}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    goto :goto_0

    .line 1498
    :cond_5
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Close DirectPenInput cue : 4"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$6;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
