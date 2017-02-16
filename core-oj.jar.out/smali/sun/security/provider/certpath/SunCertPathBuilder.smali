.class public final Lsun/security/provider/certpath/SunCertPathBuilder;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "SunCertPathBuilder.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

.field private cf:Ljava/security/cert/CertificateFactory;

.field private finalPublicKey:Ljava/security/PublicKey;

.field private pathCompleted:Z

.field private policyTreeResult:Ljava/security/cert/PolicyNode;

.field private trustAnchor:Ljava/security/cert/TrustAnchor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 91
    :try_start_0
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v1, Ljava/security/cert/CertPathBuilderException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;"
        }
    .end annotation

    .prologue
    .line 781
    .local p0, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    .local p1, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 783
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cert$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 784
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v3, Lsun/security/provider/certpath/Vertex;

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/Vertex;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 785
    .local v3, "v":Lsun/security/provider/certpath/Vertex;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 788
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "v":Lsun/security/provider/certpath/Vertex;
    :cond_0
    return-object v2
.end method

.method private static anchorIsTarget(Ljava/security/cert/TrustAnchor;Ljava/security/cert/CertSelector;)Z
    .locals 2
    .param p0, "anchor"    # Ljava/security/cert/TrustAnchor;
    .param p1, "sel"    # Ljava/security/cert/CertSelector;

    .prologue
    .line 798
    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 799
    .local v0, "anchorCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_0

    .line 800
    invoke-interface {p1, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v1

    return v1

    .line 802
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private build()Ljava/security/cert/PKIXCertPathBuilderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v1

    .line 137
    .local v1, "result":Ljava/security/cert/PKIXCertPathBuilderResult;
    if-nez v1, :cond_1

    .line 138
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 139
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "SunCertPathBuilder.engineBuild: 2nd pass"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 143
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v1

    .line 144
    if-nez v1, :cond_1

    .line 145
    new-instance v2, Lsun/security/provider/certpath/SunCertPathBuilderException;

    const-string/jumbo v3, "unable to find valid certification path to requested target"

    .line 147
    new-instance v4, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v4, v0}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    .line 145
    invoke-direct {v2, v3, v4}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v2

    .line 150
    :cond_1
    return-object v1
.end method

.method private buildCertPath(ZLjava/util/List;)Ljava/security/cert/PKIXCertPathBuilderResult;
    .locals 9
    .param p1, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;)",
            "Ljava/security/cert/PKIXCertPathBuilderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .prologue
    .local p2, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    const/4 v1, 0x0

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 159
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 160
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 161
    iput-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 162
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 164
    .local v6, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->buildForward()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    invoke-direct {p0, p2, v6, p1}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v0, :cond_4

    .line 183
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 184
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() pathCompleted"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 190
    :cond_0
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 192
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderResult;

    .line 193
    iget-object v1, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v1, v6}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 194
    iget-object v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    iget-object v4, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 195
    new-instance v5, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v5, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    .line 192
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;Lsun/security/provider/certpath/AdjacencyList;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 167
    :cond_1
    :try_start_2
    invoke-direct {p0, p2, v6}, Lsun/security/provider/certpath/SunCertPathBuilder;->buildReverse(Ljava/util/List;Ljava/util/LinkedList;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 169
    :catch_0
    move-exception v7

    .line 170
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_2

    .line 171
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() exception in build"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 175
    :cond_2
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderException;

    const-string/jumbo v1, "unable to find valid certification path to requested target"

    .line 177
    new-instance v2, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v2, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    .line 175
    invoke-direct {v0, v1, v7, v2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v0

    .line 197
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 198
    .local v8, "e":Ljava/security/cert/CertificateException;
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3

    .line 199
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.engineBuild() exception in wrap-up"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    :cond_3
    new-instance v0, Lsun/security/provider/certpath/SunCertPathBuilderException;

    const-string/jumbo v1, "unable to find valid certification path to requested target"

    .line 205
    new-instance v2, Lsun/security/provider/certpath/AdjacencyList;

    invoke-direct {v2, p2}, Lsun/security/provider/certpath/AdjacencyList;-><init>(Ljava/util/List;)V

    .line 203
    invoke-direct {v0, v1, v8, v2}, Lsun/security/provider/certpath/SunCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lsun/security/provider/certpath/AdjacencyList;)V

    throw v0

    .line 208
    .end local v8    # "e":Ljava/security/cert/CertificateException;
    :cond_4
    return-object v1
.end method

.method private buildForward(Ljava/util/List;Ljava/util/LinkedList;Z)V
    .locals 6
    .param p3, "searchAllCertStores"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "adjacencyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 295
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.buildForward()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 299
    :cond_0
    new-instance v2, Lsun/security/provider/certpath/ForwardState;

    invoke-direct {v2}, Lsun/security/provider/certpath/ForwardState;-><init>()V

    .line 300
    .local v2, "currentState":Lsun/security/provider/certpath/ForwardState;
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/ForwardState;->initState(Ljava/util/List;)V

    .line 303
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 304
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance v0, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    iput-object v0, v2, Lsun/security/provider/certpath/ForwardState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    .line 308
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$BuilderParams;->targetSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 309
    new-instance v3, Lsun/security/provider/certpath/ForwardBuilder;

    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-direct {v3, v0, p3}, Lsun/security/provider/certpath/ForwardBuilder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;Z)V

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .line 308
    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    .line 292
    return-void
