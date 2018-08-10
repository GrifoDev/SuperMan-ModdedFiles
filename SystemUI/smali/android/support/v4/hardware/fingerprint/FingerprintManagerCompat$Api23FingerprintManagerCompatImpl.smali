.class Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"

# interfaces
.implements Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23FingerprintManagerCompatImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;

    invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    :cond_3
    return-object v1
.end method
