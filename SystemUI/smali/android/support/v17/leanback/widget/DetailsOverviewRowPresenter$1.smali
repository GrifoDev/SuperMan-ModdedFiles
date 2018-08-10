.class Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;
.super Ljava/lang/Object;
.source "DetailsOverviewRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;->initDetailsOverview(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

.field final synthetic val$vh:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter;

    iput-object p2, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;->val$vh:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKey(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;->val$vh:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;->val$vh:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->getOnKeyListener()Landroid/view/View$OnKeyListener;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$1;->val$vh:Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/DetailsOverviewRowPresenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
