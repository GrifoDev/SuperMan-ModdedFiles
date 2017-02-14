.class public interface abstract Lcom/samsung/android/fingerprint/IFingerprintClient;
.super Ljava/lang/Object;
.source "IFingerprintClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
