.class Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "PlaybackControlsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;-><init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->showControls(Landroid/support/v17/leanback/widget/Presenter;)V

    :cond_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mMoreActionsShowing:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    add-int v2, p1, v0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder$1;->this$1:Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->mPresenter:Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/PlaybackControlsPresenter$ViewHolder;->bindControlToAction(ILandroid/support/v17/leanback/widget/Presenter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
