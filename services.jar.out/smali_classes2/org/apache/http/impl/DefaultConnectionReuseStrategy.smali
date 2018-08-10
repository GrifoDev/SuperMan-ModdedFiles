.class public Lorg/apache/http/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"

# interfaces
.implements Lorg/apache/http/ConnectionReuseStrategy;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_2

    :cond_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_3

    :cond_1
    :goto_0
    return v1

    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_3
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_1

    const/16 v2, 0x130

    if-eq v0, v2, :cond_1

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected createTokenIterator(Lorg/apache/http/HeaderIterator;)Lorg/apache/http/TokenIterator;
    .locals 1

    new-instance v0, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v0, p1}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    return-object v0
.end method

.method public keepAlive(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Z
    .locals 15

    const-string/jumbo v13, "HTTP response"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v13, "HTTP context"

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v13, "http.request"

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/http/HttpRequest;

    if-nez v8, :cond_3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v12

    const-string/jumbo v13, "Transfer-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v9

    if-nez v9, :cond_5

    move-object/from16 v0, p1

    invoke-direct {p0, v8, v0}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;->canResponseHaveBody(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_1
    const-string/jumbo v13, "Connection"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    :goto_0
    invoke-interface {v5}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    :cond_2
    sget-object v13, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {v12, v13}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v13

    if-eqz v13, :cond_d

    const/4 v13, 0x0

    :goto_1
    return v13

    :cond_3
    :try_start_0
    new-instance v10, Lorg/apache/http/message/BasicTokenIterator;

    const-string/jumbo v13, "Connection"

    invoke-interface {v8, v13}, Lorg/apache/http/HttpRequest;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v13

    invoke-direct {v10, v13}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    :cond_4
    invoke-interface {v10}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v10}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "Close"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    return v13

    :catch_0
    move-exception v7

    const/4 v13, 0x0

    return v13

    :cond_5
    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "chunked"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, 0x0

    return v13

    :cond_6
    const-string/jumbo v13, "Content-Length"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v13, v2

    const/4 v14, 0x1

    if-eq v13, v14, :cond_7

    const/4 v13, 0x0

    return v13

    :cond_7
    const/4 v13, 0x0

    aget-object v1, v2, v13

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-gez v3, :cond_1

    const/4 v13, 0x0

    return v13

    :catch_1
    move-exception v4

    const/4 v13, 0x0

    return v13

    :cond_8
    const-string/jumbo v13, "Proxy-Connection"

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v5

    goto :goto_0

    :cond_9
    :try_start_2
    new-instance v10, Lorg/apache/http/message/BasicTokenIterator;

    invoke-direct {v10, v5}, Lorg/apache/http/message/BasicTokenIterator;-><init>(Lorg/apache/http/HeaderIterator;)V

    const/4 v6, 0x0

    :cond_a
    :goto_2
    invoke-interface {v10}, Lorg/apache/http/TokenIterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_b

    if-eqz v6, :cond_2

    const/4 v13, 0x1

    return v13

    :cond_b
    invoke-interface {v10}, Lorg/apache/http/TokenIterator;->nextToken()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "Close"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    const-string/jumbo v13, "Keep-Alive"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/apache/http/ParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v13

    if-eqz v13, :cond_a

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v13, 0x0

    return v13

    :catch_2
    move-exception v7

    const/4 v13, 0x0

    return v13

    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_1
.end method
