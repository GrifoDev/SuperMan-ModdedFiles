.class public interface abstract Landroid/content/pm/IPersonaPolicyHandler;
.super Ljava/lang/Object;
.source "IPersonaPolicyHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaPolicyHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract allowChangePolicy(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
