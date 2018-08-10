.class public interface abstract Landroid/service/autofill/IFillCallback;
.super Ljava/lang/Object;
.source "IFillCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/IFillCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCancellable(Landroid/os/ICancellationSignal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onFailure(Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(Landroid/service/autofill/FillResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
