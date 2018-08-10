.class Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StubApi21"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 9

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v7, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)Ljava/lang/ref/WeakReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    if-eqz v2, :cond_0

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getExtraBinder()Landroid/support/v4/media/session/IMediaSession;

    move-result-object v1

    const-string/jumbo v7, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez v1, :cond_1

    :goto_0
    invoke-static {v5, v7, v6}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v6, 0x0

    invoke-virtual {p3, v6, v5}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-class v6, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    const-string/jumbo v6, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v7, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "MediaSessionCompat"

    const-string/jumbo v7, "Could not unparcel the extra data."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    const-string/jumbo v6, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-class v6, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    const-string/jumbo v6, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaDescriptionCompat;

    const-string/jumbo v8, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-class v6, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    const-string/jumbo v6, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v7, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->-get0(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->-get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_6

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->-get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_6

    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->-get4(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    :goto_2
    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v4}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getDescription()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V

    goto/16 :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    :cond_7
    iget-object v6, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v6, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v7, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v7, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v2, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_URI"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v6, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetCaptioningEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v7, "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleModeEnabled(Z)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v7, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const-string/jumbo v7, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleMode(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v7, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method public onFastForward()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    return-void
.end method

.method public onPlay()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onRewind()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    return-void
.end method

.method public onSeekTo(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    return-void
.end method

.method public onSetRating(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    return-void
.end method

.method public onSkipToNext()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    return-void
.end method

.method public onSkipToPrevious()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;->this$1:Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    return-void
.end method
