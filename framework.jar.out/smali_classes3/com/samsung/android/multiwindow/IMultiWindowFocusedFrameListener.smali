.class public interface abstract Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;
.super Ljava/lang/Object;
.source "IMultiWindowFocusedFrameListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onMultiWindowFocusedFrameRectChanged(IIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onMultiWindowFocusedZoneChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
