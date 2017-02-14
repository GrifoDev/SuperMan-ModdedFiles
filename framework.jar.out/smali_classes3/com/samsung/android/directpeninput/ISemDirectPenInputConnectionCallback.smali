.class public interface abstract Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback;
.super Ljava/lang/Object;
.source "ISemDirectPenInputConnectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/directpeninput/ISemDirectPenInputConnectionCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResultReceive(IZLandroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStatusRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWritingResultReceive(ILjava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
