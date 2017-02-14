.class public interface abstract Lcom/samsung/android/vr/IGearVrStateCallbacks;
.super Ljava/lang/Object;
.source "IGearVrStateCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vr/IGearVrStateCallbacks$Stub;
    }
.end annotation


# virtual methods
.method public abstract onGearVrStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
