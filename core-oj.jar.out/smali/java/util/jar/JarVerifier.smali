.class Ljava/util/jar/JarVerifier;
.super Ljava/lang/Object;
.source "JarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/jar/JarVerifier$1;,
        Ljava/util/jar/JarVerifier$VerifierCodeSource;,
        Ljava/util/jar/JarVerifier$VerifierStream;
    }
.end annotation


# static fields
.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private anyToVerify:Z

.field private baos:Ljava/io/ByteArrayOutputStream;

.field private csdomain:Ljava/lang/Object;

.field eagerValidation:Z

.field private emptyEnumeration:Ljava/util/Enumeration;

.field private emptySigner:[Ljava/security/CodeSigner;

.field private jarCodeSigners:Ljava/util/List;

.field private lastURL:Ljava/net/URL;

.field private lastURLMap:Ljava/util/Map;

.field private volatile manDig:Lsun/security/util/ManifestDigester;

.field private manifestDigests:Ljava/util/List;

.field manifestRawBytes:[B

.field private parsingBlockOrSF:Z

.field private parsingMeta:Z

.field private pendingBlocks:Ljava/util/ArrayList;

.field private sigFileData:Ljava/util/Hashtable;

.field private sigFileSigners:Ljava/util/Hashtable;

.field private signerCache:Ljava/util/ArrayList;

.field private signerMap:Ljava/util/Map;

.field private signerToCodeSource:Ljava/util/Map;

.field private urlToCodeSourceMap:Ljava/util/Map;

.field private verifiedSigners:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "jar"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    new-array v0, v1, [Ljava/security/CodeSigner;

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    new-instance v0, Ljava/util/jar/JarVerifier$1;

    invoke-direct {v0, p0}, Ljava/util/jar/JarVerifier$1;-><init>(Ljava/util/jar/JarVerifier;)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;

    iput-object p1, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    return-void
.end method

.method private findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;
    .locals 10

    const/4 v9, 0x0

    instance-of v6, p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    if-eqz v6, :cond_0

    move-object v5, p1

    check-cast v5, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    iget-object v6, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->isSameDomain(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    check-cast p1, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {p1}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-virtual {p1}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;

    move-result-object v6

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v8}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;

    move-result-object v4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_1

    aget-object v6, v4, v0

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    invoke-static {v6}, Ljava/util/jar/JarVerifier$VerifierCodeSource;->-wrap0(Ljava/util/jar/JarVerifier$VerifierCodeSource;)[Ljava/security/CodeSigner;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->emptySigner:[Ljava/security/CodeSigner;

    :cond_2
    return-object v2

    :cond_3
    return-object v9
.end method

.method private declared-synchronized getJarCodeSigners()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, p0, Ljava/util/jar/JarVerifier;->jarCodeSigners:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static getUnsignedCS(Ljava/net/URL;)Ljava/security/CodeSource;
    .locals 3

    const/4 v1, 0x0

    new-instance v2, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    move-object v0, v1

    check-cast v0, [Ljava/security/cert/Certificate;

    invoke-direct {v2, v1, p0, v0}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    return-object v2
.end method

.method static isSigningRelated(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "META-INF/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    const-string/jumbo v0, ".DSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ".RSA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ".SF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ".EC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "SIG-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "MANIFEST.MF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method

.method private static mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;
    .locals 3

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/security/CodeSigner;->getSignerCertPath()Ljava/security/cert/CertPath;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/cert/Certificate;

    return-object v2

    :cond_1
    return-object v2
.end method

.method private declared-synchronized mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;

    if-ne p1, v2, :cond_1

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/CodeSource;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/jar/JarVerifier$VerifierCodeSource;

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->csdomain:Ljava/lang/Object;

    invoke-direct {v0, v2, p1, p2}, Ljava/util/jar/JarVerifier$VerifierCodeSource;-><init>(Ljava/lang/Object;Ljava/net/URL;[Ljava/security/CodeSigner;)V

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->signerToCodeSource:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->urlToCodeSourceMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object v1, p0, Ljava/util/jar/JarVerifier;->lastURLMap:Ljava/util/Map;

    iput-object p1, p0, Ljava/util/jar/JarVerifier;->lastURL:Ljava/net/URL;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/security/CodeSource;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/security/CodeSource;

    return-object v2
.end method

.method private processEntry(Lsun/security/util/ManifestEntryVerifier;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-nez v10, :cond_1

    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    if-nez v10, :cond_0

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {p1, v10, v11}, Lsun/security/util/ManifestEntryVerifier;->verify(Ljava/util/Hashtable;Ljava/util/Hashtable;)[Ljava/security/CodeSigner;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    iget-object v10, v4, Ljava/util/jar/JarEntry;->signers:[Ljava/security/CodeSigner;

    invoke-static {v10}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v10

    iput-object v10, v4, Ljava/util/jar/JarEntry;->certs:[Ljava/security/cert/Certificate;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_2

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "processEntry: processing block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lsun/security/util/ManifestEntryVerifier;->getEntry()Ljava/util/jar/JarEntry;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ".SF"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x3

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lsun/security/util/SignatureFileVerifier;

    invoke-virtual {v8, v5}, Lsun/security/util/SignatureFileVerifier;->needSignatureFile(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_4

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "processEntry: processing pending block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    return-void

    :cond_6
    :try_start_1
    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    if-nez v10, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    :cond_7
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_9

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    monitor-enter v11
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    if-nez v10, :cond_8

    new-instance v10, Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B

    invoke-direct {v10, v12}, Lsun/security/util/ManifestDigester;-><init>([B)V

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    const/4 v10, 0x0

    iput-object v10, p0, Ljava/util/jar/JarVerifier;->manifestRawBytes:[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    :try_start_3
    monitor-exit v11

    :cond_9
    new-instance v8, Lsun/security/util/SignatureFileVerifier;

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v12, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    invoke-direct {v8, v10, v11, v9, v12}, Lsun/security/util/SignatureFileVerifier;-><init>(Ljava/util/ArrayList;Lsun/security/util/ManifestDigester;Ljava/lang/String;[B)V

    invoke-virtual {v8}, Lsun/security/util/SignatureFileVerifier;->needSignatureFileBytes()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    invoke-virtual {v10, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_b

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_a

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "adding pending block"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    :catch_1
    move-exception v7

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    :try_start_4
    invoke-virtual {v8, v0}, Lsun/security/util/SignatureFileVerifier;->setSignatureFile([B)V

    :cond_c
    iget-object v10, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    iget-object v11, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-virtual {v8, v10, v11}, Lsun/security/util/SignatureFileVerifier;->process(Ljava/util/Hashtable;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v6

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    sget-object v10, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processEntry caught: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private declared-synchronized signerMap()Ljava/util/Map;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->signerMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    new-instance v2, Ljava/util/jar/JarVerifier$4;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/jar/JarVerifier$4;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/Map;)V

    return-object v2
.end method


# virtual methods
.method public beginEntry(Ljava/util/jar/JarEntry;Lsun/security/util/ManifestEntryVerifier;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    sget-object v2, Ljava/util/jar/JarVerifier;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "beginEntry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_5

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "/META-INF/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    return-void

    :cond_3
    invoke-static {v1}, Lsun/security/util/SignatureFileVerifier;->isBlockOrSF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-boolean v6, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    :cond_4
    return-void

    :cond_5
    iget-boolean v2, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Ljava/util/jar/JarVerifier;->doneWithMeta()V

    :cond_6
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    return-void

    :cond_7
    const-string/jumbo v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {p2, v0, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    return-void

    :cond_a
    invoke-virtual {p2, v5, p1}, Lsun/security/util/ManifestEntryVerifier;->setEntry(Ljava/lang/String;Ljava/util/jar/JarEntry;)V

    return-void
.end method

.method doneWithMeta()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingMeta:Z

    iget-object v1, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    iput-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileData:Ljava/util/Hashtable;

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->pendingBlocks:Ljava/util/ArrayList;

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->signerCache:Ljava/util/ArrayList;

    iput-object v2, p0, Ljava/util/jar/JarVerifier;->manDig:Lsun/security/util/ManifestDigester;

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    const-string/jumbo v1, "META-INF/MANIFEST.MF"

    iget-object v2, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    const-string/jumbo v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public entries2(Ljava/util/jar/JarFile;Ljava/util/Enumeration;)Ljava/util/Enumeration;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/Enumeration;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object v0, p2

    new-instance v2, Ljava/util/jar/JarVerifier$3;

    invoke-direct {v2, p0, p2, p1, v1}, Ljava/util/jar/JarVerifier$3;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Enumeration;Ljava/util/jar/JarFile;Ljava/util/Map;)V

    return-object v2
.end method

.method public declared-synchronized entryNames(Ljava/util/jar/JarFile;[Ljava/security/CodeSource;)Ljava/util/Enumeration;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/security/CodeSource;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    new-instance v6, Ljava/util/ArrayList;

    array-length v8, p2

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    array-length v8, p2

    if-ge v1, v8, :cond_2

    aget-object v8, p2, v1

    invoke-direct {p0, v8}, Ljava/util/jar/JarVerifier;->findMatchingSigners(Ljava/security/CodeSource;)[Ljava/security/CodeSigner;

    move-result-object v4

    if-eqz v4, :cond_0

    array-length v8, v4

    if-lez v8, :cond_1

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move-object v7, v6

    if-eqz v5, :cond_3

    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v0

    :goto_2
    new-instance v8, Ljava/util/jar/JarVerifier$2;

    invoke-direct {v8, p0, v2, v6, v0}, Ljava/util/jar/JarVerifier$2;-><init>(Ljava/util/jar/JarVerifier;Ljava/util/Iterator;Ljava/util/List;Ljava/util/Enumeration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v8

    :cond_3
    :try_start_1
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->emptyEnumeration:Ljava/util/Enumeration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public getCerts(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCerts(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/cert/Certificate;
    .locals 1

    invoke-virtual {p0, p1, p2}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-static {v0}, Ljava/util/jar/JarVerifier;->mapSignersToCertArray([Ljava/security/CodeSigner;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;
    .locals 1

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->verifiedSigners:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    return-object v0
.end method

.method public getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;
    .locals 7

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v5, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Ljava/util/jar/JarVerifier;->sigFileSigners:Ljava/util/Hashtable;

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x400

    new-array v0, v5, [B

    array-length v2, v0

    :goto_0
    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/lang/String;)[Ljava/security/CodeSigner;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/lang/String;)Ljava/security/CodeSource;
    .locals 2

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->signerMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/CodeSigner;

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v1

    return-object v1
.end method

.method public getCodeSource(Ljava/net/URL;Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)Ljava/security/CodeSource;
    .locals 1

    invoke-virtual {p0, p2, p3}, Ljava/util/jar/JarVerifier;->getCodeSigners(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;)[Ljava/security/CodeSigner;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSource(Ljava/net/URL;[Ljava/security/CodeSigner;)Ljava/security/CodeSource;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCodeSources(Ljava/util/jar/JarFile;Ljava/net/URL;)[Ljava/security/CodeSource;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ljava/util/jar/JarVerifier;->unsignedEntryNames(Ljava/util/jar/JarFile;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    invoke-direct {p0}, Ljava/util/jar/JarVerifier;->getJarCodeSigners()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v1, v0}, Ljava/util/jar/JarVerifier;->mapSignersToCodeSources(Ljava/net/URL;Ljava/util/List;Z)[Ljava/security/CodeSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getManifestDigests()Ljava/util/List;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/util/jar/JarVerifier;->manifestDigests:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method nothingToVerify()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->anyToVerify:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEagerValidation(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/util/jar/JarVerifier;->eagerValidation:Z

    return-void
.end method

.method public update(ILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    int-to-byte v0, p1

    invoke-virtual {p2, v0}, Lsun/security/util/ManifestEntryVerifier;->update(B)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_0
.end method

.method public update(I[BIILsun/security/util/ManifestEntryVerifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-boolean v0, p0, Ljava/util/jar/JarVerifier;->parsingBlockOrSF:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/util/jar/JarVerifier;->baos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p2, p3, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p5, p2, p3, p1}, Lsun/security/util/ManifestEntryVerifier;->update([BII)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p5}, Ljava/util/jar/JarVerifier;->processEntry(Lsun/security/util/ManifestEntryVerifier;)V

    goto :goto_0
.end method
