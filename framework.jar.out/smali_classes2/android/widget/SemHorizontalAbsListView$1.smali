.class Landroid/widget/SemHorizontalAbsListView$1;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SemHorizontalAbsListView;

    .prologue
    .line 11011
    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 11014
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get27(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    .line 11015
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get27(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->smoothScrollToPosition(I)V

    .line 11013
    :goto_0
    return-void

    .line 11017
    :cond_0
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get27(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get24(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get29(Landroid/widget/SemHorizontalAbsListView;)Landroid/view/animation/DecelerateInterpolator;

    move-result-object v2

    .line 11018
    iget-object v3, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v3}, Landroid/widget/SemHorizontalAbsListView;->-get28(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    .line 11017
    invoke-virtual {v2, v3}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 11019
    .local v0, "movingDistance":I
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get28(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->-set6(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 11020
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1}, Landroid/widget/SemHorizontalAbsListView;->-get23(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 11021
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v1, v0}, Landroid/widget/SemHorizontalAbsListView;->-set5(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 11022
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    .line 11027
    :goto_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get26(Landroid/widget/SemHorizontalAbsListView;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x28

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11024
    :cond_1
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get24(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/widget/SemHorizontalAbsListView;->-set5(Landroid/widget/SemHorizontalAbsListView;I)I

    .line 11025
    iget-object v1, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-object v2, p0, Landroid/widget/SemHorizontalAbsListView$1;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v2}, Landroid/widget/SemHorizontalAbsListView;->-get25(Landroid/widget/SemHorizontalAbsListView;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1
.end method
