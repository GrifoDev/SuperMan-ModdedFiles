.class public final Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi$SHA512;
.super Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.source "AndroidKeyStoreECDSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreECDSASignatureSpi;-><init>(I)V

    .line 136
    return-void
.end method
