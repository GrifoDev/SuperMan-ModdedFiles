.class Landroid/support/v17/leanback/app/BrowseFragment$12;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "BrowseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/BrowseFragment;->swapToMainFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;

.field final synthetic val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 5

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->val$gridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2, p0}, Landroid/support/v17/leanback/widget/VerticalGridView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BrowseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$id;->scale_frame:I

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v2, v2, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->scale_frame:I

    iget-object v4, p0, Landroid/support/v17/leanback/app/BrowseFragment$12;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    iget-object v4, v4, Landroid/support/v17/leanback/app/BrowseFragment;->mMainFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
