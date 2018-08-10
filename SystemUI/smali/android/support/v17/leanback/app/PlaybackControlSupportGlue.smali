.class public abstract Landroid/support/v17/leanback/app/PlaybackControlSupportGlue;
.super Landroid/support/v17/leanback/app/PlaybackControlGlue;
.source "PlaybackControlSupportGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackControlSupportGlue$PlaybackSupportGlueHostOld;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method protected onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/PlaybackControlGlue;->onAttachedToHost(Landroid/support/v17/leanback/media/PlaybackGlueHost;)V

    instance-of v0, p1, Landroid/support/v17/leanback/app/PlaybackControlSupportGlue$PlaybackSupportGlueHostOld;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/support/v17/leanback/app/PlaybackControlSupportGlue$PlaybackSupportGlueHostOld;

    iput-object p0, p1, Landroid/support/v17/leanback/app/PlaybackControlSupportGlue$PlaybackSupportGlueHostOld;->mGlue:Landroid/support/v17/leanback/app/PlaybackControlSupportGlue;

    :cond_0
    return-void
.end method
