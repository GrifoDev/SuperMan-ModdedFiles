.class final Lsun/security/ssl/SSLSessionContextImpl;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Ljavax/net/ssl/SSLSessionContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    }
.end annotation


# instance fields
.field private cacheLimit:I

.field private sessionCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Lsun/security/ssl/SessionId;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private sessionHostPortCache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private timeout:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-direct {p0}, Lsun/security/ssl/SSLSessionContextImpl;->getDefaultCacheLimit()I

    move-result v0

    iput v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    .line 50
    const v0, 0x15180

    iput v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    .line 53
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    iget v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    invoke-static {v0, v1}, Lsun/security/util/Cache;->newSoftMemoryCache(II)Lsun/security/util/Cache;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    .line 54
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    iget v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    invoke-static {v0, v1}, Lsun/security/util/Cache;->newSoftMemoryCache(II)Lsun/security/util/Cache;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    .line 48
    return-void
.end method

.method private getDefaultCacheLimit()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x0

    .line 203
    .local v0, "cacheLimit":I
    :try_start_0
    new-instance v4, Lsun/security/ssl/SSLSessionContextImpl$1;

    invoke-direct {v4, p0}, Lsun/security/ssl/SSLSessionContextImpl$1;-><init>(Lsun/security/ssl/SSLSessionContextImpl;)V

    .line 202
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 210
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 214
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    if-lez v0, :cond_1

    .end local v0    # "cacheLimit":I
    :goto_1
    return v0

    .restart local v0    # "cacheLimit":I
    .restart local v2    # "s":Ljava/lang/String;
    :cond_0
    move v0, v3

    .line 210
    goto :goto_0

    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    move v0, v3

    .line 214
    goto :goto_1

    .line 211
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method get(Ljava/lang/String;I)Lsun/security/ssl/SSLSessionImpl;
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v3, 0x0

    .line 152
    if-nez p1, :cond_0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 153
    return-object v3

    .line 156
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    invoke-direct {p0, p1, p2}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    .line 157
    .local v0, "sess":Lsun/security/ssl/SSLSessionImpl;
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    return-object v0

    .line 161
    :cond_1
    return-object v3
.end method

.method get([B)Lsun/security/ssl/SSLSessionImpl;
    .locals 1
    .param p1, "id"    # [B

    .prologue
    .line 143
    invoke-virtual {p0, p1}, Lsun/security/ssl/SSLSessionContextImpl;->getSession([B)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    return-object v0
.end method

.method public getIds()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;

    invoke-direct {v0, p0}, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;-><init>(Lsun/security/ssl/SSLSessionContextImpl;)V

    .line 80
    .local v0, "scVisitor":Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {v1, v0}, Lsun/security/util/Cache;->accept(Lsun/security/util/Cache$CacheVisitor;)V

    .line 82
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->getSessionIds()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getSession([B)Ljavax/net/ssl/SSLSession;
    .locals 4
    .param p1, "sessionId"    # [B

    .prologue
    const/4 v3, 0x0

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "session id cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    new-instance v2, Lsun/security/ssl/SessionId;

    invoke-direct {v2, p1}, Lsun/security/ssl/SessionId;-><init>([B)V

    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    .line 67
    .local v0, "sess":Lsun/security/ssl/SSLSessionImpl;
    invoke-virtual {p0, v0}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    return-object v0

    .line 71
    :cond_1
    return-object v3
.end method

.method public getSessionCacheSize()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    return v0
.end method

.method public getSessionTimeout()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    return v0
.end method

.method isTimedout(Ljavax/net/ssl/SSLSession;)Z
    .locals 7
    .param p1, "sess"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v6, 0x0

    .line 218
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    if-nez v0, :cond_0

    .line 219
    return v6

    .line 222
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    iget v2, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 222
    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 224
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 225
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_1
    return v6
.end method

.method put(Lsun/security/ssl/SSLSessionImpl;)V
    .locals 3
    .param p1, "s"    # Lsun/security/ssl/SSLSessionImpl;

    .prologue
    .line 178
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getSessionId()Lsun/security/ssl/SessionId;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    .line 183
    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1, p1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    :cond_0
    invoke-virtual {p1, p0}, Lsun/security/ssl/SSLSessionImpl;->setContext(Lsun/security/ssl/SSLSessionContextImpl;)V

    .line 177
    return-void
.end method

.method remove(Lsun/security/ssl/SessionId;)V
    .locals 4
    .param p1, "key"    # Lsun/security/ssl/SessionId;

    .prologue
    .line 191
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p1}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SSLSessionImpl;

    .line 192
    .local v0, "s":Lsun/security/ssl/SSLSessionImpl;
    if-eqz v0, :cond_0

    .line 193
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {v1, p1}, Lsun/security/util/Cache;->remove(Ljava/lang/Object;)V

    .line 194
    iget-object v1, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    .line 195
    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lsun/security/ssl/SSLSessionImpl;->getPeerPort()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lsun/security/ssl/SSLSessionContextImpl;->getKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-virtual {v1, v2}, Lsun/security/util/Cache;->remove(Ljava/lang/Object;)V

    .line 190
    :cond_0
    return-void
.end method

.method public setSessionCacheSize(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 121
    if-gez p1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    if-eq v0, p1, :cond_1

    .line 125
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setCapacity(I)V

    .line 126
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setCapacity(I)V

    .line 127
    iput p1, p0, Lsun/security/ssl/SSLSessionContextImpl;->cacheLimit:I

    .line 120
    :cond_1
    return-void
.end method

.method public setSessionTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 95
    if-gez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    if-eq v0, p1, :cond_1

    .line 100
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionCache:Lsun/security/util/Cache;

    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setTimeout(I)V

    .line 101
    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl;->sessionHostPortCache:Lsun/security/util/Cache;

    invoke-virtual {v0, p1}, Lsun/security/util/Cache;->setTimeout(I)V

    .line 102
    iput p1, p0, Lsun/security/ssl/SSLSessionContextImpl;->timeout:I

    .line 94
    :cond_1
    return-void
.end method
