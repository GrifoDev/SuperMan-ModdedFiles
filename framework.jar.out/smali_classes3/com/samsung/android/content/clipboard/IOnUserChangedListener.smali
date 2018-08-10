.class public interface abstract Lcom/samsung/android/content/clipboard/IOnUserChangedListener;
.super Ljava/lang/Object;
.source "IOnUserChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/content/clipboard/IOnUserChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onUserChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
