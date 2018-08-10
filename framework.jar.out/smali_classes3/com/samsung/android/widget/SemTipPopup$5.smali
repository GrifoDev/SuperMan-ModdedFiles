.class Lcom/samsung/android/widget/SemTipPopup$5;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->showInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0, v5}, Lcom/samsung/android/widget/SemTipPopup;->-set0(Lcom/samsung/android/widget/SemTipPopup;I)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-get11(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-get11(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-get13(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/widget/SemTipPopup$OnStateChangeListener;->onStateChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-get5(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v0}, Lcom/samsung/android/widget/SemTipPopup;->-get5(Lcom/samsung/android/widget/SemTipPopup;)Lcom/samsung/android/widget/SemTipPopup$TipWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-get12(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v2}, Lcom/samsung/android/widget/SemTipPopup;->-get6(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemTipPopup$5;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v3}, Lcom/samsung/android/widget/SemTipPopup;->-get7(Lcom/samsung/android/widget/SemTipPopup;)I

    move-result v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get9()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get9()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get9()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get9()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/widget/SemTipPopup;->-get9()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v4
.end method
