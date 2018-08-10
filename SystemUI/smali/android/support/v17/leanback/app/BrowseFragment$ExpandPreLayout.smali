.class Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;
.super Ljava/lang/Object;
.source "BrowseFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandPreLayout"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mState:I

.field private final mView:Landroid/view/View;

.field private mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

.field final synthetic this$0:Landroid/support/v17/leanback/app/BrowseFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/BrowseFragment;Ljava/lang/Runnable;Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    iput-object p2, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    return-void
.end method


# virtual methods
.method execute()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setExpand(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mState:I

    return-void
.end method

.method public onPreDraw()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BrowseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->this$0:Landroid/support/v17/leanback/app/BrowseFragment;

    invoke-static {v0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return v1

    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mState:I

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mainFragmentAdapter:Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/BrowseFragment$MainFragmentAdapter;->setExpand(Z)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput v1, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mState:I

    :cond_2
    :goto_0
    return v2

    :cond_3
    iget v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mState:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v17/leanback/app/BrowseFragment$ExpandPreLayout;->mState:I

    goto :goto_0
.end method
