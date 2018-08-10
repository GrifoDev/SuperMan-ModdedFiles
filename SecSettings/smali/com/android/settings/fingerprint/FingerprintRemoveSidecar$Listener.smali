.class public interface abstract Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;
.super Ljava/lang/Object;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V
.end method

.method public abstract onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V
.end method
