.class public Landroid/security/keystore/KnoxAndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "KnoxAndroidKeyStoreProvider.java"


# static fields
.field private static final KNOX_PACKAGE_NAME:Ljava/lang/String; = "knox.security.keystore"

.field public static final PROVIDER_NAME:Ljava/lang/String; = "KnoxAndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string/jumbo v0, "KnoxAndroidKeyStore"

    const-string/jumbo v1, "Knox Android KeyStore security provider"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v2, v3, v1}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    const-string/jumbo v0, "KeyStore.KnoxAndroidKeyStore"

    const-string/jumbo v1, "knox.security.keystore.KnoxAndroidKeyStoreSpi"

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/KnoxAndroidKeyStoreProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
