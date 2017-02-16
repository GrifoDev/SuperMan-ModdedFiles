.class final Ljavax/crypto/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# instance fields
.field private appPerms:Ljavax/crypto/CryptoPermissions;

.field private jarURL:Ljava/net/URL;

.field private savePerms:Z


# direct methods
.method constructor <init>(Ljava/net/URL;Z)V
    .locals 1
    .param p1, "jarURL"    # Ljava/net/URL;
    .param p2, "savePerms"    # Z

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    .line 60
    iput-object p1, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    .line 61
    iput-boolean p2, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    .line 59
    return-void
.end method

.method static verifyPolicySigned([Ljava/security/cert/Certificate;)V
    .locals 0
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method


# virtual methods
.method getPermissions()Ljavax/crypto/CryptoPermissions;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    return-object v0
.end method

.method verify()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/jar/JarException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v8, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    if-nez v8, :cond_0

    .line 75
    return-void

    .line 81
    :cond_0
    iget-object v8, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 82
    iget-object v7, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    .line 84
    .local v7, "url":Ljava/net/URL;
    :goto_0
    const/4 v4, 0x0

    .line 91
    .local v4, "jf":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v8, Ljavax/crypto/JarVerifier$1;

    invoke-direct {v8, p0, v7}, Ljavax/crypto/JarVerifier$1;-><init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V

    .line 90
    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/jar/JarFile;

    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .local v4, "jf":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_4

    .line 109
    :try_start_1
    const-string/jumbo v8, "cryptoPerms"

    invoke-virtual {v4, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 110
    .local v2, "je":Ljava/util/jar/JarEntry;
    if-nez v2, :cond_3

    .line 111
    new-instance v8, Ljava/util/jar/JarException;

    .line 112
    const-string/jumbo v9, "Can not find cryptoPerms"

    .line 111
    invoke-direct {v8, v9}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    .end local v4    # "jf":Ljava/util/jar/JarFile;
    :catchall_0
    move-exception v8

    .line 129
    if-eqz v4, :cond_1

    .line 130
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 125
    :cond_1
    throw v8

    .line 82
    .end local v7    # "url":Ljava/net/URL;
    :cond_2
    new-instance v7, Ljava/net/URL;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "jar:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "!/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v7    # "url":Ljava/net/URL;
    goto :goto_0

    .line 101
    .local v4, "jf":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v5

    .line 102
    .local v5, "pae":Ljava/security/PrivilegedActionException;
    :try_start_2
    new-instance v6, Ljava/lang/SecurityException;

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 102
    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 104
    .local v6, "se":Ljava/lang/SecurityException;
    invoke-virtual {v6, v5}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 105
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .end local v5    # "pae":Ljava/security/PrivilegedActionException;
    .end local v6    # "se":Ljava/lang/SecurityException;
    .restart local v2    # "je":Ljava/util/jar/JarEntry;
    .local v4, "jf":Ljava/util/jar/JarFile;
    :cond_3
    :try_start_3
    new-instance v8, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v8}, Ljavax/crypto/CryptoPermissions;-><init>()V

    iput-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    .line 116
    iget-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    invoke-virtual {v4, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v2    # "je":Ljava/util/jar/JarEntry;
    :cond_4
    if-eqz v4, :cond_5

    .line 130
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 71
    :cond_5
    return-void

    .line 117
    .restart local v2    # "je":Ljava/util/jar/JarEntry;
    :catch_1
    move-exception v1

    .line 119
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_4
    new-instance v3, Ljava/util/jar/JarException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot load/parse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 120
    iget-object v9, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    .line 119
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    .line 121
    .local v3, "jex":Ljava/util/jar/JarException;
    invoke-virtual {v3, v1}, Ljava/util/jar/JarException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 122
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
