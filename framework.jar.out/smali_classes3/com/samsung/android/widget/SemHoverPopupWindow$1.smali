.class Lcom/samsung/android/widget/SemHoverPopupWindow$1;
.super Landroid/os/Handler;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "mDismissHandler handleMessage: Call dismiss"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method
