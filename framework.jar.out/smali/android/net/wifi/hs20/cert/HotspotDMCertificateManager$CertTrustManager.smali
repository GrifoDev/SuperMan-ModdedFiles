.class public Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;
.super Ljava/lang/Object;
.source "HotspotDMCertificateManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CertTrustManager"
.end annotation


# instance fields
.field private HS20_CA_KEYSTORE:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

.field tm:Lcom/android/org/conscrypt/TrustManagerImpl;


# direct methods
.method public constructor <init>(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)V
    .locals 1

    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "HS20CAKeyStore.bks"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "HotspotDMCertificateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[checkClientTrusted] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v8, "HotspotDMCertificateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[checkServerTrusted] X509Certificate amount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", cryptography: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    :try_start_0
    array-length v8, p1

    if-ge v6, v8, :cond_0

    const-string/jumbo v8, "HotspotDMCertificateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "X509Certificate: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "===================="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v8, p1, v6

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->checkValidity()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/misc/wifi/hs20/"

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-set0(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;Ljava/security/KeyStore;)Ljava/security/KeyStore;

    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "fetchTrustManagerFactory:loading trust managers"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get2(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get1(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    new-instance v8, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get2(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    iput-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    new-instance v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;

    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get0(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-result-object v8

    invoke-direct {v0, p1, v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;-><init>([Ljava/security/cert/X509Certificate;Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V

    invoke-virtual {v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->validate()Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "hs20certificate validation also failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/security/cert/CertificateException;

    const-string/jumbo v9, "Passpoint Certificate Validations are failed"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catch_0
    move-exception v3

    move-object v4, v5

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_3
    throw v8

    :cond_2
    if-eqz v5, :cond_3

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    :goto_4
    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v2

    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    :catch_3
    move-exception v1

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v4, v5

    goto :goto_2

    :catch_5
    move-exception v3

    goto :goto_1

    :catch_6
    move-exception v1

    move-object v4, v5

    goto :goto_6

    :catch_7
    move-exception v2

    move-object v4, v5

    goto :goto_5
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    const-string/jumbo v0, "HotspotDMCertificateManager"

    const-string/jumbo v1, "[getAcceptedIssuers] "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
