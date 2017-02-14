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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    iput-object p1, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    iput-boolean p2, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    return-void
.end method

.method static verifyPolicySigned([Ljava/security/cert/Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method getPermissions()Ljavax/crypto/CryptoPermissions;
    .locals 1

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

    iget-boolean v8, p0, Ljavax/crypto/JarVerifier;->savePerms:Z

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v8, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "jar"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v7, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    :goto_0
    const/4 v4, 0x0

    :try_start_0
    new-instance v8, Ljavax/crypto/JarVerifier$1;

    invoke-direct {v8, p0, v7}, Ljavax/crypto/JarVerifier$1;-><init>(Ljavax/crypto/JarVerifier;Ljava/net/URL;)V

    invoke-static {v8}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/jar/JarFile;

    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_4

    :try_start_1
    const-string/jumbo v8, "cryptoPerms"

    invoke-virtual {v4, v8}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    if-nez v2, :cond_3

    new-instance v8, Ljava/util/jar/JarException;

    const-string/jumbo v9, "Can not find cryptoPerms"

    invoke-direct {v8, v9}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_1
    throw v8

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

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_2
    new-instance v6, Ljava/lang/SecurityException;

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

    invoke-direct {v6, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/SecurityException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :try_start_3
    new-instance v8, Ljavax/crypto/CryptoPermissions;

    invoke-direct {v8}, Ljavax/crypto/CryptoPermissions;-><init>()V

    iput-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    iget-object v8, p0, Ljavax/crypto/JarVerifier;->appPerms:Ljavax/crypto/CryptoPermissions;

    invoke-virtual {v4, v2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/crypto/CryptoPermissions;->load(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    :cond_5
    return-void

    :catch_1
    move-exception v1

    :try_start_4
    new-instance v3, Ljava/util/jar/JarException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Cannot load/parse"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Ljavax/crypto/JarVerifier;->jarURL:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/jar/JarException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/jar/JarException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
