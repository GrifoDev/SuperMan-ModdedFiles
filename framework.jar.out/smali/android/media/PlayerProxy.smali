.class public Landroid/media/PlayerProxy;
.super Ljava/lang/Object;
.source "PlayerProxy.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerProxy"


# instance fields
.field private final mConf:Landroid/media/AudioPlaybackConfiguration;


# direct methods
.method constructor <init>(Landroid/media/AudioPlaybackConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioPlaybackConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    return-void
.end method


# virtual methods
.method public applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/media/IPlayer;->applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for applyVolumeShaper operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public pause()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for pause operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setPan(F)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IPlayer;->setPan(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for setPan operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setStartDelayMs(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IPlayer;->setStartDelayMs(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for setStartDelayMs operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVolume(F)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/media/IPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for setVolume operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public start()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for start operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stop()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/media/PlayerProxy;->mConf:Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v1}, Landroid/media/AudioPlaybackConfiguration;->getIPlayer()Landroid/media/IPlayer;

    move-result-object v1

    invoke-interface {v1}, Landroid/media/IPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "No player to proxy for stop operation, player already released?"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
