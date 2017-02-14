.class Lsun/net/www/protocol/http/NTLMAuthenticationProxy;
.super Ljava/lang/Object;
.source "NTLMAuthenticationProxy.java"


# static fields
.field private static final clazzStr:Ljava/lang/String; = "sun.net.www.protocol.http.ntlm.NTLMAuthentication"

.field private static isTrustedSite:Ljava/lang/reflect/Method; = null

.field private static final isTrustedSiteStr:Ljava/lang/String; = "isTrustedSite"

.field static final proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

.field static final supported:Z

.field private static supportsTA:Ljava/lang/reflect/Method; = null

.field private static final supportsTAStr:Ljava/lang/String; = "supportsTransparentAuth"

.field static final supportsTransparentAuth:Z


# instance fields
.field private final fiveArgCtr:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final threeArgCtr:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->tryLoadNTLMAuthentication()Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    move-result-object v0

    sput-object v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-object v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    sget-boolean v0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth()Z

    move-result v1

    :cond_0
    sput-boolean v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lsun/net/www/protocol/http/AuthenticationInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->threeArgCtr:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->fiveArgCtr:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method static finest(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NTLMAuthenticationProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    return-void
.end method

.method public static isTrustedSite(Ljava/net/URL;)Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    return v4
.end method

.method private static supportsTransparentAuth()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTA:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    return v4
.end method

.method private static tryLoadNTLMAuthentication()Lsun/net/www/protocol/http/NTLMAuthenticationProxy;
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v5, "sun.net.www.protocol.http.ntlm.NTLMAuthentication"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/net/URL;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/net/PasswordAuthentication;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-class v6, Ljava/net/PasswordAuthentication;

    const/4 v7, 0x3

    aput-object v6, v5, v7

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const-string/jumbo v5, "supportsTransparentAuth"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTA:Ljava/lang/reflect/Method;

    const-string/jumbo v5, "isTrustedSite"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/net/URL;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite:Ljava/lang/reflect/Method;

    new-instance v5, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    invoke-direct {v5, v4, v2}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;-><init>(Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    :catch_1
    move-exception v1

    invoke-static {v1}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    :cond_0
    return-object v9
.end method


# virtual methods
.method create(ZLjava/lang/String;ILjava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->fiveArgCtr:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method create(ZLjava/net/URL;Ljava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5

    :try_start_0
    iget-object v1, p0, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->threeArgCtr:Ljava/lang/reflect/Constructor;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/protocol/http/AuthenticationInfo;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->finest(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return-object v1
.end method
