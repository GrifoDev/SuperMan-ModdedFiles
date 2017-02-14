.class public interface abstract Lcom/samsung/android/multiwindow/IMultiWindowCallback;
.super Ljava/lang/Object;
.source "IMultiWindowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAnimationEnd(IILandroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
