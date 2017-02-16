.class abstract Lsun/security/ssl/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/TrustManagerFactoryImpl$PKIXFactory;,
        Lsun/security/ssl/TrustManagerFactoryImpl$SimpleFactory;
    }
.end annotation


# static fields
.field private static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private isInitialized:Z

.field private trustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 44
    return-void
.end method

.method static getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 15
    .param p0, "dbgname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v11, 0x0

    .line 133
    .local v11, "storeFileName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 134
    .local v10, "storeFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 137
    .local v3, "fis":Ljava/io/FileInputStream;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v8, "props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    .line 139
    .local v9, "sep":Ljava/lang/String;
    const/4 v6, 0x0

    .line 141
    .local v6, "ks":Ljava/security/KeyStore;
    new-instance v12, Lsun/security/ssl/TrustManagerFactoryImpl$2;

    invoke-direct {v12, v8}, Lsun/security/ssl/TrustManagerFactoryImpl$2;-><init>(Ljava/util/HashMap;)V

    invoke-static {v12}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    .line 167
    const-string/jumbo v12, "trustStore"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "storeFileName":Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 168
    .local v11, "storeFileName":Ljava/lang/String;
    const-string/jumbo v12, "NONE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 169
    if-eqz v11, :cond_5

    .line 170
    new-instance v10, Ljava/io/File;

    .end local v10    # "storeFile":Ljava/io/File;
    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 171
    .local v10, "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 185
    .local v3, "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    if-eqz v3, :cond_6

    .line 186
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    .line 192
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "storeFile":Ljava/io/File;
    :cond_1
    :goto_1
    const-string/jumbo v12, "trustStoreType"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 193
    .local v2, "defaultTrustStoreType":Ljava/lang/String;
    const-string/jumbo v12, "trustStoreProvider"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 194
    .local v1, "defaultTrustStoreProvider":Ljava/lang/String;
    sget-object v12, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_2

    invoke-static {p0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 195
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trustStore is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 196
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trustStore type is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "trustStore provider is : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 205
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_8

    .line 206
    sget-object v12, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v12, :cond_3

    invoke-static {p0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 207
    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v13, "init truststore"

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_7

    .line 210
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 215
    .local v6, "ks":Ljava/security/KeyStore;
    :goto_2
    const/4 v7, 0x0

    .line 216
    .local v7, "passwd":[C
    const-string/jumbo v12, "trustStorePasswd"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    .local v0, "defaultTrustStorePassword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    .line 221
    .end local v7    # "passwd":[C
    :cond_4
    invoke-virtual {v6, v3, v7}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 224
    if-eqz v7, :cond_8

    .line 225
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v12, v7

    if-ge v4, v12, :cond_8

    .line 226
    const/4 v12, 0x0

    aput-char v12, v7, v4

    .line 225
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 173
    .end local v0    # "defaultTrustStorePassword":Ljava/lang/String;
    .end local v1    # "defaultTrustStoreProvider":Ljava/lang/String;
    .end local v2    # "defaultTrustStoreType":Ljava/lang/String;
    .end local v4    # "i":I
    .local v3, "fis":Ljava/io/FileInputStream;
    .local v6, "ks":Ljava/security/KeyStore;
    .local v10, "storeFile":Ljava/io/File;
    :cond_5
    const-string/jumbo v12, "javaHome"

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 174
    .local v5, "javaHome":Ljava/lang/String;
    new-instance v10, Ljava/io/File;

    .end local v10    # "storeFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "lib"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 175
    const-string/jumbo v13, "security"

    .line 174
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 176
    const-string/jumbo v13, "jssecacerts"

    .line 174
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .local v10, "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    .local v3, "fis":Ljava/io/FileInputStream;
    if-nez v3, :cond_0

    .line 178
    new-instance v10, Ljava/io/File;

    .end local v10    # "storeFile":Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "lib"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 179
    const-string/jumbo v13, "security"

    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 180
    const-string/jumbo v13, "cacerts"

    .line 178
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 181
    .restart local v10    # "storeFile":Ljava/io/File;
    invoke-static {v10}, Lsun/security/ssl/TrustManagerFactoryImpl;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v3

    goto/16 :goto_0

    .line 188
    .end local v5    # "javaHome":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "No File Available, using empty keystore."

    goto/16 :goto_1

    .line 212
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "storeFile":Ljava/io/File;
    .restart local v1    # "defaultTrustStoreProvider":Ljava/lang/String;
    .restart local v2    # "defaultTrustStoreType":Ljava/lang/String;
    :cond_7
    invoke-static {v2, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .local v6, "ks":Ljava/security/KeyStore;
    goto/16 :goto_2

    .line 231
    .end local v6    # "ks":Ljava/security/KeyStore;
    :cond_8
    if-eqz v3, :cond_9

    .line 232
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 235
    :cond_9
    return-object v6
.end method

.method private static getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lsun/security/ssl/TrustManagerFactoryImpl$1;

    invoke-direct {v0, p0}, Lsun/security/ssl/TrustManagerFactoryImpl$1;-><init>(Ljava/io/File;)V

    .line 110
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileInputStream;

    return-object v0
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .prologue
    .line 98
    iget-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 100
    const-string/jumbo v1, "TrustManagerFactoryImpl is not initialized"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 7
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 51
    :try_start_0
    const-string/jumbo v4, "trustmanager"

    invoke-static {v4}, Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lsun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    iput-object v4, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 80
    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 48
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_1

    const-string/jumbo v4, "trustmanager"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 73
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SunX509: skip default keystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    :cond_1
    new-instance v4, Ljava/security/KeyStoreException;

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "problem accessing trust store"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 75
    invoke-direct {v4, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 65
    .local v2, "re":Ljava/lang/RuntimeException;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_2

    const-string/jumbo v4, "trustmanager"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SunX509: skip default keystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    :cond_2
    throw v2

    .line 58
    .end local v2    # "re":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 59
    .local v1, "err":Ljava/lang/Error;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_3

    const-string/jumbo v4, "trustmanager"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SunX509: skip default keystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    :cond_3
    throw v1

    .line 52
    .end local v1    # "err":Ljava/lang/Error;
    :catch_3
    move-exception v3

    .line 54
    .local v3, "se":Ljava/lang/SecurityException;
    sget-object v4, Lsun/security/ssl/TrustManagerFactoryImpl;->debug:Lsun/security/ssl/Debug;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "trustmanager"

    invoke-static {v4}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SunX509: skip default keystore: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 1
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Lsun/security/ssl/TrustManagerFactoryImpl;->getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->trustManager:Ljavax/net/ssl/X509TrustManager;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl;->isInitialized:Z

    .line 89
    return-void
.end method

.method abstract getInstance(Ljava/security/KeyStore;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method abstract getInstance(Ljavax/net/ssl/ManagerFactoryParameters;)Ljavax/net/ssl/X509TrustManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method
