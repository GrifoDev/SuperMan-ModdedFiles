.class public Lsun/net/www/protocol/http/HttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;,
        Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    }
.end annotation


# static fields
.field private static final synthetic -sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I = null

.field private static final EXCLUDE_HEADERS:[Ljava/lang/String;

.field private static final EXCLUDE_HEADERS2:[Ljava/lang/String;

.field static HTTP_CONNECT:Ljava/lang/String; = null

.field private static final RETRY_MSG1:Ljava/lang/String; = "cannot retry due to proxy authentication, in streaming mode"

.field private static final RETRY_MSG2:Ljava/lang/String; = "cannot retry due to server authentication, in streaming mode"

.field private static final RETRY_MSG3:Ljava/lang/String; = "cannot retry due to redirection, in streaming mode"

.field private static final SET_COOKIE:Ljava/lang/String; = "set-cookie"

.field private static final SET_COOKIE2:Ljava/lang/String; = "set-cookie2"

.field static final acceptString:Ljava/lang/String; = "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

.field private static final allowRestrictedHeaders:Z

.field private static bufSize4ES:I = 0x0

.field private static defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator; = null

.field static final defaultmaxRedirects:I = 0x14

.field private static enableESBuffer:Z = false

.field static final httpVersion:Ljava/lang/String; = "HTTP/1.1"

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field static final maxRedirects:I

.field private static final restrictedHeaderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final restrictedHeaders:[Ljava/lang/String;

.field private static timeout4ESBuffer:I

.field public static final userAgent:Ljava/lang/String;

.field static final validateProxy:Z

.field static final validateServer:Z

.field static final version:Ljava/lang/String;


# instance fields
.field private authObj:Ljava/lang/Object;

.field private cacheHandler:Ljava/net/ResponseCache;

.field private cachedHeaders:Lsun/net/www/MessageHeader;

.field private cachedInputStream:Ljava/io/InputStream;

.field protected cachedResponse:Ljava/net/CacheResponse;

.field cdata:[B

.field private connectTimeout:I

.field private cookieHandler:Ljava/net/CookieHandler;

.field currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

.field currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

.field digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

.field private doingNTLM2ndStage:Z

.field private doingNTLMp2ndStage:Z

.field domain:Ljava/lang/String;

.field private errorStream:Ljava/io/InputStream;

.field private failedOnce:Z

.field private filteredHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field protected handler:Lsun/net/www/protocol/http/Handler;

.field protected http:Lsun/net/www/http/HttpClient;

.field private inputStream:Ljava/io/InputStream;

.field protected instProxy:Ljava/net/Proxy;

.field isUserProxyAuth:Z

.field isUserServerAuth:Z

.field needToCheck:Z

.field protected pi:Lsun/net/ProgressSource;

.field private poster:Lsun/net/www/http/PosterOutputStream;

.field proxyAuthKey:Ljava/lang/String;

.field protected ps:Ljava/io/PrintStream;

.field private readTimeout:I

.field private rememberedException:Ljava/lang/Exception;

.field requestURI:Ljava/lang/String;

.field private requests:Lsun/net/www/MessageHeader;

.field private responses:Lsun/net/www/MessageHeader;

.field private reuseClient:Lsun/net/www/http/HttpClient;

.field serverAuthKey:Ljava/lang/String;

.field private setRequests:Z

.field private setUserCookies:Z

.field private strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

.field private tryTransparentNTLMProxy:Z

.field private tryTransparentNTLMServer:Z

.field private tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

.field private userCookies:Ljava/lang/String;

.field private userCookies2:Ljava/lang/String;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    return v0
.end method

.method static synthetic -get1()Lsun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    return v0
.end method

.method private static synthetic -getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I
    .locals 3

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lsun/net/www/protocol/http/AuthScheme;->values()[Lsun/net/www/protocol/http/AuthScheme;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->-sun-net-www-protocol-http-AuthSchemeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lsun/net/www/protocol/http/HttpURLConnection;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "CONNECT"

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    sput-boolean v5, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "Access-Control-Request-Headers"

    aput-object v3, v2, v5

    const-string/jumbo v3, "Access-Control-Request-Method"

    aput-object v3, v2, v6

    const-string/jumbo v3, "Connection"

    aput-object v3, v2, v7

    const-string/jumbo v3, "Content-Length"

    aput-object v3, v2, v8

    const-string/jumbo v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v9

    const-string/jumbo v3, "Host"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    const-string/jumbo v3, "Keep-Alive"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    const-string/jumbo v3, "Origin"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    const-string/jumbo v3, "Trailer"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const-string/jumbo v3, "Transfer-Encoding"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    const-string/jumbo v3, "Upgrade"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    const-string/jumbo v3, "Via"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    new-instance v2, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v3, "http.maxRedirects"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "java.version"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "http.agent"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Java/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    new-instance v2, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v3, "http.auth.digest.validateProxy"

    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    new-instance v2, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v3, "http.auth.digest.validateServer"

    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    new-instance v2, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v3, "sun.net.http.errorstream.enableBuffering"

    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    new-instance v2, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v3, "sun.net.http.errorstream.timeout"

    const/16 v4, 0x12c

    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    if-gtz v2, :cond_0

    const/16 v2, 0x12c

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    :cond_0
    new-instance v2, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v3, "sun.net.http.errorstream.bufferSize"

    const/16 v4, 0x1000

    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    if-gtz v2, :cond_1

    const/16 v2, 0x1000

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    :cond_1
    new-instance v2, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v3, "sun.net.http.allowRestrictedHeaders"

    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    sget-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Java/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v3, "Proxy-Authorization"

    aput-object v3, v2, v5

    const-string/jumbo v3, "Authorization"

    aput-object v3, v2, v6

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "Proxy-Authorization"

    aput-object v3, v2, v5

    const-string/jumbo v3, "Authorization"

    aput-object v3, v2, v6

    const-string/jumbo v3, "Cookie"

    aput-object v3, v2, v7

    const-string/jumbo v3, "Cookie2"

    aput-object v3, v2, v8

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS2:[Ljava/lang/String;

    const-string/jumbo v2, "sun.net.www.protocol.http.HttpURLConnection"

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p2, p3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 1

    new-instance v0, Lsun/net/www/protocol/http/Handler;

    invoke-direct {v0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    new-instance v1, Lsun/net/www/MessageHeader;

    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v1, Lsun/net/www/MessageHeader;

    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->handler:Lsun/net/www/protocol/http/Handler;

    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    instance-of v1, v1, Lsun/net/ApplicationProxy;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$3;

    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$3;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ResponseCache;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    return-void

    :cond_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$2;

    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$2;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/CookieHandler;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    return-void
.end method

.method private checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal character(s) in message header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    :goto_0
    if-eq v1, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    :cond_2
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal character(s) in message header value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void
.end method

.method private checkResponseCredentials(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "Proxy-Authentication-Info"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    :cond_2
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "Authentication-Info"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-nez v3, :cond_5

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-nez v3, :cond_5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    iput-boolean v5, p0, Ljava/net/URLConnection;->connected:Z

    throw v1
.end method

.method private checkReuseConnection()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->reuse:Z

    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    return v2

    :cond_1
    return v3
.end method

.method static connectRequestURI(Ljava/net/URL;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    goto :goto_0
.end method

.method private disconnectInternal()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    :cond_1
    return-void
.end method

.method private disconnectWeb()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    goto :goto_0
.end method

.method private expect100Continue()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7}, Lsun/net/NetworkClient;->getReadTimeout()I

    move-result v2

    const/4 v0, 0x0

    const/4 v6, 0x0

    if-gtz v2, :cond_0

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v7, v8, v9, p0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v6, :cond_3

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v7, v12}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v7, "HTTP/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    :try_start_1
    array-length v7, v4

    if-le v7, v10, :cond_1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget v7, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_3

    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "Server rejected operation"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v5

    if-nez v0, :cond_2

    throw v5

    :cond_2
    const/4 v6, 0x1

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7, v10}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7, v2}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v7}, Lsun/net/www/MessageHeader;->reset()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method private filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    return-object v5

    :cond_0
    const-string/jumbo v5, "set-cookie"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "set-cookie2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_1
    iget-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v5, :cond_2

    return-object p2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    invoke-static {p2, v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    invoke-virtual {v0}, Ljava/net/HttpCookie;->isHttpOnly()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v3, :cond_4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v5, v0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, ""

    :goto_1
    return-object v5

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    return-object p2
.end method

.method private followRedirect()Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    return v9

    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_1

    const/16 v9, 0x133

    if-le v8, v9, :cond_2

    :cond_1
    const/4 v9, 0x0

    return v9

    :cond_2
    const/16 v9, 0x132

    if-eq v8, v9, :cond_1

    const/16 v9, 0x130

    if-eq v8, v9, :cond_1

    const-string/jumbo v9, "Location"

    invoke-virtual {p0, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v9, 0x0

    return v9

    :cond_3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    return v9

    :catch_0
    move-exception v3

    new-instance v2, Ljava/net/URL;

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-direct {v2, v9, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/net/HttpRetryException;

    const-string/jumbo v10, "cannot retry due to redirection, in streaming mode"

    invoke-direct {v9, v10, v8, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v9

    :cond_5
    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v9

    if-eqz v9, :cond_6

    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Redirected from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_6
    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const/16 v9, 0x131

    if-ne v8, v9, :cond_9

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v6

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v7, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    :cond_7
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v9, v5, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HTTP/1.1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Ljava/net/URLConnection;->connected:Z

    :cond_8
    :goto_0
    const/4 v9, 0x1

    return v9

    :cond_9
    iput-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v10, "POST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v9, "http.strictPostRedirect"

    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_a
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    :cond_b
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "HTTP/1.1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v9, -0x1

    if-eq v4, v9, :cond_c

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getDefaultPort()I

    move-result v9

    if-eq v4, v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v10, "Host"

    invoke-virtual {v9, v10, v0}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const/16 v9, 0x133

    if-eq v8, v9, :cond_a

    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    const-string/jumbo v9, "GET"

    invoke-virtual {p0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    goto/16 :goto_0
.end method

.method private getChainedException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 5

    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$6;

    invoke-direct {v3, p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$6;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/IOException;[Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    return-object p1
.end method

.method private getFilteredHeaderFields()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    return-object v10

    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v4

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    return-object v10
.end method

.method public static getHttpLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 39

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v5

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v35

    const-string/jumbo v6, "realm"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    move-result-object v8

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v6, "basic"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    :cond_0
    :goto_0
    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    :cond_1
    move-object/from16 v0, v31

    invoke-static {v3, v5, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuthKey(Ljava/lang/String;ILjava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v6}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v37

    if-nez v37, :cond_6

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    packed-switch v6, :pswitch_data_0

    :goto_1
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v10, "should not reach here"

    invoke-direct {v6, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    :cond_2
    const-string/jumbo v6, "digest"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "ntlm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v6, "Kerberos"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v6, "Negotiate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x0

    move-object/from16 v32, v3

    :try_start_0
    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lsun/net/www/protocol/http/HttpURLConnection$7;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    const-string/jumbo v6, "http"

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    if-eqz v14, :cond_12

    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    const/4 v10, 0x1

    move-object v11, v3

    move v12, v5

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V

    :goto_3
    move-object/from16 v37, v9

    :cond_6
    :goto_4
    if-nez v37, :cond_d

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    if-eqz v6, :cond_d

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    invoke-interface {v6, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    :try_start_1
    new-instance v38, Ljava/net/URL;

    const-string/jumbo v6, "http"

    const-string/jumbo v10, "/"

    move-object/from16 v0, v38

    invoke-direct {v0, v6, v3, v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    move-object/from16 v0, v38

    invoke-interface {v6, v0, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_f

    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    const/16 v16, 0x1

    move-object v15, v9

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    if-eqz v9, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v9, 0x0

    :cond_7
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v10, 0x190

    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Proxy Authentication for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v11, " returned "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_6
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_8
    return-object v9

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    sget-object v22, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    const/16 v16, 0x0

    move-object v15, v3

    move/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    if-eqz v14, :cond_11

    new-instance v22, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-direct/range {v22 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    const/16 v16, 0x1

    move-object v15, v9

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    :goto_7
    move-object/from16 v37, v9

    goto/16 :goto_4

    :pswitch_2
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-eqz v6, :cond_9

    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    :cond_9
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-eqz v6, :cond_b

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v10, "Trying Transparent NTLM authentication"

    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-nez v6, :cond_c

    if-eqz v14, :cond_c

    :cond_a
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v3, v5, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/lang/String;ILjava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    :goto_9
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    :goto_a
    move-object/from16 v37, v9

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v29, v0

    sget-object v30, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    const/16 v24, 0x0

    move-object/from16 v23, v3

    move/from16 v25, v5

    move-object/from16 v28, v8

    invoke-static/range {v23 .. v30}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    goto :goto_8

    :cond_c
    move-object/from16 v9, v37

    goto :goto_9

    :pswitch_3
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v10

    const-string/jumbo v11, "Negotiate"

    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    move-object/from16 v37, v9

    goto/16 :goto_4

    :pswitch_4
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v10

    const-string/jumbo v11, "Kerberos"

    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    move-object/from16 v37, v9

    goto/16 :goto_4

    :pswitch_5
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unknown/Unsupported authentication scheme: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v9, v37

    goto/16 :goto_5

    :catch_0
    move-exception v33

    move-object/from16 v9, v37

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v6, "null"

    goto/16 :goto_6

    :catch_1
    move-exception v34

    goto/16 :goto_2

    :cond_f
    move-object/from16 v9, v37

    goto/16 :goto_5

    :cond_10
    move-object/from16 v9, v37

    goto/16 :goto_a

    :cond_11
    move-object/from16 v9, v37

    goto/16 :goto_7

    :cond_12
    move-object/from16 v9, v37

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method private getServerAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 31

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v27

    const-string/jumbo v3, "realm"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    move-result-object v8

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    const-string/jumbo v3, "basic"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    :cond_0
    :goto_0
    const-string/jumbo v3, "domain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string/jumbo v7, ""

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, v24

    invoke-static {v3, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuthKey(Ljava/net/URL;Ljava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v3}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v29

    const/4 v4, 0x0

    if-nez v29, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v5

    const/4 v3, -0x1

    if-ne v5, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getDefaultPort()I

    move-result v5

    :cond_3
    if-nez v29, :cond_10

    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    :goto_2
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v6, "should not reach here"

    invoke-direct {v3, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_4
    const-string/jumbo v3, "digest"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    goto :goto_0

    :cond_5
    const-string/jumbo v3, "ntlm"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "Kerberos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "Negotiate"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto/16 :goto_0

    :pswitch_0
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v6

    const-string/jumbo v10, "Kerberos"

    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    :goto_3
    if-nez v9, :cond_8

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    if-eqz v3, :cond_8

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    invoke-interface {v3, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-interface {v3, v6, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_8

    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-direct {v9, v6, v3, v7, v0}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v9, 0x0

    :cond_9
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v6, 0x190

    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Server Authentication for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v10, " returned "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    :cond_a
    return-object v9

    :pswitch_1
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v6

    const-string/jumbo v10, "Negotiate"

    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    if-eqz v14, :cond_10

    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const/4 v6, 0x0

    invoke-direct {v9, v6, v3, v7, v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V

    goto/16 :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    if-eqz v14, :cond_10

    new-instance v3, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-direct {v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const/4 v10, 0x0

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v15}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    goto/16 :goto_3

    :pswitch_4
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    if-eqz v3, :cond_10

    :try_start_1
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v6, "/"

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_b

    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_b

    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite(Ljava/net/URL;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_d

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v6, "Trying Transparent NTLM authentication"

    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-nez v3, :cond_e

    if-eqz v14, :cond_e

    :cond_c
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v6, v0, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/net/URL;Ljava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    goto/16 :goto_3

    :catch_0
    move-exception v25

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v30, v0

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    sget-object v22, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v20, v8

    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    goto :goto_6

    :cond_e
    move-object/from16 v9, v29

    goto :goto_7

    :pswitch_5
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown/Unsupported authentication scheme: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v3, "null"

    goto/16 :goto_4

    :catch_1
    move-exception v26

    goto/16 :goto_1

    :cond_10
    move-object/from16 v9, v29

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return v4

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    new-array v2, v3, [Z

    aput-boolean v4, v2, v4

    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$4;

    invoke-direct {v3, v0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Z)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    aget-boolean v3, v2, v4

    return v3
.end method

.method private isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    const-string/jumbo v0, "sec-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private mapToMessageHeader(Ljava/util/Map;)Lsun/net/www/MessageHeader;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lsun/net/www/MessageHeader;"
        }
    .end annotation

    new-instance v2, Lsun/net/www/MessageHeader;

    invoke-direct {v2}, Lsun/net/www/MessageHeader;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_3

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public static openConnectionCheckRedirects(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    :cond_0
    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v8, :cond_1

    move-object v8, p0

    nop

    nop

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v4, 0x0

    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v8, :cond_5

    move-object v1, p0

    nop

    nop

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v8, 0x12c

    if-lt v6, v8, :cond_5

    const/16 v8, 0x133

    if-gt v6, v8, :cond_5

    const/16 v8, 0x132

    if-eq v6, v8, :cond_5

    const/16 v8, 0x130

    if-eq v6, v8, :cond_5

    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    const-string/jumbo v8, "Location"

    invoke-virtual {v1, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    if-eqz v3, :cond_2

    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnect()V

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v9

    if-eq v8, v9, :cond_4

    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "illegal URL redirect"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    invoke-static {v0, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x5

    if-ge v5, v8, :cond_3

    const/4 v4, 0x1

    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    add-int/lit8 v5, v5, 0x1

    :cond_5
    if-nez v4, :cond_0

    return-object v2
.end method

.method private static privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 9

    new-instance v0, Lsun/net/www/protocol/http/HttpURLConnection$1;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lsun/net/www/protocol/http/HttpURLConnection$1;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/Authenticator$RequestorType;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/PasswordAuthentication;

    return-object v0
.end method

.method private reset()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v9}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v10, "HEAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :try_start_0
    instance-of v9, v5, Lsun/net/www/http/ChunkedInputStream;

    if-nez v9, :cond_0

    instance-of v9, v5, Lsun/net/www/MeteredStream;

    if-eqz v9, :cond_3

    :cond_0
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-gtz v9, :cond_0

    :cond_1
    :try_start_1
    instance-of v9, v5, Lsun/net/www/MeteredStream;

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Lsun/net/www/MeteredStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_0
    iput v13, p0, Ljava/net/HttpURLConnection;->responseCode:I

    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    iput-boolean v12, p0, Ljava/net/URLConnection;->connected:Z

    return-void

    :cond_3
    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    :try_start_2
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v10, "Content-Length"

    invoke-virtual {v9, v10}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v0

    :cond_4
    :goto_1
    const-wide/16 v6, 0x0

    :goto_2
    cmp-long v9, v6, v0

    if-gez v9, :cond_1

    :try_start_4
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v8

    if-eq v8, v13, :cond_1

    int-to-long v10, v8

    add-long/2addr v6, v10

    goto :goto_2

    :catch_0
    move-exception v4

    const-wide/16 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-boolean v12, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    iput-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    return-void

    :catch_2
    move-exception v3

    goto :goto_0
.end method

.method private resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    if-eq v3, v4, :cond_3

    invoke-virtual {p2}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, p1, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_1

    move-object v0, p1

    nop

    nop

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    :cond_3
    invoke-direct {p0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object p1

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    return-object p1
.end method

.method private sendCONNECTRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v4}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "HTTP/1.1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "User-Agent"

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Host"

    invoke-virtual {v2, v3, v0}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Accept"

    const-string/jumbo v4, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v2}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Proxy-Connection"

    const-string/jumbo v4, "keep-alive"

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-direct {p0, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v2, v3, v5}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    return-void
.end method

.method private setCookieHeader()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v11, :cond_a

    monitor-enter p0

    :try_start_0
    iget-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    :cond_0
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v11}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v8

    if-eqz v8, :cond_8

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "CookieHandler request for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_3
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v13, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v11

    if-eqz v11, :cond_4

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cookies retrieved: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v11, "Cookie"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    const-string/jumbo v11, "Cookie2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "; "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    :cond_7
    :try_start_1
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x0

    invoke-virtual {v0, v13, v12}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v6, v12}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_8
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-eqz v11, :cond_9

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_b

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v14, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_c

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v14, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_3
    return-void

    :cond_b
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static setDefaultAuthenticator(Lsun/net/www/protocol/http/HttpAuthenticator;)V
    .locals 0

    sput-object p0, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    return-void
.end method

.method private setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v4

    invoke-static {v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;I)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v1, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_2

    move-object v0, v1

    nop

    nop

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private writeRequests()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v10

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-eq v10, v11, :cond_0

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-direct {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    :cond_0
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    if-nez v10, :cond_a

    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v10, :cond_1

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "HTTP/1.1"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Cache-Control"

    const-string/jumbo v12, "no-cache"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Pragma"

    const-string/jumbo v12, "no-cache"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "User-Agent"

    sget-object v12, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v6

    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getDefaultPort()I

    move-result v10

    if-eq v6, v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Host"

    invoke-virtual {v10, v11, v3}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Accept"

    const-string/jumbo v12, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v10

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-eq v10, v11, :cond_c

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Proxy-Connection"

    const-string/jumbo v12, "keep-alive"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "If-Modified-Since"

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v10}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v13, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    :cond_5
    iget-object v10, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v11, "PUT"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    if-nez v10, :cond_6

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-type"

    const-string/jumbo v12, "application/x-www-form-urlencoded"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v10

    if-eqz v10, :cond_10

    iget v10, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    const-string/jumbo v12, "chunked"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_8
    :goto_1
    if-nez v0, :cond_9

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v11, 0x384

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v11, "use streaming mode for chunked encoding"

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    :cond_9
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    :cond_a
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v11, 0x1f4

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v10

    if-eqz v10, :cond_b

    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_b
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->checkError()Z

    move-result v10

    if-eqz v10, :cond_12

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v7

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v8

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-eqz v10, :cond_11

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Error writing to server"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Connection"

    const-string/jumbo v12, "keep-alive"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Connection"

    const-string/jumbo v12, "close"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-wide v10, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_f

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-Length"

    iget-wide v12, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_f
    iget v10, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-Length"

    iget v12, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    if-eqz v10, :cond_8

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    monitor-enter v11

    :try_start_0
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {v10}, Lsun/net/www/http/PosterOutputStream;->close()V

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Content-Length"

    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    goto/16 :goto_1

    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    :cond_11
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-eqz v7, :cond_13

    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v10, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    :goto_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Ljava/io/PrintStream;

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z

    new-instance v10, Lsun/net/www/MessageHeader;

    invoke-direct {v10}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const/4 v10, 0x0

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    :cond_12
    return-void

    :cond_13
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;)V

    goto :goto_2
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public authObj()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    return-object v0
.end method

.method public authObj(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->plainConnect()V

    return-void
.end method

.method public disconnect()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v3}, Lsun/net/ProgressSource;->finishTracking()V

    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    :cond_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_4

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v2

    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeIdleConnection()V

    :cond_1
    :goto_1
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/net/URLConnection;->connected:Z

    :cond_2
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->reset()V

    :cond_3
    return-void

    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/net/www/http/HttpClient;->setDoNotRetry(Z)V

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->closeServer()V

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public declared-synchronized doTunneling()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    const/4 v13, 0x0

    :try_start_0
    const-string/jumbo v16, ""

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    new-instance v18, Lsun/net/www/MessageHeader;

    invoke-direct/range {v18 .. v18}, Lsun/net/www/MessageHeader;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v6, 0x0

    :try_start_1
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    :cond_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v10, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->sendCONNECTRequest()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v18

    if-eqz v18, :cond_2

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v18

    if-eqz v18, :cond_3

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v19, ">>>> Headers are filtered"

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v16

    new-instance v15, Ljava/util/StringTokenizer;

    invoke-direct/range {v15 .. v16}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/16 v18, 0x197

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "Negotiate"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    const-string/jumbo v18, "Kerberos"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    :cond_5
    if-nez v6, :cond_9

    const/4 v6, 0x1

    :cond_6
    :goto_0
    new-instance v4, Lsun/net/www/protocol/http/AuthenticationHeader;

    const-string/jumbo v18, "Proxy-Authenticate"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    new-instance v20, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v23

    invoke-direct/range {v20 .. v23}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2, v5}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v8

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    add-int/lit8 v13, v13, 0x1

    :goto_1
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    move/from16 v0, v18

    if-lt v13, v0, :cond_0

    :goto_2
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v12, v0, :cond_f

    :cond_7
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Unable to tunnel through proxy. Proxy returns \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v18

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_8
    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18

    :cond_9
    const/4 v5, 0x1

    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1, v11}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "Authentication failure"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto/16 :goto_1

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    :cond_d
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v12, v0, :cond_e

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    goto/16 :goto_2

    :cond_e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void
.end method

.method public getConnectTimeout()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    goto :goto_0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v2, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v2, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderFieldKey(I)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getFilteredHeaderFields()Ljava/util/Map;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ljava/net/URLConnection;->doInput:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/net/ProtocolException;

    const-string/jumbo v8, "Cannot read from URLConnection if doInput=false (call setDoInput(true))"

    invoke-direct {v5, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    check-cast v5, Ljava/io/IOException;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->getChainedException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->writtenOK()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete output stream"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    const/16 v34, 0x0

    const/16 v35, 0x0

    const-wide/16 v16, -0x1

    const/16 v36, 0x0

    const/16 v32, 0x0

    const/16 v38, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_9

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserServerAuth:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    const/4 v8, -0x1

    if-eq v5, v8, :cond_a

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v39, v38

    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit p0

    return-object v5

    :cond_9
    const/4 v5, 0x0

    goto :goto_0

    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    :cond_b
    :try_start_5
    invoke-static {}, Lsun/net/ProgressMonitor;->getDefault()Lsun/net/ProgressMonitor;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v5, v8, v10}, Lsun/net/ProgressMonitor;->shouldMeterInput(Ljava/net/URL;Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    new-instance v5, Lsun/net/ProgressSource;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v5}, Lsun/net/ProgressSource;->beginTracking()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-nez v5, :cond_d

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    move-object/from16 v0, p0

    invoke-virtual {v5, v8, v10, v0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x1f4

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "WWW-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v14

    if-nez v13, :cond_f

    if-eqz v14, :cond_10

    :cond_f
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x1f4

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_10

    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v8, ">>>> Headers are filtered"

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v35

    const/4 v5, -0x1

    move/from16 v0, v35

    if-ne v0, v5, :cond_13

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid Http response"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception v21

    move-object/from16 v38, v39

    :goto_3
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_11

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_12
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_13
    const/16 v5, 0x197

    move/from16 v0, v35

    if-ne v0, v5, :cond_1f

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v5, Ljava/net/HttpRetryException;

    const-string/jumbo v8, "cannot retry due to proxy authentication, in streaming mode"

    const/16 v10, 0x197

    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v19

    move-object/from16 v38, v39

    :goto_5
    :try_start_9
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Transfer-Encoding"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v5

    if-eqz v5, :cond_15

    sget-boolean v5, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    if-eqz v5, :cond_15

    const-wide/16 v46, 0x0

    cmp-long v5, v16, v46

    if-gtz v5, :cond_14

    if-eqz v40, :cond_15

    const-string/jumbo v5, "chunked"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-wide/from16 v0, v16

    invoke-static {v5, v0, v1, v8}, Lsun/net/www/protocol/http/HttpURLConnection$ErrorStream;->getErrorStream(Ljava/io/InputStream;JLsun/net/www/http/HttpClient;)Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    :cond_15
    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_16
    const/16 v18, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v26

    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v5, "Negotiate"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string/jumbo v5, "Kerberos"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    :cond_18
    if-nez v25, :cond_1a

    const/16 v25, 0x1

    :cond_19
    :goto_6
    new-instance v12, Lsun/net/www/protocol/http/AuthenticationHeader;

    const-string/jumbo v5, "Proxy-Authenticate"

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v47

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v10, v0, v1, v2}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    move/from16 v0, v18

    invoke-direct {v12, v5, v8, v10, v0}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v32

    if-eqz v32, :cond_20

    add-int/lit8 v34, v34, 0x1

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v38, v39

    :goto_7
    :try_start_b
    sget v5, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v0, v34

    if-ge v0, v5, :cond_45

    move-object/from16 v39, v38

    goto/16 :goto_2

    :cond_1a
    const/16 v18, 0x1

    const/4 v5, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    const/16 v32, 0x0

    goto :goto_6

    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    invoke-virtual {v12}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v5

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :catchall_2
    move-exception v5

    move-object/from16 v38, v39

    goto/16 :goto_4

    :cond_1c
    if-eqz v36, :cond_1d

    if-eqz v39, :cond_1d

    invoke-virtual/range {v39 .. v39}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v5

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    move-object/from16 v38, v39

    goto :goto_7

    :cond_1e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1f
    const/16 v25, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    if-nez v5, :cond_20

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    :cond_20
    if-eqz v32, :cond_21

    invoke-virtual/range {v32 .. v32}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    :cond_21
    const/16 v5, 0x191

    move/from16 v0, v35

    if-ne v0, v5, :cond_2b

    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    new-instance v5, Ljava/net/HttpRetryException;

    const-string/jumbo v8, "cannot retry due to server authentication, in streaming mode"

    const/16 v10, 0x191

    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5

    :cond_22
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "WWW-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v26

    :cond_23
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    const-string/jumbo v5, "Negotiate"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string/jumbo v5, "Kerberos"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    :cond_24
    if-nez v24, :cond_26

    const/16 v24, 0x1

    :cond_25
    :goto_8
    new-instance v38, Lsun/net/www/protocol/http/AuthenticationHeader;

    const-string/jumbo v5, "WWW-Authenticate"

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-direct {v10, v0}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;)V

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-direct {v0, v5, v8, v10, v1}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-virtual/range {v38 .. v38}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    if-nez v5, :cond_29

    if-eqz v36, :cond_28

    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    move-result-object v5

    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    if-eq v5, v8, :cond_28

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    add-int/lit8 v34, v34, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v10, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_7

    :catch_2
    move-exception v21

    goto/16 :goto_3

    :cond_26
    const/16 v18, 0x1

    const/4 v5, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v36, 0x0

    goto :goto_8

    :cond_27
    :try_start_f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->getServerAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-eqz v36, :cond_2c

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    add-int/lit8 v34, v34, 0x1

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    :catch_3
    move-exception v19

    goto/16 :goto_5

    :cond_29
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    const/4 v5, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    :cond_2b
    move-object/from16 v38, v39

    :cond_2c
    if-eqz v36, :cond_31

    move-object/from16 v0, v36

    instance-of v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    if-nez v5, :cond_34

    :cond_2d
    move-object/from16 v0, v36

    instance-of v5, v0, Lsun/net/www/protocol/http/BasicAuthentication;

    if-eqz v5, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/protocol/http/AuthenticationInfo;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v36

    iget-object v0, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v5, v8, :cond_2f

    :cond_2e
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    :cond_2f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsun/net/www/protocol/http/BasicAuthentication;

    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    move-object/from16 v0, v28

    iput-object v0, v11, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    move-object/from16 v36, v11

    :cond_30
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    :cond_31
    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserServerAuth:Z

    if-nez v5, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    if-nez v5, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    :cond_33
    const/16 v5, 0xc8

    move/from16 v0, v35

    if-ne v0, v5, :cond_35

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->followRedirect()Z

    move-result v5

    if-eqz v5, :cond_36

    add-int/lit8 v34, v34, 0x1

    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    :cond_34
    move-object/from16 v0, v36

    nop

    nop

    move-object/from16 v37, v0

    new-instance v41, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    const-string/jumbo v8, " "

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v37

    iget-object v7, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v9, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    move-object/from16 v0, v37

    iget-object v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    :goto_a
    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v31

    :try_start_10
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, v31

    invoke-direct {v6, v5, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    new-instance v4, Lsun/net/www/protocol/http/DigestAuthentication;

    const-string/jumbo v8, "Digest"

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v10}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_a

    :catch_4
    move-exception v20

    goto :goto_a

    :cond_35
    const/4 v5, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_9

    :cond_36
    :try_start_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "content-length"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result-wide v16

    :goto_b
    :try_start_13
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v8, "HEAD"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_37

    const-wide/16 v46, 0x0

    cmp-long v5, v16, v46

    if-nez v5, :cond_3f

    :cond_37
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v5, :cond_38

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v5}, Lsun/net/ProgressSource;->finishTracking()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->finished()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    new-instance v5, Lsun/net/www/protocol/http/EmptyInputStream;

    invoke-direct {v5}, Lsun/net/www/protocol/http/EmptyInputStream;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Ljava/net/URLConnection;->connected:Z

    :cond_39
    const/16 v5, 0xc8

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    const/16 v5, 0xcb

    move/from16 v0, v35

    if-ne v0, v5, :cond_40

    :cond_3a
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    if-eqz v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v5}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v43

    if-eqz v43, :cond_3c

    move-object/from16 v42, p0

    const-string/jumbo v5, "https"

    invoke-virtual/range {v43 .. v43}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    move-result v5

    if-eqz v5, :cond_3b

    :try_start_14
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v8, "httpsURLConnection"

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/URLConnection;

    move-object/from16 v42, v0
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    :cond_3b
    :goto_e
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v15

    if-eqz v15, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5, v15}, Lsun/net/www/http/HttpClient;->setCacheRequest(Ljava/net/CacheRequest;)V

    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v15}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    instance-of v5, v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    if-nez v5, :cond_3d

    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    :cond_3d
    const/16 v5, 0x190

    move/from16 v0, v35

    if-lt v0, v5, :cond_42

    const/16 v5, 0x194

    move/from16 v0, v35

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x19a

    move/from16 v0, v35

    if-ne v0, v5, :cond_41

    :cond_3e
    new-instance v5, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3f
    const/16 v5, 0x130

    move/from16 v0, v35

    if-eq v0, v5, :cond_37

    const/16 v5, 0xcc

    move/from16 v0, v35

    if-ne v0, v5, :cond_39

    goto/16 :goto_c

    :cond_40
    const/16 v5, 0xce

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x12c

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x12d

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    const/16 v5, 0x19a

    move/from16 v0, v35

    if-ne v0, v5, :cond_3c

    goto/16 :goto_d

    :cond_41
    new-instance v5, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Server returned HTTP response code: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v35

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " for URL: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_43

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    :cond_43
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_44

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_44
    monitor-exit p0

    return-object v5

    :cond_45
    :try_start_17
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Server redirected too many  times ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v34

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :catch_5
    move-exception v23

    goto/16 :goto_e

    :catch_6
    move-exception v29

    goto/16 :goto_e

    :catch_7
    move-exception v22

    goto/16 :goto_b
.end method

.method getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p0}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4, p0}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;IZLsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getOutputStream()Ljava/io/OutputStream;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v12, -0x1

    const/4 v10, -0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v8, p0, Ljava/net/URLConnection;->doOutput:Z

    if-nez v8, :cond_0

    new-instance v8, Ljava/net/ProtocolException;

    const-string/jumbo v9, "cannot write to a URLConnection if doOutput=false - call setDoOutput(true)"

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    :try_start_2
    iget-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "POST"

    iput-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    :cond_1
    const-string/jumbo v8, "POST"

    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "PUT"

    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_4

    new-instance v8, Ljava/net/ProtocolException;

    const-string/jumbo v9, "Cannot write output after reading input."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_1
    move-exception v2

    :try_start_3
    iget v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    iput v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :try_start_4
    const-string/jumbo v8, "http"

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HTTP method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " doesn\'t support output"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :try_start_6
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    :cond_5
    const/4 v3, 0x0

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v9, "Expect"

    invoke-virtual {v8, v9}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "100-Continue"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    const/4 v3, 0x1

    :cond_6
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v8, :cond_7

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    :cond_7
    if-eqz v3, :cond_8

    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->expect100Continue()V

    :cond_8
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v8}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    check-cast v8, Ljava/io/PrintStream;

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v8, :cond_9

    iget v8, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-eq v8, v10, :cond_a

    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    new-instance v9, Lsun/net/www/http/ChunkedOutputStream;

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    iget v11, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    invoke-direct {v9, v10, v11}, Lsun/net/www/http/ChunkedOutputStream;-><init>(Ljava/io/PrintStream;I)V

    const-wide/16 v10, -0x1

    invoke-direct {v8, p0, v9, v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    :cond_9
    :goto_0
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v8

    :cond_a
    const-wide/16 v6, 0x0

    :try_start_7
    iget-wide v8, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_c

    iget-wide v6, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    :cond_b
    :goto_1
    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-direct {v8, p0, v9, v6, v7}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    goto :goto_0

    :cond_c
    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-eq v8, v10, :cond_b

    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    int-to-long v6, v8

    goto :goto_1

    :cond_d
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    if-nez v8, :cond_e

    new-instance v8, Lsun/net/www/http/PosterOutputStream;

    invoke-direct {v8}, Lsun/net/www/http/PosterOutputStream;-><init>()V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    :cond_e
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v8
.end method

.method public getReadTimeout()I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    goto :goto_0
.end method

.method public declared-synchronized getRequestProperties()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Already connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v1, :cond_4

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, "Cookie"

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "Cookie2"

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS2:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsun/net/www/MessageHeader;->filterAndAddHeaders([Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1
.end method

.method public declared-synchronized getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-nez v1, :cond_4

    const-string/jumbo v1, "Cookie"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_2
    const-string/jumbo v1, "Cookie2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_4
    :try_start_3
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getRequestURI()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->getURLFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    return-object v0
.end method

.method protected plainConnect()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v6, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v6

    if-eqz v6, :cond_7

    :try_start_0
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    invoke-virtual {v8, v9}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v6, v5, v7, v8}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    const-string/jumbo v6, "https"

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    instance-of v6, v6, Ljava/net/SecureCacheResponse;

    if-eqz v6, :cond_4

    :cond_1
    :goto_0
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cache Request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    sget-object v7, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "From cache: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    invoke-virtual {v6}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->mapToMessageHeader(Ljava/util/Map;)Lsun/net/www/MessageHeader;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    invoke-virtual {v6}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_6

    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    return-void

    :cond_4
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    const-string/jumbo v6, "null"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_6
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    :cond_7
    :try_start_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v6, :cond_f

    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$5;

    invoke-direct {v6, p0}, Lsun/net/www/protocol/http/HttpURLConnection$5;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/ProxySelector;

    if-eqz v4, :cond_d

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v5

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ProxySelector Request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_b

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    invoke-virtual {p0, v6, v3, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    :goto_3
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Proxy used: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/Proxy;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_a
    :goto_4
    :try_start_4
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    check-cast v6, Ljava/io/PrintStream;

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    return-void

    :cond_b
    :try_start_5
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v3, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_6
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v3, v6, :cond_c

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    throw v0

    :cond_c
    :try_start_7
    throw v1

    :cond_d
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto :goto_4

    :cond_e
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto :goto_4

    :cond_f
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_10

    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    invoke-virtual {p0, v6, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto/16 :goto_4

    :cond_10
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    return-void
.end method

.method public setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;Z)V

    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p1

    move v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    .locals 0

    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-void
.end method

.method public streaming()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v6, -0x1

    iget v1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-ne v1, v6, :cond_0

    iget-wide v2, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-ne v1, v6, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-object v0
.end method

.method public usingProxy()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method
