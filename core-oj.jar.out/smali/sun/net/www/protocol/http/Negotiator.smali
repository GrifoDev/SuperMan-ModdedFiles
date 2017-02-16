.class public abstract Lsun/net/www/protocol/http/Negotiator;
.super Ljava/lang/Object;
.source "Negotiator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static finest(Ljava/lang/Exception;)V
    .locals 3
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 78
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    .line 79
    .local v0, "logger":Lsun/util/logging/PlatformLogger;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NegotiateAuthentication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;
    .locals 9
    .param p0, "hci"    # Lsun/net/www/protocol/http/HttpCallerInfo;

    .prologue
    const/4 v8, 0x0

    .line 51
    :try_start_0
    const-string/jumbo v5, "sun.net.www.protocol.http.spnego.NegotiatorImpl"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 52
    .local v1, "clazz":Ljava/lang/Class;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 63
    .local v0, "c":Ljava/lang/reflect/Constructor;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/net/www/protocol/http/Negotiator;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v5

    .line 56
    .end local v0    # "c":Ljava/lang/reflect/Constructor;
    .end local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 59
    .local v3, "roe":Ljava/lang/ReflectiveOperationException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 53
    .end local v3    # "roe":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v2

    .line 54
    .local v2, "cnfe":Ljava/lang/ClassNotFoundException;
    invoke-static {v2}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    .line 55
    return-object v8

    .line 64
    .end local v2    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "c":Ljava/lang/reflect/Constructor;
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_2
    move-exception v3

    .line 65
    .restart local v3    # "roe":Ljava/lang/ReflectiveOperationException;
    invoke-static {v3}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    .line 66
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 67
    .local v4, "t":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    instance-of v5, v4, Ljava/lang/Exception;

    if-eqz v5, :cond_0

    .line 68
    nop

    nop

    .end local v4    # "t":Ljava/lang/Throwable;
    invoke-static {v4}, Lsun/net/www/protocol/http/Negotiator;->finest(Ljava/lang/Exception;)V

    .line 69
    :cond_0
    return-object v8
.end method


# virtual methods
.method public abstract firstToken()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract nextToken([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
