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
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemHoverPopupWindow;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 381
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get19(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 382
    return-void

    .line 385
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get24(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get32(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 389
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

    .line 390
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

    .line 399
    .local v0, "movelength":I
    if-gez v0, :cond_2

    .line 401
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_6

    .line 404
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

    .line 405
    .local v1, "tempMoveLength":I
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v2, v2, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get16(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 406
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

    .line 417
    .end local v1    # "tempMoveLength":I
    :cond_2
    :goto_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_7

    .line 421
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    .line 422
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    .line 423
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 376
    .end local v0    # "movelength":I
    :cond_3
    :goto_1
    return-void

    .line 386
    :cond_4
    return-void

    .line 408
    .restart local v0    # "movelength":I
    .restart local v1    # "tempMoveLength":I
    :cond_5
    move v0, v1

    goto :goto_0

    .line 410
    .end local v1    # "tempMoveLength":I
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_2

    .line 411
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get28(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v0

    goto :goto_0

    .line 425
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_8

    .line 429
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    .line 430
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    .line 431
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 433
    :cond_8
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 440
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_a

    .line 441
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get2(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    .line 446
    :cond_9
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-wrap1(Lcom/samsung/android/widget/SemHoverPopupWindow;II)V

    .line 447
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get34(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 442
    :cond_a
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get11(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 443
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$1;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get4(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-set2(Lcom/samsung/android/widget/SemHoverPopupWindow;I)I

    goto :goto_2
.end method
