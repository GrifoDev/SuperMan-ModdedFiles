.class Landroid/widget/AbsListView$6;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->semSetGoToTopEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set10(Landroid/widget/AbsListView;I)I

    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->semSetupGoToTop(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/AbsListView$6;->this$0:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/AbsListView;->-set10(Landroid/widget/AbsListView;I)I

    return-void
.end method
