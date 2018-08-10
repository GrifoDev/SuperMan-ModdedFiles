.class Landroid/support/v7/media/RemotePlaybackClient$1;
.super Landroid/support/v7/media/MediaRouter$ControlRequestCallback;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/RemotePlaybackClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/RemotePlaybackClient;

.field final synthetic val$callback:Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$sessionId:Ljava/lang/String;


# virtual methods
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/support/v7/media/RemotePlaybackClient;->handleError(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResult(Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$sessionId:Ljava/lang/String;

    const-string/jumbo v1, "android.media.intent.extra.SESSION_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "android.media.intent.extra.SESSION_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaSessionStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaSessionStatus;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$itemId:Ljava/lang/String;

    const-string/jumbo v1, "android.media.intent.extra.ITEM_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/media/RemotePlaybackClient;->inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "android.media.intent.extra.ITEM_STATUS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/media/MediaItemStatus;->fromBundle(Landroid/os/Bundle;)Landroid/support/v7/media/MediaItemStatus;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    invoke-virtual {v0, v2}, Landroid/support/v7/media/RemotePlaybackClient;->adoptSession(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Received result from "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ": data="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", sessionId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", sessionStatus="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", itemId="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", itemStatus="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;->onResult(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v7/media/MediaSessionStatus;Ljava/lang/String;Landroid/support/v7/media/MediaItemStatus;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->this$0:Landroid/support/v7/media/RemotePlaybackClient;

    iget-object v1, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Landroid/support/v7/media/RemotePlaybackClient$1;->val$callback:Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;

    invoke-virtual {v0, v1, v6, p1}, Landroid/support/v7/media/RemotePlaybackClient;->handleInvalidResult(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V

    return-void
.end method
