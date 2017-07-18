.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static factory:Ljava/net/URLStreamHandlerFactory; = null

.field static handlers:Ljava/util/Hashtable; = null

.field private static final protocolPathProp:Ljava/lang/String; = "java.protocol.handler.pkgs"

.field static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerLock:Ljava/lang/Object;


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field transient handler:Ljava/net/URLStreamHandler;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field transient hostAddress:Ljava/net/InetAddress;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Ljava/net/URL;->port:I

    iput v4, p0, Ljava/net/URL;->hashCode:I

    if-eqz p5, :cond_0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz p2, :cond_4

    const/16 v2, 0x3a

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    const-string/jumbo v2, "["

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-ge p3, v4, :cond_3

    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid port number :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    iput p3, p0, Ljava/net/URL;->port:I

    if-ne p3, v4, :cond_5

    move-object v2, p2

    :goto_1
    iput-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/net/Parts;

    invoke-direct {v0, p4, p2}, Ljava/net/Parts;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/Parts;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/net/Parts;->getQuery()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0}, Ljava/net/Parts;->getRef()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    if-nez p5, :cond_7

    invoke-static {p1}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object p5

    if-nez p5, :cond_7

    new-instance v2, Ljava/net/MalformedURLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    goto :goto_2

    :cond_7
    iput-object p5, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->port:I

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->hashCode:I

    move-object/from16 v19, p2

    const/4 v6, 0x0

    const/16 v18, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v21

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/net/URL;->checkSpecifyHandler(Ljava/lang/SecurityManager;)V

    :cond_0
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    :goto_0
    if-lez v17, :cond_1

    add-int/lit8 v4, v17, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_1

    add-int/lit8 v17, v17, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    move/from16 v0, v17

    if-ge v6, v0, :cond_2

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "url:"

    const/4 v5, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_3

    add-int/lit8 v6, v6, 0x4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_4

    const/4 v10, 0x1

    :cond_4
    move v15, v6

    :goto_2
    if-nez v10, :cond_5

    move/from16 v0, v17

    if-ge v15, v0, :cond_5

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v4, 0x2f

    if-eq v11, v4, :cond_5

    const/16 v4, 0x3a

    if-ne v11, v4, :cond_a

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/net/URL;->isValidProtocol(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v18, v20

    add-int/lit8 v6, v15, 0x1

    :cond_5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-eqz p1, :cond_9

    if-eqz v18, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_6
    if-nez p3, :cond_7

    move-object/from16 v0, p1

    iget-object v0, v0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    move-object/from16 p3, v0

    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v18, 0x0

    :cond_8
    if-nez v18, :cond_9

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->authority:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->host:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v4, v0, Ljava/net/URL;->port:I

    move-object/from16 v0, p0

    iput v4, v0, Ljava/net/URL;->port:I

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->file:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->path:Ljava/lang/String;

    const/16 v16, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    if-nez v4, :cond_b

    new-instance v4, Ljava/net/MalformedURLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no protocol: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v13

    throw v13

    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_b
    if-nez p3, :cond_c

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object p3

    if-nez p3, :cond_c

    new-instance v4, Ljava/net/MalformedURLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown protocol: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v12

    new-instance v14, Ljava/net/MalformedURLException;

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/net/MalformedURLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v14

    :cond_c
    :try_start_2
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    const/16 v4, 0x23

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    if-ltz v15, :cond_d

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    move/from16 v17, v15

    :cond_d
    if-eqz v16, :cond_e

    move/from16 v0, v17

    if-ne v6, v0, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->query:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    if-nez v4, :cond_e

    move-object/from16 v0, p1

    iget-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Ljava/net/URL;->ref:Ljava/lang/String;

    :cond_e
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v6, v3}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void
.end method

