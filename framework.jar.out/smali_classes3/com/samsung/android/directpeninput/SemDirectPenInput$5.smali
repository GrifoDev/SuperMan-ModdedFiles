.class Lcom/samsung/android/directpeninput/SemDirectPenInput$5;
.super Ljava/lang/Object;
.source "SemDirectPenInput.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1402
    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v8, 0x1c2

    const-wide/16 v6, 0x15e

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1407
    .local v0, "action":I
    if-nez v0, :cond_6

    .line 1408
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get3(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/directpeninput/PopupCue;->switchCueButton(Z)V

    .line 1412
    :cond_0
    if-eqz p1, :cond_1

    .line 1413
    invoke-virtual {p1, v4}, Landroid/view/View;->playSoundEffect(I)V

    .line 1416
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1419
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1421
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1422
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1423
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1424
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-set1(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1425
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 1426
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$5;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1466
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return v4

    .line 1433
    .restart local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not find IMM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap5(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    .line 1435
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$5;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1442
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1443
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1444
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v5}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-set1(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    .line 1445
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 1446
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$3;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$5;)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1453
    :cond_5
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not find IMM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap5(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    .line 1455
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$5$4;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$5;)V

    invoke-virtual {v2, v3, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1463
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    if-ne v0, v5, :cond_2

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 1464
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$5;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap3(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    goto :goto_0
.end method
