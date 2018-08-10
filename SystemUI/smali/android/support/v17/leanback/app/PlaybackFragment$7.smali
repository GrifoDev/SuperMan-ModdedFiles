.class Landroid/support/v17/leanback/app/PlaybackFragment$7;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;
.source "PlaybackFragment.java"


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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttachedToWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onBind(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackSeekUi;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$7;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-object v1, v1, Landroid/support/v17/leanback/app/PlaybackFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/PlaybackSeekUi;->setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
