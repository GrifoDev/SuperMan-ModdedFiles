.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;
.super Landroid/support/v17/leanback/media/PlaybackGlue$PlayerCallback;
.source "DetailsBackgroundVideoHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaybackControlStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# virtual methods
.method public onPreparedStateChanged(Landroid/support/v17/leanback/media/PlaybackGlue;)V
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/media/PlaybackGlue;->isPrepared()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$PlaybackControlStateCallback;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-static {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->-wrap0(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V

    :cond_0
    return-void
.end method
