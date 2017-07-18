.class Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;
.super Ljava/util/jar/JarEntry;
.source "URLJarFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/jar/URLJarFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLJarFileEntry"
.end annotation


# instance fields
.field private je:Ljava/util/jar/JarEntry;

.field final synthetic this$0:Lsun/net/www/protocol/jar/URLJarFile;


# direct methods
.method constructor <init>(Lsun/net/www/protocol/jar/URLJarFile;Ljava/util/jar/JarEntry;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-direct {p0, p2}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/jar/JarEntry;)V

    iput-object p2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/jar/Attributes;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-wrap0(Lsun/net/www/protocol/jar/URLJarFile;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->this$0:Lsun/net/www/protocol/jar/URLJarFile;

    invoke-static {v2}, Lsun/net/www/protocol/jar/URLJarFile;->-get0(Lsun/net/www/protocol/jar/URLJarFile;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/Attributes;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    return-object v2

    :cond_0
    return-object v3
.end method

.method public getCertificates()[Ljava/security/cert/Certificate;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/Certificate;

    goto :goto_0
.end method

.method public getCodeSigners()[Ljava/security/CodeSigner;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lsun/net/www/protocol/jar/URLJarFile$URLJarFileEntry;->je:Ljava/util/jar/JarEntry;

    invoke-virtual {v2}, Ljava/util/jar/JarEntry;->getCodeSigners()[Ljava/security/CodeSigner;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/CodeSigner;

    goto :goto_0
.end method
