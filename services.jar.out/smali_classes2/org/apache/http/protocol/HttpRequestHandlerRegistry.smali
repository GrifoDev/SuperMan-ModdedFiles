.class public Lorg/apache/http/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandlerResolver;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final matcher:Lorg/apache/http/protocol/UriPatternMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/protocol/UriPatternMatcher",
            "<",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lorg/apache/http/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    return-void
.end method


# virtual methods
.method public getHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0}, Lorg/apache/http/protocol/UriPatternMatcher;->getObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;
    .locals 1

    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/protocol/HttpRequestHandler;

    return-object v0
.end method

.method public register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V
    .locals 1

    const-string/jumbo v0, "URI request pattern"

    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "Request handler"

    invoke-static {p2, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/protocol/HttpRequestHandler;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->matcher:Lorg/apache/http/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lorg/apache/http/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    return-void
.end method
