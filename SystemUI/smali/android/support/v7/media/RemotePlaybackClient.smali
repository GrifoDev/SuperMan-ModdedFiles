.class public Landroid/support/v7/media/RemotePlaybackClient;
.super Ljava/lang/Object;
.source "RemotePlaybackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/RemotePlaybackClient$1;,
        Landroid/support/v7/media/RemotePlaybackClient$2;,
        Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$ActionReceiver;,
        Landroid/support/v7/media/RemotePlaybackClient$ItemActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;,
        Landroid/support/v7/media/RemotePlaybackClient$SessionActionCallback;,
        Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mOnMessageReceivedListener:Landroid/support/v7/media/RemotePlaybackClient$OnMessageReceivedListener;

.field mSessionId:Ljava/lang/String;

.field mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "RemotePlaybackClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    return-void
.end method

.method static bundleToString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "null"

    return-object v0
.end method

.method static inferMissingResult(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method adoptSession(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v7/media/RemotePlaybackClient;->setSessionId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method handleError(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    if-eqz p4, :cond_1

    const-string/jumbo v1, "android.media.intent.extra.ERROR_CODE"

    const/4 v2, 0x0

    invoke-virtual {p4, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    sget-boolean v1, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "RemotePlaybackClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Received error from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, p3, v0, p4}, Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method handleInvalidResult(Landroid/content/Intent;Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received invalid result data from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Landroid/support/v7/media/RemotePlaybackClient;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p3}, Landroid/support/v7/media/RemotePlaybackClient$ActionCallback;->onError(Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/support/v4/utils/ObjectUtils;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/support/v7/media/RemotePlaybackClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RemotePlaybackClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Session id is now: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/support/v7/media/RemotePlaybackClient;->mSessionId:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/media/RemotePlaybackClient;->mStatusCallback:Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;

    invoke-virtual {v0, p1}, Landroid/support/v7/media/RemotePlaybackClient$StatusCallback;->onSessionChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
