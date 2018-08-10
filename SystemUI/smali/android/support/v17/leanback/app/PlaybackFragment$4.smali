.class Landroid/support/v17/leanback/app/PlaybackFragment$4;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Landroid/support/v17/leanback/app/PlaybackFragment;->-get0()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment$4;->this$0:Landroid/support/v17/leanback/app/PlaybackFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    :cond_0
    return-void
.end method
