.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;

    invoke-direct {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;-><init>()V

    sput-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    goto :goto_0
.end method
