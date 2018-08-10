.class Lcom/android/server/enterprise/sso/GenericSSOService$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericSSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/sso/GenericSSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScreenOffReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set4(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    invoke-static {v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set3(Ljava/security/Key;)Ljava/security/Key;

    invoke-static {v12}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set1(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive: Action Screen Off (keys are cleared from memory)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v11, "android.security.STORAGE_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    sget-boolean v11, Lcom/samsung/android/knox/sso/common/GenericSSOConstants;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive: Action Credential Storage Changed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :try_start_0
    const-string/jumbo v11, "AndroidKeyStore"

    invoke-static {v11}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v9

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const-string/jumbo v11, "KnoxSSOKey"

    invoke-virtual {v9, v11}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/data/system/KnoxSSO_SCKF"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Landroid/util/SparseArray;

    move-result-object v11

    if-eqz v11, :cond_3

    const/4 v7, 0x0

    :goto_1
    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {}, Lcom/android/server/enterprise/sso/GenericSSOService;->-get6()Landroid/util/SparseArray;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->delete(I)V

    new-instance v6, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "/data/system/users/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ssotoken.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set3(Ljava/security/Key;)Ljava/security/Key;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set1(Ljava/security/KeyPair;)Ljava/security/KeyPair;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set4(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/android/server/enterprise/sso/GenericSSOService;->-set2(Ljava/security/KeyStore;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive --- Action Credential Storage Changed: NoSuchAlgorithmException"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive --- Action Credential Storage Changed: General Exception"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_2
    move-exception v5

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive --- Action Credential Storage Changed: CertificateException"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_3
    move-exception v1

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive --- Action Credential Storage Changed: IOException"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :catch_4
    move-exception v3

    const-string/jumbo v11, "GenericSSOService"

    const-string/jumbo v12, "In onReceive --- Action Credential Storage Changed: KeyStoreException"

    invoke-static {v11, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
