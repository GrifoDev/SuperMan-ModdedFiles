.class Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;
.super Ljava/lang/Object;
.source "MediaPlayerAdapter.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/media/MediaPlayerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 7

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->getCallback()Landroid/support/v17/leanback/media/PlayerAdapter$Callback;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v2, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    iget-object v2, v2, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->mContext:Landroid/content/Context;

    sget v3, Landroid/support/v17/leanback/R$string;->lb_media_player_error:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Landroid/support/v17/leanback/media/PlayerAdapter$Callback;->onError(Landroid/support/v17/leanback/media/PlayerAdapter;ILjava/lang/String;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/MediaPlayerAdapter$6;->this$0:Landroid/support/v17/leanback/media/MediaPlayerAdapter;

    invoke-virtual {v0, p2, p3}, Landroid/support/v17/leanback/media/MediaPlayerAdapter;->onError(II)Z

    move-result v0

    return v0
.end method
