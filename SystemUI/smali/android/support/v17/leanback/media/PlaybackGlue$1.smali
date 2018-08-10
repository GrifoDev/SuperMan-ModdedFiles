.class Landroid/support/v17/leanback/media/PlaybackGlue$1;
.super Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;
.source "PlaybackGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-direct {p0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onHostDestroy()V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/media/PlaybackGlue;->setHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    return-void
.end method

.method public onHostPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostPause()V

    return-void
.end method

.method public onHostResume()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostResume()V

    return-void
.end method

.method public onHostStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostStart()V

    return-void
.end method

.method public onHostStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackGlue$1;->this$0:Landroid/support/v17/leanback/media/PlaybackGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlue;->onHostStop()V

    return-void
.end method
