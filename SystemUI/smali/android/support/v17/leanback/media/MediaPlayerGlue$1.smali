.class Landroid/support/v17/leanback/media/MediaPlayerGlue$1;
.super Ljava/lang/Object;
.source "MediaPlayerGlue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/MediaPlayerGlue;->enableProgressUpdating(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/MediaPlayerGlue;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->updateProgress()V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-static {v0}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->-get0(Landroid/support/v17/leanback/media/MediaPlayerGlue;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerGlue$1;->this$0:Landroid/support/v17/leanback/media/MediaPlayerGlue;

    invoke-virtual {v1}, Landroid/support/v17/leanback/media/MediaPlayerGlue;->getUpdatePeriod()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
