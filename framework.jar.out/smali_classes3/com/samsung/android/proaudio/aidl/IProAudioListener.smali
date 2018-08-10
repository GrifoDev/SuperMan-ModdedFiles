.class public interface abstract Lcom/samsung/android/proaudio/aidl/IProAudioListener;
.super Ljava/lang/Object;
.source "IProAudioListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/proaudio/aidl/IProAudioListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCheckCallback()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
