.class Landroid/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "FragmentBreadCrumbs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method constructor <init>(Landroid/app/FragmentBreadCrumbs;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/app/FragmentManager$BackStackEntry;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v2, v2, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    if-ne v0, v2, :cond_1

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-get1(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->-get1(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v2}, Landroid/app/FragmentBreadCrumbs;->-get0(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-static {v2}, Landroid/app/FragmentBreadCrumbs;->-get0(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    move-result-object v2

    iget-object v3, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v3, v3, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-interface {v2, v1, v4}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    iget-object v1, v1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/app/FragmentManager;->popBackStack(II)V

    goto :goto_0
.end method
