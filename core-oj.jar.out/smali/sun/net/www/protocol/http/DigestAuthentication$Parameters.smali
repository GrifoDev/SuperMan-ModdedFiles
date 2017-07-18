.class Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
.super Ljava/lang/Object;
.source "DigestAuthentication.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/net/www/protocol/http/DigestAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Parameters"
.end annotation


# static fields
.field private static final cnonceRepeat:I = 0x5

.field private static final cnoncelen:I = 0x28

.field private static random:Ljava/util/Random; = null

.field private static final serialVersionUID:J = -0x31bedb8dba36ea2cL


# instance fields
.field private NCcount:I

.field private algorithm:Ljava/lang/String;

.field private cachedHA1:Ljava/lang/String;

.field private cnonce:Ljava/lang/String;

.field cnonce_count:I

.field private nonce:Ljava/lang/String;

.field private opaque:Ljava/lang/String;

.field private redoCachedHA1:Z

.field private serverQop:Z


# direct methods
.method static synthetic -get0(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->random:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z

    iput v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    iput-boolean v2, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z

    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;

    iput-object v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    return-void
.end method


# virtual methods
.method authQop()Z
    .locals 1

    iget-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z

    return v0
.end method

.method declared-synchronized getAlgorithm()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCachedHA1()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCnonce()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->setNewCnonce()V

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNCCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNonce()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getOpaque()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized incrementNC()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setAlgorithm(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->algorithm:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setCachedHA1(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cachedHA1:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setNewCnonce()V
    .locals 7

    const/16 v6, 0x14

    monitor-enter p0

    const/16 v4, 0x14

    :try_start_0
    new-array v0, v4, [B

    const/16 v4, 0x28

    new-array v1, v4, [C

    sget-object v4, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->random:Ljava/util/Random;

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextBytes([B)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v6, :cond_0

    aget-byte v4, v0, v2

    add-int/lit16 v3, v4, 0x80

    mul-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    aput-char v5, v1, v4

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v5, v3, 0x10

    add-int/lit8 v5, v5, 0x41

    int-to-char v5, v5

    aput-char v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0x28

    invoke-direct {v4, v1, v5, v6}, Ljava/lang/String;-><init>([CII)V

    iput-object v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce:Ljava/lang/String;

    const/4 v4, 0x0

    iput v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->cnonce_count:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized setNonce(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->nonce:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->NCcount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->redoCachedHA1:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setOpaque(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->opaque:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setQop(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, " "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;->serverQop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
