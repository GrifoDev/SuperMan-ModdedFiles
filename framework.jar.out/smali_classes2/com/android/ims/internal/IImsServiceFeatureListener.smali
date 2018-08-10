.class public interface abstract Lcom/android/ims/internal/IImsServiceFeatureListener;
.super Ljava/lang/Object;
.source "IImsServiceFeatureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceFeatureListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract imsFeatureCreated(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsFeatureRemoved(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract imsStatusChanged(III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
