.class public interface abstract Landroid/app/IEphemeralResolver;
.super Ljava/lang/Object;
.source "IEphemeralResolver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IEphemeralResolver$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEphemeralIntentFilterList(Landroid/os/IRemoteCallback;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
