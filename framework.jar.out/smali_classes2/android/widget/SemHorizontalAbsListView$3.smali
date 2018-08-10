.class Landroid/widget/SemHorizontalAbsListView$3;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SemHorizontalAbsListView;->onTouchUp(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SemHorizontalAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;


# direct methods
.method constructor <init>(Landroid/widget/SemHorizontalAbsListView;Landroid/view/View;Landroid/widget/SemHorizontalAbsListView$PerformClick;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iput-object p2, p0, Landroid/widget/SemHorizontalAbsListView$3;->val$child:Landroid/view/View;

    iput-object p3, p0, Landroid/widget/SemHorizontalAbsListView$3;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/SemHorizontalAbsListView;->-set5(Landroid/widget/SemHorizontalAbsListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/SemHorizontalAbsListView;->mTouchMode:I

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->val$child:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/SemHorizontalAbsListView;->setPressed(Z)V

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get12(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    iget-boolean v0, v0, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {v0}, Landroid/widget/SemHorizontalAbsListView;->-get14(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$3;->val$performClick:Landroid/widget/SemHorizontalAbsListView$PerformClick;

    invoke-virtual {v0}, Landroid/widget/SemHorizontalAbsListView$PerformClick;->run()V

    :cond_1
    return-void
.end method
