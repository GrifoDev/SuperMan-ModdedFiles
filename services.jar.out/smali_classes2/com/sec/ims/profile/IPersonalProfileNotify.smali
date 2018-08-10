.class public interface abstract Lcom/sec/ims/profile/IPersonalProfileNotify;
.super Ljava/lang/Object;
.source "IPersonalProfileNotify.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/profile/IPersonalProfileNotify$Stub;
    }
.end annotation


# virtual methods
.method public abstract onNotify(Ljava/lang/String;ILjava/lang/String;Lcom/sec/ims/profile/ProfileInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
