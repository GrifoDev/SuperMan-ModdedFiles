.class Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$5;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "PlaybackOverlaySupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$5;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment$5;->this$0:Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackOverlaySupportFragment;->updateControlsBottomSpace(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;)V

    return-void
.end method
