.class public interface abstract Lcom/samsung/accessory/manager/ISAccessoryManager;
.super Ljava/lang/Object;
.source "ISAccessoryManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/manager/ISAccessoryManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getSupportedServices()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
