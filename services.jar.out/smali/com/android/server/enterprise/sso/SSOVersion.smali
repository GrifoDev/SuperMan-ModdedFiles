.class public Lcom/android/server/enterprise/sso/SSOVersion;
.super Ljava/lang/Object;
.source "SSOVersion.java"


# static fields
.field private static final KNOX_ADS_PW_CHANGE_VERSION:Ljava/lang/String; = "2.5.0"

.field private static final KNOX_ADS_VERSION:Ljava/lang/String; = "2.4.0"

.field private static final KNOX_GENERIC_SSO_VERSION:Ljava/lang/String; = "2.1.1"

.field private static final KNOX_SSO_KERBEROS_CERT_VERSION:Ljava/lang/String; = "2.4.1"

.field private static final KNOX_SSO_NUMBER:Ljava/lang/String; = "3"

.field private static final KNOX_SSO_VERSION:Ljava/lang/String; = "1.0.0"

.field private static final KNOX_SSO_VERSION_NOT_AVAILABLE:Ljava/lang/String; = "N/A"

.field private static final PROP_KNOX_SSO_VERSION:Ljava/lang/String; = "net.knoxsso.version"

.field private static final TAG:Ljava/lang/String; = "SSOVersion"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "3"

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string/jumbo v4, "N/A"

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    :try_start_0
    const-string/jumbo v5, "persona"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_2_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v6

    if-ge v5, v6, :cond_1

    const-string/jumbo v4, "1.0.0"

    :goto_0
    return-object v4

    :cond_1
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v6

    if-ge v5, v6, :cond_2

    const-string/jumbo v4, "2.1.1"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_4_1:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v6

    if-ge v5, v6, :cond_3

    const-string/jumbo v4, "2.4.0"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxContainerVersion()Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-virtual {v6}, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->ordinal()I

    move-result v6

    if-ge v5, v6, :cond_4

    const-string/jumbo v4, "2.4.1"

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "2.5.0"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v5, "SSOVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSOVersion Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    const-string/jumbo v5, "SSOVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSOVersion Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string/jumbo v5, "SSOVersion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SSOVersion Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static writeVersionInProperties(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "SSOVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeVersionInProperties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/server/enterprise/sso/SSOVersion;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "net.knoxsso.version"

    invoke-static {p0}, Lcom/android/server/enterprise/sso/SSOVersion;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
