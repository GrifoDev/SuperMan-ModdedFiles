.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openExpandPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$startHeight:I

.field final synthetic val$startY:F

.field final synthetic val$targetHeight:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IFI)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startY:F

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startHeight:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get16(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/widget/Button;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get24(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get24(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setHeight(I)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get9(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startY:F

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$targetHeight:I

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->val$startHeight:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float v1, v2, v3

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get11(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_1

    cmpg-float v2, v1, v5

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setY(F)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestLayout()V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    new-instance v3, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10$1;-><init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get11(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$10;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setY(F)V

    goto :goto_0
.end method
