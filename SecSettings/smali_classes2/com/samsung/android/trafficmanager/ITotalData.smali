.class public interface abstract Lcom/samsung/android/trafficmanager/ITotalData;
.super Ljava/lang/Object;
.source "ITotalData.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/trafficmanager/ITotalData$Stub;
    }
.end annotation


# virtual methods
.method public abstract getDefaultSubscriptionId()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTotalUsedBytes()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updatePolicy(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
