.class public interface abstract Lcom/sec/ims/openapi/ISipDialogListener;
.super Ljava/lang/Object;
.source "ISipDialogListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/openapi/ISipDialogListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSipReceived(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
