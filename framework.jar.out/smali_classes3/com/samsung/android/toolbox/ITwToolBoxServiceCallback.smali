.class public interface abstract Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
.super Ljava/lang/Object;
.source "ITwToolBoxServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract isContain(II)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract receiveMessage(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
