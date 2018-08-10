.class Landroid/support/v17/leanback/app/PlaybackFragment$1;
.super Ljava/lang/Object;
.source "PlaybackFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    if-eqz v0, :cond_0

    instance-of v0, p3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter$ViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$1;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
