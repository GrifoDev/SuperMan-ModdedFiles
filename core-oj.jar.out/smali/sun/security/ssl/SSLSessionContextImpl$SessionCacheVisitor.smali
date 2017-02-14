.class final Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;
.super Ljava/lang/Object;
.source "SSLSessionContextImpl.java"

# interfaces
.implements Lsun/security/util/Cache$CacheVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLSessionContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SessionCacheVisitor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/util/Cache$CacheVisitor",
        "<",
        "Lsun/security/ssl/SessionId;",
        "Lsun/security/ssl/SSLSessionImpl;",
        ">;"
    }
.end annotation


# instance fields
.field ids:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lsun/security/ssl/SSLSessionContextImpl;


# direct methods
.method constructor <init>(Lsun/security/ssl/SSLSessionContextImpl;)V
    .locals 1

    iput-object p1, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lsun/security/ssl/SSLSessionContextImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getSessionIds()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<[B>;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    goto :goto_0
.end method

.method public visit(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lsun/security/ssl/SessionId;",
            "Lsun/security/ssl/SSLSessionImpl;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/Vector;-><init>(I)V

    iput-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/SessionId;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/security/ssl/SSLSessionImpl;

    iget-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->this$0:Lsun/security/ssl/SSLSessionContextImpl;

    invoke-virtual {v3, v2}, Lsun/security/ssl/SSLSessionContextImpl;->isTimedout(Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lsun/security/ssl/SSLSessionContextImpl$SessionCacheVisitor;->ids:Ljava/util/Vector;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method
