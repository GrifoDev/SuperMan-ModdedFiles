.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;


# virtual methods
.method public onMetadataUpdate(ILjava/lang/Object;)V
    .locals 3

    const v0, 0x10000001

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/media/Rating;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19$1;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;

    invoke-static {p2}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi19;->postToHandler(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
