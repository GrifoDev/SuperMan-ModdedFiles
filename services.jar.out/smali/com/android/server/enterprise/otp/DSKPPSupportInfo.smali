.class public Lcom/android/server/enterprise/otp/DSKPPSupportInfo;
.super Ljava/lang/Object;
.source "DSKPPSupportInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDeviceSupport()Ljava/lang/Boolean;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v2, "sys.enterprise.otp.version"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2.6.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getCertificate()[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method public static checkSupport1(Ljava/lang/String;Ljava/lang/Boolean;Lcom/samsung/android/knox/otp/DSKPPKeyProvTrigger;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportedDSKPPVariant(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getSupportedDSKPPVersion(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedEncryptionAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedKeyPackages(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedKeyProtectionMethods(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSupportedMacAlgorithms(Ljava/lang/String;Ljava/lang/Boolean;)[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
