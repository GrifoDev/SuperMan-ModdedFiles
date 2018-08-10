.class public interface abstract Lcom/samsung/android/gamesdk/IGameSDKListener;
.super Ljava/lang/Object;
.source "IGameSDKListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/IGameSDKListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onHighTempWarning(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onReleasedByTimeout()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
