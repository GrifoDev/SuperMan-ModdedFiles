.class public interface abstract Lcom/sec/ims/IAutoConfigurationListener;
.super Ljava/lang/Object;
.source "IAutoConfigurationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IAutoConfigurationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAutoConfigurationCompleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onVerificationCodeNeeded()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
