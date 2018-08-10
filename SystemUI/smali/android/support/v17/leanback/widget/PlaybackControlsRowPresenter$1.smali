.class Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;
.super Ljava/lang/Object;
.source "PlaybackControlsRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$1;->this$0:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 2

    check-cast p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;

    iget-object v0, p3, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    if-ne v1, p1, :cond_0

    iget-object v1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    if-eq v1, p2, :cond_1

    :cond_0
    iput-object p1, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedViewHolder:Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    iput-object p2, v0, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->mSelectedItem:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter$ViewHolder;->dispatchItemSelection()V

    :cond_1
    return-void
.end method
