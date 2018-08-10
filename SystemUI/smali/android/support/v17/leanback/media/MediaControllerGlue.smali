.class public abstract Landroid/support/v17/leanback/media/MediaControllerGlue;
.super Landroid/support/v17/leanback/media/PlaybackControlGlue;
.source "MediaControllerGlue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/media/MediaControllerGlue$1;
    }
.end annotation


# instance fields
.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;


# virtual methods
.method public getCurrentPosition()I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentSpeedId()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackSpeed()F

    move-result v3

    float-to-int v2, v3

    if-nez v2, :cond_0

    return v4

    :cond_0
    if-ne v2, v5, :cond_1

    return v5

    :cond_1
    if-lez v2, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getFastForwardSpeeds()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_5

    aget v3, v1, v0

    if-ne v2, v3, :cond_2

    add-int/lit8 v3, v0, 0xa

    return v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getRewindSpeeds()[I

    move-result-object v1

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_5

    neg-int v3, v2

    aget v4, v1, v0

    if-ne v3, v4, :cond_4

    rsub-int/lit8 v3, v0, -0xa

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "MediaControllerGlue"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t find index for speed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3
.end method

.method public getMediaArt()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/support/v17/leanback/media/MediaControllerGlue;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getMediaDuration()I
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    const-string/jumbo v1, "android.media.metadata.DURATION"

    invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getMediaSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMediaTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaMetadataCompat;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedActions()J
    .locals 12

    const-wide/16 v10, 0x20

    const-wide/16 v8, 0x10

    const-wide/16 v6, 0x0

    const-wide/16 v2, 0x0

    iget-object v4, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaControllerCompat;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v0

    const-wide/16 v4, 0x200

    and-long/2addr v4, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x40

    :cond_0
    and-long v4, v0, v10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    :cond_1
    and-long v4, v0, v8

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    or-long/2addr v2, v8

    :cond_2
    const-wide/16 v4, 0x40

    and-long/2addr v4, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    :cond_3
    const-wide/16 v4, 0x8

    and-long/2addr v4, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    or-long/2addr v2, v10

    :cond_4
    return-wide v2
.end method

.method public hasValidMedia()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaControllerCompat;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public next()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToNext()V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    return-void
.end method

.method public play(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    :goto_0
    return-void

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->fastForward()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->rewind()V

    goto :goto_0
.end method

.method public previous()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaControllerGlue;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->skipToPrevious()V

    return-void
.end method
