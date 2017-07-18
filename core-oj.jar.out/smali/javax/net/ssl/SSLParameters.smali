.class public Ljavax/net/ssl/SSLParameters;
.super Ljava/lang/Object;
.source "SSLParameters.java"


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field private cipherSuites:[Ljava/lang/String;

.field private identificationAlgorithm:Ljava/lang/String;

.field private needClientAuth:Z

.field private preferLocalCipherSuites:Z

.field private protocols:[Ljava/lang/String;

.field private sniMatchers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private sniNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation
.end field

.field private wantClientAuth:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-virtual {p0, p1}, Ljavax/net/ssl/SSLParameters;->setCipherSuites([Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    return-void
.end method

.method private static clone([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method public getCipherSuites()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return v0
.end method

.method public getProtocols()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSNIMatchers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getServerNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1
.end method

.method public final getUseCipherSuitesOrder()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    return v0
.end method

.method public setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 0

    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-void
.end method

.method public setCipherSuites([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->cipherSuites:[Ljava/lang/String;

    return-void
.end method

.method public setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/net/ssl/SSLParameters;->identificationAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return-void
.end method

.method public setProtocols([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljavax/net/ssl/SSLParameters;->clone([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/net/ssl/SSLParameters;->protocols:[Ljava/lang/String;

    return-void
.end method

.method public final setSNIMatchers(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIMatcher;

    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicated server name of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/net/ssl/SNIMatcher;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniMatchers:Ljava/util/Map;

    goto :goto_0
.end method

.method public final setServerNames(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljavax/net/ssl/SNIServerName;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SNIServerName;

    iget-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Duplicated server name of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/net/ssl/SNIServerName;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iput-object v2, p0, Ljavax/net/ssl/SSLParameters;->sniNames:Ljava/util/Map;

    goto :goto_0
.end method

.method public final setUseCipherSuitesOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->preferLocalCipherSuites:Z

    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1

    iput-boolean p1, p0, Ljavax/net/ssl/SSLParameters;->wantClientAuth:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/net/ssl/SSLParameters;->needClientAuth:Z

    return-void
.end method
