.class public final Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$SHA256WithPSSPadding;
.super Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PSSPadding;
.source "AndroidKeyStoreRSASignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA256WithPSSPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreRSASignatureSpi$PSSPadding;-><init>(I)V

    .line 113
    return-void
.end method
