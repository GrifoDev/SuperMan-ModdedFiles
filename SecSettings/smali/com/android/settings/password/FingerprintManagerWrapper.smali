.class public Lcom/android/settings/password/FingerprintManagerWrapper;
.super Ljava/lang/Object;
.source "FingerprintManagerWrapper.java"

# interfaces
.implements Lcom/android/settings/password/IFingerprintManager;


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/settings/password/FingerprintManagerWrapper;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method
