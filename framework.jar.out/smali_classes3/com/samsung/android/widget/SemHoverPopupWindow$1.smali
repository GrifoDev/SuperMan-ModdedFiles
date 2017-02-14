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
.method constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get19(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get24(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get32(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get27(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get27(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v2, v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, v3, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    if-gez v0, :cond_2

    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get7(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    add-int v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v2, v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-le v2, v3, :cond_5

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v2, v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    :cond_2
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v0

    goto :goto_0

    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    :cond_a
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get4(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    goto :goto_2
.end method
