.class public interface abstract Lcom/samsung/android/knox/IContainerService;
.super Ljava/lang/Object;
.source "IContainerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/IContainerService$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMessage(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
