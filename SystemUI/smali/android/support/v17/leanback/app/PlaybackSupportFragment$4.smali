.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;
.super Landroid/os/Handler;
.source "PlaybackSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->-get0()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    :cond_0
    return-void
.end method