.end method

.method private buildReverse(Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    .local p1, "adjacencyList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p2, "certPathList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.buildReverse()..."

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 220
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SunCertPathBuilder.buildReverse() InitialPolicies: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 221
    iget-object v3, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v3}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v3

    .line 220
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 224
    :cond_0
    new-instance v2, Lsun/security/provider/certpath/ReverseState;

    invoke-direct {v2}, Lsun/security/provider/certpath/ReverseState;-><init>()V

    .line 226
    .local v2, "currentState":Lsun/security/provider/certpath/ReverseState;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 227
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->trustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 234
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/security/cert/TrustAnchor;>;"
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 238
    .local v6, "anchor":Ljava/security/cert/TrustAnchor;
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v0}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v0

    invoke-static {v6, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->anchorIsTarget(Ljava/security/cert/TrustAnchor;Ljava/security/cert/CertSelector;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 239
    iput-object v6, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 241
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 278
    .end local v6    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    :goto_0
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_3

    .line 279
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v1, "SunCertPathBuilder.buildReverse() returned from depthFirstSearchReverse()"

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 281
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SunCertPathBuilder.buildReverse() certPathList.size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v3

    .line 281
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 216
    :cond_3
    return-void

    .line 246
    .restart local v6    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_4
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 247
    .local v10, "trustedCert":Ljava/security/cert/X509Certificate;
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 250
    .local v9, "pubKey":Ljava/security/PublicKey;
    :goto_1
    invoke-static {v9}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2, v0}, Lsun/security/provider/certpath/ReverseState;->initState(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 256
    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2, v6, v0}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 258
    new-instance v0, Lsun/security/provider/certpath/AlgorithmChecker;

    invoke-direct {v0, v6}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    iput-object v0, v2, Lsun/security/provider/certpath/ReverseState;->algorithmChecker:Lsun/security/provider/certpath/AlgorithmChecker;

    .line 259
    new-instance v0, Lsun/security/provider/certpath/UntrustedChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/UntrustedChecker;-><init>()V

    iput-object v0, v2, Lsun/security/provider/certpath/ReverseState;->untrustedChecker:Lsun/security/provider/certpath/UntrustedChecker;

    .line 262
    :try_start_0
    new-instance v3, Lsun/security/provider/certpath/ReverseBuilder;

    iget-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-direct {v3, v0}, Lsun/security/provider/certpath/ReverseBuilder;-><init>(Lsun/security/provider/certpath/PKIX$BuilderParams;)V

    .line 261
    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    iget-boolean v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 248
    .end local v9    # "pubKey":Ljava/security/PublicKey;
    :cond_5
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    goto :goto_1

    .line 264
    .restart local v9    # "pubKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v7

    .line 266
    .local v7, "e":Ljava/lang/Exception;
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    throw v7
.end method

.method private depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 44
    .param p1, "dN"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentState"    # Lsun/security/provider/certpath/ForwardState;
    .param p3, "builder"    # Lsun/security/provider/certpath/ForwardBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lsun/security/provider/certpath/ForwardState;",
            "Lsun/security/provider/certpath/ForwardBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    .local p4, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p5, "cpList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_0

    .line 337
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 338
    const-string/jumbo v7, ", "

    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 338
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->toString()Ljava/lang/String;

    move-result-object v7

    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 338
    const-string/jumbo v7, ")"

    .line 337
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 346
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v5}, Lsun/security/provider/certpath/ForwardBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v22

    .line 347
    .local v22, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v43

    .line 348
    .local v43, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1

    .line 349
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): certs.size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 350
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    move-result v7

    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v42

    .local v42, "vertex$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface/range {v42 .. v42}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lsun/security/provider/certpath/Vertex;

    .line 369
    .local v41, "vertex":Lsun/security/provider/certpath/Vertex;
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ForwardState;->clone()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lsun/security/provider/certpath/ForwardState;

    .line 370
    .local v36, "nextState":Lsun/security/provider/certpath/ForwardState;
    invoke-virtual/range {v41 .. v41}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v21

    .line 373
    .local v21, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, v36

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lsun/security/provider/certpath/ForwardBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 395
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_2

    .line 396
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): commencing final verification"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 399
    :cond_2
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 407
    .local v19, "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-nez v5, :cond_3

    .line 408
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 412
    :cond_3
    const-string/jumbo v5, "2.5.29.32.0"

    invoke-static {v5}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    .line 414
    .local v9, "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 415
    const-string/jumbo v6, "2.5.29.32.0"

    .line 414
    const/4 v5, 0x0

    .line 415
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 414
    invoke-direct/range {v4 .. v10}, Lsun/security/provider/certpath/PolicyNodeImpl;-><init>(Lsun/security/provider/certpath/PolicyNodeImpl;Ljava/lang/String;Ljava/util/Set;ZLjava/util/Set;Z)V

    .line 417
    .local v4, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v25, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    new-instance v10, Lsun/security/provider/certpath/PolicyChecker;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->initialPolicies()Ljava/util/Set;

    move-result-object v11

    .line 420
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v12

    .line 421
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->explicitPolicyRequired()Z

    move-result v13

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyMappingInhibited()Z

    move-result v14

    .line 423
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->anyPolicyInhibited()Z

    move-result v15

    .line 424
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->policyQualifiersRejected()Z

    move-result v16

    move-object/from16 v17, v4

    .line 419
    invoke-direct/range {v10 .. v17}, Lsun/security/provider/certpath/PolicyChecker;-><init>(Ljava/util/Set;IZZZZLsun/security/provider/certpath/PolicyNodeImpl;)V

    .line 426
    .local v10, "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    move-object/from16 v0, v25

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    new-instance v5, Lsun/security/provider/certpath/AlgorithmChecker;

    move-object/from16 v0, p3

    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-direct {v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;-><init>(Ljava/security/cert/TrustAnchor;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    const/16 v20, 0x0

    .line 432
    .local v20, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    invoke-virtual/range {v36 .. v36}, Lsun/security/provider/certpath/ForwardState;->keyParamsNeeded()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 433
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v38

    .line 434
    .local v38, "rootKey":Ljava/security/PublicKey;
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-nez v5, :cond_4

    .line 435
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v38

    .line 436
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_4

    .line 437
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward using buildParams public key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 440
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 438
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 437
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 442
    :cond_4
    new-instance v18, Ljava/security/cert/TrustAnchor;

    .line 443
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    const/4 v6, 0x0

    .line 442
    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-direct {v0, v5, v1, v6}, Ljava/security/cert/TrustAnchor;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/security/PublicKey;[B)V

    .line 446
    .local v18, "anchor":Ljava/security/cert/TrustAnchor;
    new-instance v20, Lsun/security/provider/certpath/BasicChecker;

    .end local v20    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->date()Ljava/util/Date;

    move-result-object v5

    .line 447
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->sigProvider()Ljava/lang/String;

    move-result-object v6

    .line 448
    const/4 v7, 0x1

    .line 446
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v5, v6, v7}, Lsun/security/provider/certpath/BasicChecker;-><init>(Ljava/security/cert/TrustAnchor;Ljava/util/Date;Ljava/lang/String;Z)V

    .line 449
    .local v20, "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    .end local v18    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v20    # "basicChecker":Lsun/security/provider/certpath/BasicChecker;
    .end local v38    # "rootKey":Ljava/security/PublicKey;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->cf:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->setCertPath(Ljava/security/cert/CertPath;)V

    .line 454
    const/16 v37, 0x0

    .line 455
    .local v37, "revCheckerAdded":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v28

    .line 456
    .local v28, "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "ckr$iterator":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/security/cert/PKIXCertPathChecker;

    .line 457
    .local v26, "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, v26

    instance-of v5, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v5, :cond_6

    .line 458
    if-eqz v37, :cond_8

    .line 459
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    .line 460
    const-string/jumbo v6, "Only one PKIXRevocationChecker can be specified"

    .line 459
    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 374
    .end local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .end local v27    # "ckr$iterator":Ljava/util/Iterator;
    .end local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v37    # "revCheckerAdded":Z
    :catch_0
    move-exception v34

    .line 375
    .local v34, "gse":Ljava/security/GeneralSecurityException;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_7

    .line 376
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): validation failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Throwable;->printStackTrace()V

    .line 380
    :cond_7
    move-object/from16 v0, v41

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 462
    .end local v34    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .restart local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .restart local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v27    # "ckr$iterator":Ljava/util/Iterator;
    .restart local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .restart local v37    # "revCheckerAdded":Z
    :cond_8
    const/16 v37, 0x1

    .line 464
    move-object/from16 v0, v26

    instance-of v5, v0, Lsun/security/provider/certpath/RevocationChecker;

    if-eqz v5, :cond_6

    .line 465
    nop

    nop

    .end local v26    # "ckr":Ljava/security/cert/PKIXCertPathChecker;
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 466
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 465
    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Lsun/security/provider/certpath/RevocationChecker;->init(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    goto :goto_1

    .line 472
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->revocationEnabled()Z

    move-result v5

    if-eqz v5, :cond_a

    if-eqz v37, :cond_10

    .line 477
    :cond_a
    :goto_2
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 482
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_16

    .line 483
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/security/cert/X509Certificate;

    .line 484
    .local v30, "currCert":Ljava/security/cert/X509Certificate;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_b

    .line 485
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current subject = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 486
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 485
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 488
    :cond_b
    invoke-virtual/range {v30 .. v30}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v40

    .line 489
    .local v40, "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v40, :cond_c

    .line 490
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v40

    .line 493
    :cond_c
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "currChecker$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/security/cert/PKIXCertPathChecker;

    .line 494
    .local v31, "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual/range {v31 .. v31}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v5

    if-nez v5, :cond_d

    .line 495
    if-nez v35, :cond_e

    .line 496
    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 501
    move-object/from16 v0, v31

    instance-of v5, v0, Lsun/security/provider/certpath/AlgorithmChecker;

    if-eqz v5, :cond_e

    move-object/from16 v5, v31

    .line 502
    nop

    nop

    .line 503
    move-object/from16 v0, p3

    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 502
    invoke-virtual {v5, v6}, Lsun/security/provider/certpath/AlgorithmChecker;->trySetTrustAnchor(Ljava/security/cert/TrustAnchor;)V

    .line 508
    :cond_e
    :try_start_1
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 509
    :catch_1
    move-exception v29

    .line 510
    .local v29, "cpve":Ljava/security/cert/CertPathValidatorException;
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_f

    .line 511
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    .line 512
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SunCertPathBuilder.depthFirstSearchForward(): final verification failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 511
    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 516
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->targetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-interface {v5, v0}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 517
    invoke-virtual/range {v29 .. v29}, Ljava/security/cert/CertPathValidatorException;->getReason()Ljava/security/cert/CertPathValidatorException$Reason;

    move-result-object v5

    sget-object v6, Ljava/security/cert/CertPathValidatorException$BasicReason;->REVOKED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    if-ne v5, v6, :cond_11

    .line 518
    throw v29

    .line 473
    .end local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .end local v35    # "i":I
    .end local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    new-instance v5, Lsun/security/provider/certpath/RevocationChecker;

    move-object/from16 v0, p3

    iget-object v6, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 474
    move-object/from16 v0, p0

    iget-object v7, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 473
    invoke-direct {v5, v6, v7}, Lsun/security/provider/certpath/RevocationChecker;-><init>(Ljava/security/cert/TrustAnchor;Lsun/security/provider/certpath/PKIX$ValidatorParams;)V

    move-object/from16 v0, v25

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 520
    .restart local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .restart local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    .restart local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .restart local v35    # "i":I
    .restart local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_11
    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 533
    .end local v29    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v31    # "currChecker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v5}, Lsun/security/provider/certpath/PKIX$ValidatorParams;->certPathCheckers()Ljava/util/List;

    move-result-object v5

    .line 532
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "checker$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/security/cert/PKIXCertPathChecker;

    .line 535
    .local v23, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/PKIXCertPathChecker;->isForwardCheckingSupported()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 537
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/PKIXCertPathChecker;->getSupportedExtensions()Ljava/util/Set;

    move-result-object v39

    .line 538
    .local v39, "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v39, :cond_13

    .line 539
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 544
    .end local v23    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    .end local v39    # "suppExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_14
    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 545
    sget-object v5, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 546
    sget-object v5, Lsun/security/x509/PKIXExtensions;->NameConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 547
    sget-object v5, Lsun/security/x509/PKIXExtensions;->CertificatePolicies_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 548
    sget-object v5, Lsun/security/x509/PKIXExtensions;->PolicyMappings_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 549
    sget-object v5, Lsun/security/x509/PKIXExtensions;->PolicyConstraints_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 550
    sget-object v5, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 552
    sget-object v5, Lsun/security/x509/PKIXExtensions;->SubjectAlternativeName_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    .line 551
    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 553
    sget-object v5, Lsun/security/x509/PKIXExtensions;->KeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 554
    sget-object v5, Lsun/security/x509/PKIXExtensions;->ExtendedKeyUsage_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 556
    invoke-interface/range {v40 .. v40}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_15

    .line 557
    new-instance v11, Ljava/security/cert/CertPathValidatorException;

    .line 558
    const-string/jumbo v12, "unrecognized critical extension(s)"

    .line 559
    sget-object v16, Ljava/security/cert/PKIXReason;->UNRECOGNIZED_CRIT_EXT:Ljava/security/cert/PKIXReason;

    .line 558
    const/4 v13, 0x0

    .line 559
    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 557
    invoke-direct/range {v11 .. v16}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    throw v11

    .line 482
    :cond_15
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_3

    .line 563
    .end local v24    # "checker$iterator":Ljava/util/Iterator;
    .end local v30    # "currCert":Ljava/security/cert/X509Certificate;
    .end local v32    # "currChecker$iterator":Ljava/util/Iterator;
    .end local v40    # "unresCritExts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_16
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_17

    .line 564
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): final verification succeeded - path completed!"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 566
    :cond_17
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 573
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-nez v5, :cond_18

    .line 574
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 576
    :cond_18
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 581
    if-eqz v20, :cond_19

    .line 582
    invoke-virtual/range {v20 .. v20}, Lsun/security/provider/certpath/BasicChecker;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 593
    :goto_6
    invoke-virtual {v10}, Lsun/security/provider/certpath/PolicyChecker;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 594
    return-void

    .line 585
    :cond_19
    invoke-virtual/range {p5 .. p5}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 586
    move-object/from16 v0, p3

    iget-object v5, v0, Lsun/security/provider/certpath/ForwardBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    invoke-virtual {v5}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v33

    .line 590
    .local v33, "finalCert":Ljava/security/cert/Certificate;
    :goto_7
    invoke-virtual/range {v33 .. v33}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    goto :goto_6

    .line 588
    .end local v33    # "finalCert":Ljava/security/cert/Certificate;
    :cond_1a
    invoke-virtual/range {p5 .. p5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/security/cert/Certificate;

    .restart local v33    # "finalCert":Ljava/security/cert/Certificate;
    goto :goto_7

    .line 596
    .end local v4    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    .end local v9    # "initExpPolSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "policyChecker":Lsun/security/provider/certpath/PolicyChecker;
    .end local v19    # "appendedCerts":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v25    # "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v27    # "ckr$iterator":Ljava/util/Iterator;
    .end local v28    # "ckrs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    .end local v33    # "finalCert":Ljava/security/cert/Certificate;
    .end local v35    # "i":I
    .end local v37    # "revCheckerAdded":Z
    :cond_1b
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ForwardBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 600
    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardState;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 606
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

    .line 610
    invoke-virtual/range {v21 .. v21}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    move-object/from16 v11, p0

    move-object/from16 v13, v36

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v16}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchForward(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ForwardState;Lsun/security/provider/certpath/ForwardBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    .line 616
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v5, :cond_1c

    .line 617
    return-void

    .line 625
    :cond_1c
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v5, :cond_1d

    .line 626
    sget-object v5, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v6, "SunCertPathBuilder.depthFirstSearchForward(): backtracking"

    invoke-virtual {v5, v6}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 628
    :cond_1d
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ForwardBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .line 334
    .end local v21    # "cert":Ljava/security/cert/X509Certificate;
    .end local v36    # "nextState":Lsun/security/provider/certpath/ForwardState;
    .end local v41    # "vertex":Lsun/security/provider/certpath/Vertex;
    :cond_1e
    return-void
.end method

.method private depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V
    .locals 15
    .param p1, "dN"    # Ljavax/security/auth/x500/X500Principal;
    .param p2, "currentState"    # Lsun/security/provider/certpath/ReverseState;
    .param p3, "builder"    # Lsun/security/provider/certpath/ReverseBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Lsun/security/provider/certpath/ReverseState;",
            "Lsun/security/provider/certpath/ReverseBuilder;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lsun/security/provider/certpath/Vertex;",
            ">;>;",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 655
    .local p4, "adjList":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;>;"
    .local p5, "cpList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/security/cert/X509Certificate;>;"
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_0

    .line 656
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    const-string/jumbo v5, ", "

    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->toString()Ljava/lang/String;

    move-result-object v5

    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 657
    const-string/jumbo v5, ")"

    .line 656
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 664
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PKIX$BuilderParams;->certStores()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lsun/security/provider/certpath/ReverseBuilder;->getMatchingCerts(Lsun/security/provider/certpath/State;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v9

    .line 665
    .local v9, "certs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p4

    invoke-static {v9, v0}, Lsun/security/provider/certpath/SunCertPathBuilder;->addVertices(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 666
    .local v14, "vertices":Ljava/util/List;, "Ljava/util/List<Lsun/security/provider/certpath/Vertex;>;"
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_1

    .line 667
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse(): certs.size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 668
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    .line 667
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 676
    :cond_1
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "vertex$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lsun/security/provider/certpath/Vertex;

    .line 684
    .local v12, "vertex":Lsun/security/provider/certpath/Vertex;
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsun/security/provider/certpath/ReverseState;

    .line 685
    .local v4, "nextState":Lsun/security/provider/certpath/ReverseState;
    invoke-virtual {v12}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 687
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v8, v4, v1}, Lsun/security/provider/certpath/ReverseBuilder;->verifyCert(Ljava/security/cert/X509Certificate;Lsun/security/provider/certpath/State;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    move-result v2

    if-nez v2, :cond_3

    .line 701
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v8, v1}, Lsun/security/provider/certpath/ReverseBuilder;->addCertToPath(Ljava/security/cert/X509Certificate;Ljava/util/LinkedList;)V

    .line 703
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lsun/security/provider/certpath/ReverseState;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 708
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lsun/security/provider/certpath/ReverseBuilder;->isPathCompleted(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 709
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_4

    .line 710
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse(): path completed!"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 712
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    .line 714
    iget-object v11, v4, Lsun/security/provider/certpath/ReverseState;->rootNode:Lsun/security/provider/certpath/PolicyNodeImpl;

    .line 716
    .local v11, "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    if-nez v11, :cond_7

    .line 717
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 726
    :goto_1
    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 727
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    invoke-static {v2}, Lsun/security/provider/certpath/PKIX;->isDSAPublicKeyWithoutParams(Ljava/security/PublicKey;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 730
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    move-object/from16 v0, p2

    iget-object v3, v0, Lsun/security/provider/certpath/ReverseState;->pubKey:Ljava/security/PublicKey;

    .line 729
    invoke-static {v2, v3}, Lsun/security/provider/certpath/BasicChecker;->makeInheritedParamsKey(Ljava/security/PublicKey;Ljava/security/PublicKey;)Ljava/security/PublicKey;

    move-result-object v2

    .line 728
    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->finalPublicKey:Ljava/security/PublicKey;

    .line 733
    :cond_5
    return-void

    .line 688
    .end local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :catch_0
    move-exception v10

    .line 689
    .local v10, "gse":Ljava/security/GeneralSecurityException;
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_6

    .line 690
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SunCertPathBuilder.depthFirstSearchReverse(): validation failed: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 692
    :cond_6
    invoke-virtual {v12, v10}, Lsun/security/provider/certpath/Vertex;->setThrowable(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 719
    .end local v10    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_7
    invoke-virtual {v11}, Lsun/security/provider/certpath/PolicyNodeImpl;->copyTree()Lsun/security/provider/certpath/PolicyNodeImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    .line 720
    iget-object v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->policyTreeResult:Ljava/security/cert/PolicyNode;

    check-cast v2, Lsun/security/provider/certpath/PolicyNodeImpl;

    invoke-virtual {v2}, Lsun/security/provider/certpath/PolicyNodeImpl;->setImmutable()V

    goto :goto_1

    .line 737
    .end local v11    # "rootNode":Lsun/security/provider/certpath/PolicyNodeImpl;
    :cond_8
    invoke-virtual {v4, v8}, Lsun/security/provider/certpath/ReverseState;->updateState(Ljava/security/cert/X509Certificate;)V

    .line 743
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v12, v2}, Lsun/security/provider/certpath/Vertex;->setIndex(I)V

    .line 747
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lsun/security/provider/certpath/SunCertPathBuilder;->depthFirstSearchReverse(Ljavax/security/auth/x500/X500Principal;Lsun/security/provider/certpath/ReverseState;Lsun/security/provider/certpath/ReverseBuilder;Ljava/util/List;Ljava/util/LinkedList;)V

    .line 753
    iget-boolean v2, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->pathCompleted:Z

    if-eqz v2, :cond_9

    .line 754
    return-void

    .line 762
    :cond_9
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_a

    .line 763
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse(): backtracking"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 765
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lsun/security/provider/certpath/ReverseState;->isInitial()Z

    move-result v2

    if-nez v2, :cond_2

    .line 766
    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lsun/security/provider/certpath/ReverseBuilder;->removeFinalCertFromPath(Ljava/util/LinkedList;)V

    goto/16 :goto_0

    .line 769
    .end local v4    # "nextState":Lsun/security/provider/certpath/ReverseState;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "vertex":Lsun/security/provider/certpath/Vertex;
    :cond_b
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v2, :cond_c

    .line 770
    sget-object v2, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    const-string/jumbo v3, "SunCertPathBuilder.depthFirstSearchReverse() all certs in this adjacency list checked"

    invoke-virtual {v2, v3}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 653
    :cond_c
    return-void
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 3
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lsun/security/provider/certpath/SunCertPathBuilder;->debug:Lsun/security/util/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SunCertPathBuilder.engineBuild("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 130
    :cond_0
    invoke-static {p1}, Lsun/security/provider/certpath/PKIX;->checkBuilderParams(Ljava/security/cert/CertPathParameters;)Lsun/security/provider/certpath/PKIX$BuilderParams;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/SunCertPathBuilder;->buildParams:Lsun/security/provider/certpath/PKIX$BuilderParams;

    .line 131
    invoke-direct {p0}, Lsun/security/provider/certpath/SunCertPathBuilder;->build()Ljava/security/cert/PKIXCertPathBuilderResult;

    move-result-object v0

    return-object v0
.end method

.method public engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lsun/security/provider/certpath/RevocationChecker;

    invoke-direct {v0}, Lsun/security/provider/certpath/RevocationChecker;-><init>()V

    return-object v0
.end method
