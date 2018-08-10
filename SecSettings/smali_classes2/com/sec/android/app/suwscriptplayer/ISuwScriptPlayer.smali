.class public interface abstract Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
.super Ljava/lang/Object;
.source "ISuwScriptPlayer.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer$Stub;
    }
.end annotation


# virtual methods
.method public abstract PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract StopScript()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isPlaying()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
