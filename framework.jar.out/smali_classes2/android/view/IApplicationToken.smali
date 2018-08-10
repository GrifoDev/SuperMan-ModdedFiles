.class public interface abstract Landroid/view/IApplicationToken;
.super Ljava/lang/Object;
.source "IApplicationToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IApplicationToken$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCustomAspectRatioFrame(Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract needForceImmersiveMode()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
