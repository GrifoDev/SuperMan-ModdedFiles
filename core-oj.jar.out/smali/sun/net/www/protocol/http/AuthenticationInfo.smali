.class public abstract Lsun/net/www/protocol/http/AuthenticationInfo;
.super Lsun/net/www/protocol/http/AuthCacheValue;
.source "AuthenticationInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final PROXY_AUTHENTICATION:C = 'p'

.field public static final SERVER_AUTHENTICATION:C = 's'

.field private static requests:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field static serializeAuth:Z


# instance fields
.field authScheme:Lsun/net/www/protocol/http/AuthScheme;

.field host:Ljava/lang/String;

.field path:Ljava/lang/String;

.field port:I

.field protocol:Ljava/lang/String;

.field protected transient pw:Ljava/net/PasswordAuthentication;

.field realm:Ljava/lang/String;

.field s1:Ljava/lang/String;

.field s2:Ljava/lang/String;

.field type:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->-assertionsDisabled:Z

    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "http.auth.serializeRequests"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthCacheValue;-><init>()V

    iput-char p1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    iput p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    iput-object p5, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lsun/net/www/protocol/http/AuthCacheValue;-><init>()V

    iput-char p1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    iput-object p2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {p3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p3}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    iput v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    :cond_0
    iput-object p4, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method static endAuthRequest(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestCompleted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    invoke-interface {v0, p0, v1}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    return-object v0

    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    return-object v0
.end method

.method static getProxyAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 3

    const/4 v2, 0x0

    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    invoke-interface {v1, p0, v2}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestIsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    invoke-interface {v1, p0, v2}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    move-result-object v0

    check-cast v0, Lsun/net/www/protocol/http/AuthenticationInfo;

    :cond_0
    return-object v0
.end method

.method static getProxyAuth(Ljava/lang/String;I)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "p::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lsun/net/www/protocol/http/AuthCache;->get(Ljava/lang/String;Ljava/lang/String;)Lsun/net/www/protocol/http/AuthCacheValue;

    move-result-object v1

    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;

    return-object v1
.end method

.method static getProxyAuthKey(Ljava/lang/String;ILjava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getServerAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 3

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->requestIsInProgress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static getServerAuth(Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuth(Ljava/lang/String;Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v2

    return-object v2
.end method

.method static getServerAuthKey(Ljava/net/URL;Ljava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "s:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    iget-object v2, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    iput-object v3, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    iput-object v3, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    return-void
.end method

.method static reducePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v2, 0x2e

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-ge v0, v1, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object p0

    :cond_1
    return-object p0
.end method

.method private static requestCompleted(Ljava/lang/String;)V
    .locals 4

    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_1

    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sget-boolean v2, Lsun/net/www/protocol/http/AuthenticationInfo;->-assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    sget-object v2, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method private static requestIsInProgress(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    sget-boolean v3, Lsun/net/www/protocol/http/AuthenticationInfo;->serializeAuth:Z

    if-nez v3, :cond_0

    return v5

    :cond_0
    sget-object v4, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Thread;

    if-nez v2, :cond_1

    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return v5

    :cond_1
    if-ne v2, v0, :cond_2

    monitor-exit v4

    return v5

    :cond_2
    :goto_0
    :try_start_1
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    :try_start_2
    sget-object v3, Lsun/net/www/protocol/http/AuthenticationInfo;->requests:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    monitor-exit v4

    const/4 v3, 0x1

    return v3

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v0}, Ljava/net/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s1:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    invoke-virtual {v1}, Ljava/net/PasswordAuthentication;->getPassword()[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->s2:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method addToCache()V
    .locals 3

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    invoke-interface {v1, v0, p0}, Lsun/net/www/protocol/http/AuthCache;->put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Lsun/net/www/protocol/http/AuthCache;->put(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    :cond_0
    invoke-static {v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    return-void
.end method

.method cacheKey(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Lsun/net/www/protocol/http/AuthCacheValue;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public credentials()Ljava/net/PasswordAuthentication;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    return-object v0
.end method

.method getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->authScheme:Lsun/net/www/protocol/http/AuthScheme;

    return-object v0
.end method

.method public getAuthType()Lsun/net/www/protocol/http/AuthCacheValue$Type;
    .locals 2

    iget-char v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    sget-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Server:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lsun/net/www/protocol/http/AuthCacheValue$Type;->Proxy:Lsun/net/www/protocol/http/AuthCacheValue$Type;

    goto :goto_0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 2

    iget-char v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->type:C

    const/16 v1, 0x73

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "Authorization"

    return-object v0

    :cond_0
    const-string/jumbo v0, "Proxy-authorization"

    return-object v0
.end method

.method public abstract getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->port:I

    return v0
.end method

.method public getProtocolScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public abstract isAuthorizationStale(Ljava/lang/String;)Z
.end method

.method removeFromCache()V
    .locals 2

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lsun/net/www/protocol/http/AuthCache;->remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lsun/net/www/protocol/http/AuthenticationInfo;->cache:Lsun/net/www/protocol/http/AuthCache;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->cacheKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lsun/net/www/protocol/http/AuthCache;->remove(Ljava/lang/String;Lsun/net/www/protocol/http/AuthCacheValue;)V

    :cond_0
    return-void
.end method

.method public abstract setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
.end method

.method public abstract supportsPreemptiveAuthorization()Z
.end method
