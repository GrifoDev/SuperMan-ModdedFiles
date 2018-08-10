.class Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;
.super Landroid/view/animation/Animation;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->openOverflow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field final synthetic val$left:F

.field final synthetic val$right:F

.field final synthetic val$startWidth:I

.field final synthetic val$targetWidth:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;IIFF)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iput p2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$targetWidth:I

    iput p3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    iput p4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$left:F

    iput p5, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$right:F

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$targetWidth:I

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    add-int/2addr v3, v0

    invoke-static {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap9(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get8(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$left:F

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-wrap1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get14(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get21(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$right:F

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get14(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$startWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setX(F)V

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get21(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->this$1:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-static {v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->-get1(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$15;->val$targetWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;->setX(F)V

    goto :goto_1
.end method
