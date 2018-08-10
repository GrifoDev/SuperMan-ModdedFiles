.class final Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActionReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string/jumbo v0, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Discarding spurious status callback with missing or invalid session id: sessionId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "android.support.v7.media.actions.ACTION_ITEM_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v0, "RemotePlaybackClient"

    const-string/jumbo v1, "Discarding spurious status callback with missing item id."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;

    move-result-object v5

    if-nez v5, :cond_3

    const-string/jumbo v0, "RemotePlaybackClient"

    const-string/jumbo v1, "Discarding spurious status callback with missing item status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received item status callback: sessionId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", sessionStatus="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", itemId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", itemStatus="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onItemStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string/jumbo v0, "android.support.v7.media.actions.ACTION_SESSION_STATUS_CHANGED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez v3, :cond_7

    const-string/jumbo v0, "RemotePlaybackClient"

    const-string/jumbo v1, "Discarding spurious media status callback with missing session status."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_8

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received session status callback: sessionId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, ", sessionStatus="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionStatusChanged(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "android.support.v7.media.actions.ACTION_MESSAGE_RECEIVED"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Received message callback: sessionId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v0, v0, Landroid/support/v7/media/RemotePlaybackClient;->mOnMessageReceivedListener:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

    const-string/jumbo v1, "android.media.intent.extra.MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;->onMessageReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
