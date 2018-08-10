.class public interface abstract Lcom/samsung/android/datasaving/IOnSavingStateChangeListener;
.super Ljava/lang/Object;
.source "IOnSavingStateChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/datasaving/IOnSavingStateChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
