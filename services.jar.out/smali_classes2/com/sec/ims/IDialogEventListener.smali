.class public interface abstract Lcom/sec/ims/IDialogEventListener;
.super Ljava/lang/Object;
.source "IDialogEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/IDialogEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onDialogEvent(Lcom/sec/ims/DialogEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
