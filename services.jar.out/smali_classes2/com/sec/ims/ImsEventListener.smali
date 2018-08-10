.class public interface abstract Lcom/sec/ims/ImsEventListener;
.super Ljava/lang/Object;
.source "ImsEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ImsEventListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
