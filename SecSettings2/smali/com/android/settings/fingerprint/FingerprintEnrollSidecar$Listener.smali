.class public interface abstract Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
.super Ljava/lang/Object;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onEnrollmentError(ILjava/lang/CharSequence;)V
.end method

.method public abstract onEnrollmentHelp(Ljava/lang/CharSequence;)V
.end method

.method public abstract onEnrollmentProgressChange(II)V
.end method
