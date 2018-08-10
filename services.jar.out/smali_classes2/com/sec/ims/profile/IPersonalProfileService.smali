.class public interface abstract Lcom/sec/ims/profile/IPersonalProfileService;
.super Ljava/lang/Object;
.source "IPersonalProfileService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/IPersonalProfileService$Stub;
    }
.end annotation


# virtual methods
.method public abstract deRegisterOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deRegisterProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFriendProfile(Ljava/lang/String;Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFriendProfileById(JLcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getOwnProfile(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerOwnNumberListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerProfileUpdateListener(Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setOwnProfile(Lcom/sec/ims/profile/ProfileInfo;Lcom/sec/ims/profile/IPersonalProfileNotify;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
