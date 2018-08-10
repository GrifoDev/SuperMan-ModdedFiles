.class Lcom/samsung/android/directpeninput/SemDirectPenInput$3;
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

    iput-object p1, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/directpeninput/PopupCue;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get2(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Lcom/samsung/android/directpeninput/PopupCue;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/directpeninput/PopupCue;->switchCueButton(Z)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-get0(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap1(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap2(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v4}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-set1(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$1;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$3;)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return v6

    :cond_4
    const-string/jumbo v2, "DirectPenInput"

    const-string/jumbo v3, "Can not find IMM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap4(Lcom/samsung/android/directpeninput/SemDirectPenInput;)Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/directpeninput/SemDirectPenInput$3$2;-><init>(Lcom/samsung/android/directpeninput/SemDirectPenInput$3;)V

    const-wide/16 v4, 0x1c2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_3

    iget-object v2, p0, Lcom/samsung/android/directpeninput/SemDirectPenInput$3;->this$0:Lcom/samsung/android/directpeninput/SemDirectPenInput;

    invoke-static {v2, v6}, Lcom/samsung/android/directpeninput/SemDirectPenInput;->-wrap2(Lcom/samsung/android/directpeninput/SemDirectPenInput;Z)Z

    goto :goto_0
.end method
