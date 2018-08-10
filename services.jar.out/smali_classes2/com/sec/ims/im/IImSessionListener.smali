.class public interface abstract Lcom/sec/ims/im/IImSessionListener;
.super Ljava/lang/Object;
.source "IImSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/im/IImSessionListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onImSessionEstablished(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
