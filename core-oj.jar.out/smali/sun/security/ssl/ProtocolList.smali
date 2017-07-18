.class final Lsun/security/ssl/ProtocolList;
.super Ljava/lang/Object;
.source "ProtocolList.java"


# instance fields
.field final helloVersion:Lsun/security/ssl/ProtocolVersion;

.field final max:Lsun/security/ssl/ProtocolVersion;

.field final min:Lsun/security/ssl/ProtocolVersion;

.field private protocolNames:[Ljava/lang/String;

.field private final protocols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    sget-object v1, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "SSLv2Hello cannot be enabled unless at least one other supported version is also enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    iget-object v1, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->min:Lsun/security/ssl/ProtocolVersion;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->max:Lsun/security/ssl/ProtocolVersion;

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->NONE:Lsun/security/ssl/ProtocolVersion;

    iput-object v0, p0, Lsun/security/ssl/ProtocolList;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    goto :goto_0
.end method

.method constructor <init>([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lsun/security/ssl/ProtocolList;->convert([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/ssl/ProtocolList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method private static convert([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Protocols may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-object v3, p0, v0

    invoke-static {v3}, Lsun/security/ssl/ProtocolVersion;->valueOf(Ljava/lang/String;)Lsun/security/ssl/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method


# virtual methods
.method collection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/ProtocolVersion;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    return-object v0
.end method

.method contains(Lsun/security/ssl/ProtocolVersion;)Z
    .locals 1

    sget-object v0, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method selectProtocolVersion(Lsun/security/ssl/ProtocolVersion;)Lsun/security/ssl/ProtocolVersion;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/ProtocolVersion;

    iget v3, v0, Lsun/security/ssl/ProtocolVersion;->v:I

    iget v4, p1, Lsun/security/ssl/ProtocolVersion;->v:I

    if-le v3, v4, :cond_1

    :cond_0
    return-object v2

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized toStringArray()[Ljava/lang/String;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocols:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/ProtocolVersion;

    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    add-int/lit8 v0, v1, 0x1

    iget-object v5, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v5, v4, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lsun/security/ssl/ProtocolList;->protocolNames:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
