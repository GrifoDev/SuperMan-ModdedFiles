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
    .param p1, "this$0"    # Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    .prologue
    .line 84
    iput-object p1, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const-string/jumbo v0, "HS20CAKeyStore.bks"

    iput-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    .line 84
    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 91
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

    .line 90
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 11
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v4, 0x0

    .line 98
    .local v4, "fis":Ljava/io/FileInputStream;
    const-string/jumbo v8, "HotspotDMCertificateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[checkServerTrusted] X509Certificate amount:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 99
    const-string/jumbo v10, ", cryptography: "

    .line 98
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    :try_start_0
    array-length v8, p1

    if-ge v6, v8, :cond_0

    .line 103
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

    .line 104
    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "===================="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    aget-object v8, p1, v6

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/data/misc/wifi/hs20/"

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->HS20_CA_KEYSTORE:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .local v7, "trustAnchors":Ljava/io/File;
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-set0(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;Ljava/security/KeyStore;)Ljava/security/KeyStore;

    .line 110
    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "fetchTrustManagerFactory:loading trust managers"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    .end local v4    # "fis":Ljava/io/FileInputStream;
    invoke-static {v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get2(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get1(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 113
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 114
    new-instance v8, Lcom/android/org/conscrypt/TrustManagerImpl;

    iget-object v9, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v9}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get2(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Ljava/security/KeyStore;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    iput-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    .line 115
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    const/4 v9, 0x0

    aget-object v9, p1, v9

    invoke-virtual {v9}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p1, v9}, Lcom/android/org/conscrypt/TrustManagerImpl;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;

    .line 117
    iget-object v8, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->this$0:Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;

    invoke-static {v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;->-get0(Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager;)Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;

    move-result-object v8

    .line 116
    invoke-direct {v0, p1, v8}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;-><init>([Ljava/security/cert/X509Certificate;Landroid/net/wifi/hs20/cert/HotspotDMValidationParameters;)V

    .line 118
    .local v0, "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    invoke-virtual {v0}, Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;->validate()Z

    move-result v8

    if-nez v8, :cond_2

    .line 119
    const-string/jumbo v8, "HotspotDMCertificateManager"

    const-string/jumbo v9, "hs20certificate validation also failed"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v8, Ljava/security/cert/CertificateException;

    const-string/jumbo v9, "Passpoint Certificate Validations are failed"

    invoke-direct {v8, v9}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    .end local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/security/cert/CertificateException;
    move-object v4, v5

    .line 124
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "trustAnchors":Ljava/io/File;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    :catchall_0
    move-exception v8

    .line 134
    :goto_2
    if-eqz v4, :cond_1

    .line 135
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 132
    :cond_1
    :goto_3
    throw v8

    .line 134
    .restart local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "trustAnchors":Ljava/io/File;
    :cond_2
    if-eqz v5, :cond_3

    .line 135
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 96
    :cond_3
    :goto_4
    return-void

    .line 137
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 129
    .end local v0    # "certValidation":Landroid/net/wifi/hs20/cert/HotspotDMCertificateValidation;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "trustAnchors":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    .line 130
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v1

    .line 127
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "trustAnchors":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 123
    .end local v7    # "trustAnchors":Ljava/io/File;
    .local v4, "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/security/cert/CertificateException;
    goto :goto_1

    .line 126
    .end local v3    # "e":Ljava/security/cert/CertificateException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "trustAnchors":Ljava/io/File;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 129
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 2

    .prologue
    .line 145
    const-string/jumbo v0, "HotspotDMCertificateManager"

    const-string/jumbo v1, "[getAcceptedIssuers] "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Landroid/net/wifi/hs20/cert/HotspotDMCertificateManager$CertTrustManager;->tm:Lcom/android/org/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/TrustManagerImpl;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