.method private checkSpecifyHandler(Ljava/lang/SecurityManager;)V
    .locals 1

    sget-object v0, Lsun/security/util/SecurityConstants;->SPECIFY_HANDLER_PERMISSION:Ljava/net/NetPermission;

    invoke-virtual {p1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    return-void
.end method

.method static getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 16

    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    if-nez v8, :cond_d

    const/4 v1, 0x0

    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v14, :cond_0

    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v8

    const/4 v1, 0x1

    :cond_0
    if-nez v8, :cond_3

    const-string/jumbo v14, "java.protocol.handler.pkgs"

    const-string/jumbo v15, ""

    invoke-static {v14, v15}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v12, Ljava/util/StringTokenizer;

    const-string/jumbo v14, "|"

    invoke-direct {v12, v13, v14}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-nez v8, :cond_3

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    :try_start_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".Handler"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v14, 0x1

    invoke-static {v4, v14, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v14, 0x1

    invoke-static {v4, v14, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_1

    :cond_3
    if-nez v8, :cond_4

    :try_start_3
    const-string/jumbo v14, "file"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "sun.net.www.protocol.file.Handler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_2
    sget-object v15, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v15

    const/4 v9, 0x0

    :try_start_4
    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Ljava/net/URLStreamHandler;

    move-object v9, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_9

    monitor-exit v15

    return-object v9

    :cond_5
    :try_start_5
    const-string/jumbo v14, "ftp"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string/jumbo v14, "sun.net.www.protocol.ftp.Handler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    goto :goto_2

    :cond_6
    const-string/jumbo v14, "jar"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "sun.net.www.protocol.jar.Handler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    goto :goto_2

    :cond_7
    const-string/jumbo v14, "http"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string/jumbo v14, "com.android.okhttp.HttpHandler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;

    goto :goto_2

    :cond_8
    const-string/jumbo v14, "https"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string/jumbo v14, "com.android.okhttp.HttpsHandler"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/net/URLStreamHandler;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    new-instance v14, Ljava/lang/AssertionError;

    invoke-direct {v14, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v14

    :cond_9
    if-nez v1, :cond_a

    :try_start_6
    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v14, :cond_a

    sget-object v14, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    move-object/from16 v0, p0

    invoke-interface {v14, v0}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v9

    :cond_a
    if-eqz v9, :cond_b

    move-object v8, v9

    :cond_b
    if-eqz v8, :cond_c

    sget-object v14, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_c
    monitor-exit v15

    :cond_d
    return-object v8

    :catchall_0
    move-exception v14

    monitor-exit v15

    throw v14

    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method private isValidProtocol(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v5, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_1
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method private declared-synchronized readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v5, -0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v3, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/URL;->getURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown protocol: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_0
    :try_start_1
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    :cond_1
    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    :cond_2
    iget v3, p0, Ljava/net/URL;->port:I

    if-ne v3, v5, :cond_7

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v5, :cond_3

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->host:Ljava/lang/String;

    :cond_3
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_8

    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;

    :cond_4
    :goto_2
    const/4 v3, -0x1

    iput v3, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget v3, p0, Ljava/net/URL;->port:I

    if-ne v3, v5, :cond_1

    :cond_6
    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v5, :cond_3

    iget-object v3, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Ljava/net/URL;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Ljava/net/URL;->port:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object v3, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 4

    sget-object v2, Ljava/net/URL;->streamHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Error;

    const-string/jumbo v3, "factory already defined"

    invoke-direct {v1, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/SecurityManager;->checkSetFactory()V

    :cond_1
    sget-object v1, Ljava/net/URL;->handlers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    sput-object p0, Ljava/net/URL;->factory:Ljava/net/URLStreamHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
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
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v1, p1, Ljava/net/URL;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/net/URL;

    iget-object v1, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v1, p0, v0}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v1

    return v1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    move-result v0

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    iget v0, p0, Ljava/net/URL;->port:I

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljava/net/URL;->hashCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    move-result v0

    iput v0, p0, Ljava/net/URL;->hashCode:I

    iget v0, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v0

    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "proxy can not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne p1, v3, :cond_2

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    :goto_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v3, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_1
    :goto_1
    iget-object v3, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v3, p0, v1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {p1}, Lsun/net/ApplicationProxy;->create(Ljava/net/Proxy;)Lsun/net/ApplicationProxy;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v0

    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    if-ne p3, v3, :cond_0

    :goto_0
    iput-object p2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    iput p3, p0, Ljava/net/URL;->port:I

    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Ljava/net/URL;->hashCode:I

    const/4 v1, 0x0

    iput-object v1, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    const/16 v1, 0x3f

    invoke-virtual {p4, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v3, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    iput-object p4, p0, Ljava/net/URL;->path:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    iput p3, p0, Ljava/net/URL;->port:I

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p6

    :goto_0
    iput-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    iput-object p8, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/URL;->hashCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/URL;->hostAddress:Ljava/net/InetAddress;

    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/URL;->handler:Ljava/net/URLStreamHandler;

    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
