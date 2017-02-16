.class Ljava/util/jar/JarFile$JarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "JarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/JarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JarFileEntry"
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/jar/JarFile;


# direct methods
.method constructor <init>(Ljava/util/jar/JarFile;Ljava/util/zip/ZipEntry;)V
    .locals 0
    .param p1, "this$0"    # Ljava/util/jar/JarFile;
    .param p2, "ze"    # Ljava/util/zip/ZipEntry;

    .prologue
    .line 258
    iput-object p1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    .line 259
    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/zip/ZipEntry;)V

    .line 258
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->getManifest()Ljava/util/jar/Manifest;

    move-result-object v0

    .line 263
    .local v0, "man":Ljava/util/jar/Manifest;
    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p0}, Ljava/util/jar/JarFile$JarFileEntry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/jar/Manifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v1

    return-object v1

    .line 266
    :cond_0
    return-object v2
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 271
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 276
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    .line 278
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    if-nez v2, :cond_1

    :goto_0
    return-object v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 278
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->certs:[Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 282
    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-wrap0(Ljava/util/jar/JarFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_0

    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 287
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-static {v2}, Ljava/util/jar/JarFile;->-get0(Ljava/util/jar/JarFile;)Ljava/util/jar/JarVerifier;

    move-result-object v2

    iget-object v3, p0, Ljava/util/jar/JarFile$JarFileEntry;->this$0:Ljava/util/jar/JarFile;

    invoke-virtual {v2, v3, p0}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v2

    iput-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    .line 289
    :cond_0
    iget-object v2, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v2, :cond_1

    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 289
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v1, p0, Ljava/util/jar/JarFile$JarFileEntry;->signers:[Ljava/security/CodeSigner;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    goto :goto_0
.end method
