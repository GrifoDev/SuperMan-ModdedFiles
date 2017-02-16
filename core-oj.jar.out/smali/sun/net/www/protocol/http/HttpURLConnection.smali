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
    .param p1, "inClose"    # Z

    .prologue
    invoke-direct {p0, p1}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 86
    const-string/jumbo v2, "CONNECT"

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    .line 140
    sput-boolean v5, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    .line 144
    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    .line 148
    sput v5, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    .line 173
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    .line 177
    const-string/jumbo v3, "Access-Control-Request-Headers"

    aput-object v3, v2, v5

    .line 178
    const-string/jumbo v3, "Access-Control-Request-Method"

    aput-object v3, v2, v6

    .line 179
    const-string/jumbo v3, "Connection"

    aput-object v3, v2, v7

    .line 180
    const-string/jumbo v3, "Content-Length"

    aput-object v3, v2, v8

    .line 183
    const-string/jumbo v3, "Content-Transfer-Encoding"

    aput-object v3, v2, v9

    .line 186
    const-string/jumbo v3, "Host"

    const/4 v4, 0x5

    aput-object v3, v2, v4

    .line 187
    const-string/jumbo v3, "Keep-Alive"

    const/4 v4, 0x6

    aput-object v3, v2, v4

    .line 188
    const-string/jumbo v3, "Origin"

    const/4 v4, 0x7

    aput-object v3, v2, v4

    .line 191
    const-string/jumbo v3, "Trailer"

    const/16 v4, 0x8

    aput-object v3, v2, v4

    .line 192
    const-string/jumbo v3, "Transfer-Encoding"

    const/16 v4, 0x9

    aput-object v3, v2, v4

    .line 193
    const-string/jumbo v3, "Upgrade"

    const/16 v4, 0xa

    aput-object v3, v2, v4

    .line 195
    const-string/jumbo v3, "Via"

    const/16 v4, 0xb

    aput-object v3, v2, v4

    .line 173
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    .line 200
    new-instance v2, Lsun/security/action/GetIntegerAction;

    .line 201
    const-string/jumbo v3, "http.maxRedirects"

    const/16 v4, 0x14

    .line 200
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 199
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    .line 203
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "java.version"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->version:Ljava/lang/String;

    .line 205
    new-instance v2, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v3, "http.agent"

    invoke-direct {v2, v3}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 206
    .local v0, "agent":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 207
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

    .line 211
    :goto_0
    sput-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    .line 213
    new-instance v2, Lsun/security/action/GetBooleanAction;

    .line 214
    const-string/jumbo v3, "http.auth.digest.validateProxy"

    .line 213
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    .line 216
    new-instance v2, Lsun/security/action/GetBooleanAction;

    .line 217
    const-string/jumbo v3, "http.auth.digest.validateServer"

    .line 216
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    .line 220
    new-instance v2, Lsun/security/action/GetBooleanAction;

    .line 221
    const-string/jumbo v3, "sun.net.http.errorstream.enableBuffering"

    .line 220
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->enableESBuffer:Z

    .line 223
    new-instance v2, Lsun/security/action/GetIntegerAction;

    .line 224
    const-string/jumbo v3, "sun.net.http.errorstream.timeout"

    const/16 v4, 0x12c

    .line 223
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 222
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    .line 225
    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    if-gtz v2, :cond_0

    .line 226
    const/16 v2, 0x12c

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->timeout4ESBuffer:I

    .line 230
    :cond_0
    new-instance v2, Lsun/security/action/GetIntegerAction;

    .line 231
    const-string/jumbo v3, "sun.net.http.errorstream.bufferSize"

    const/16 v4, 0x1000

    .line 230
    invoke-direct {v2, v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    .line 229
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    .line 232
    sget v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    if-gtz v2, :cond_1

    .line 233
    const/16 v2, 0x1000

    sput v2, Lsun/net/www/protocol/http/HttpURLConnection;->bufSize4ES:I

    .line 237
    :cond_1
    new-instance v2, Lsun/security/action/GetBooleanAction;

    .line 238
    const-string/jumbo v3, "sun.net.http.allowRestrictedHeaders"

    .line 237
    invoke-direct {v2, v3}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    .line 239
    sget-boolean v2, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    if-nez v2, :cond_3

    .line 240
    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 242
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaders:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    .end local v1    # "i":I
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

    .line 245
    :cond_3
    const/4 v2, 0x0

    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    .line 255
    :cond_4
    new-array v2, v7, [Ljava/lang/String;

    .line 256
    const-string/jumbo v3, "Proxy-Authorization"

    aput-object v3, v2, v5

    .line 257
    const-string/jumbo v3, "Authorization"

    aput-object v3, v2, v6

    .line 255
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    .line 261
    new-array v2, v9, [Ljava/lang/String;

    .line 262
    const-string/jumbo v3, "Proxy-Authorization"

    aput-object v3, v2, v5

    .line 263
    const-string/jumbo v3, "Authorization"

    aput-object v3, v2, v6

    .line 264
    const-string/jumbo v3, "Cookie"

    aput-object v3, v2, v7

    .line 265
    const-string/jumbo v3, "Cookie2"

    aput-object v3, v2, v8

    .line 261
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS2:[Ljava/lang/String;

    .line 374
    const-string/jumbo v2, "sun.net.www.protocol.http.HttpURLConnection"

    invoke-static {v2}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v2

    .line 373
    sput-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 3
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 718
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {p2, p3}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    invoke-direct {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;)V

    .line 717
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/net/Proxy;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;

    .prologue
    .line 724
    new-instance v0, Lsun/net/www/protocol/http/Handler;

    invoke-direct {v0}, Lsun/net/www/protocol/http/Handler;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 723
    return-void
.end method

.method protected constructor <init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V
    .locals 5
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "handler"    # Lsun/net/www/protocol/http/Handler;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 728
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 281
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    .line 285
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    .line 288
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    .line 289
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    .line 290
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    .line 310
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 311
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 312
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    .line 313
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    .line 314
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    .line 317
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    .line 318
    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    .line 335
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 337
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 340
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    .line 343
    iput-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    .line 347
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    .line 350
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    .line 364
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    .line 369
    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    .line 370
    iput v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    .line 2295
    iput-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    .line 2425
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    .line 729
    new-instance v1, Lsun/net/www/MessageHeader;

    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 730
    new-instance v1, Lsun/net/www/MessageHeader;

    invoke-direct {v1}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 731
    iput-object p3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->handler:Lsun/net/www/protocol/http/Handler;

    .line 732
    iput-object p2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    .line 733
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    instance-of v1, v1, Lsun/net/ApplicationProxy;

    if-eqz v1, :cond_0

    .line 737
    :try_start_0
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 748
    :goto_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$3;

    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$3;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    .line 747
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/ResponseCache;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    .line 727
    return-void

    .line 741
    :cond_0
    new-instance v1, Lsun/net/www/protocol/http/HttpURLConnection$2;

    invoke-direct {v1, p0}, Lsun/net/www/protocol/http/HttpURLConnection$2;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    .line 740
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/CookieHandler;

    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .local v0, "se":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method protected constructor <init>(Ljava/net/URL;Lsun/net/www/protocol/http/Handler;)V
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "handler"    # Lsun/net/www/protocol/http/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;-><init>(Ljava/net/URL;Ljava/net/Proxy;Lsun/net/www/protocol/http/Handler;)V

    .line 711
    return-void
.end method

.method private checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    const/16 v3, 0xa

    .line 462
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 463
    .local v1, "index":I
    if-eq v1, v4, :cond_0

    .line 464
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal character(s) in message header field: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_0
    if-nez p2, :cond_1

    .line 469
    return-void

    .line 472
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 473
    :goto_0
    if-eq v1, v4, :cond_4

    .line 474
    add-int/lit8 v1, v1, 0x1

    .line 475
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 476
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 477
    .local v0, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_2

    const/16 v2, 0x9

    if-ne v0, v2, :cond_3

    .line 479
    :cond_2
    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_0

    .line 483
    .end local v0    # "c":C
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal character(s) in message header value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_4
    return-void
.end method

.method private checkResponseCredentials(Z)V
    .locals 6
    .param p1, "inClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2259
    :try_start_0
    iget-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    if-nez v3, :cond_0

    .line 2260
    return-void

    .line 2261
    :cond_0
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateProxy:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-eqz v3, :cond_2

    .line 2262
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    .line 2261
    if-eqz v3, :cond_2

    .line 2263
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "Proxy-Authentication-Info"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2264
    .local v2, "raw":Ljava/lang/String;
    if-nez p1, :cond_1

    if-eqz v2, :cond_2

    .line 2266
    :cond_1
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 2265
    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    .line 2267
    .local v0, "da":Lsun/net/www/protocol/http/DigestAuthentication;
    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 2271
    .end local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "raw":Ljava/lang/String;
    :cond_2
    sget-boolean v3, Lsun/net/www/protocol/http/HttpURLConnection;->validateServer:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-eqz v3, :cond_4

    .line 2272
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    instance-of v3, v3, Lsun/net/www/protocol/http/DigestAuthentication;

    .line 2271
    if-eqz v3, :cond_4

    .line 2273
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v4, "Authentication-Info"

    invoke-virtual {v3, v4}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2274
    .restart local v2    # "raw":Ljava/lang/String;
    if-nez p1, :cond_3

    if-eqz v2, :cond_4

    .line 2276
    :cond_3
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 2275
    check-cast v0, Lsun/net/www/protocol/http/DigestAuthentication;

    .line 2277
    .restart local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    iget-object v3, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    iget-object v4, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v0, v2, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->checkResponse(Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V

    .line 2278
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 2281
    .end local v0    # "da":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "raw":Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-nez v3, :cond_5

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    if-nez v3, :cond_5

    .line 2282
    const/4 v3, 0x0

    iput-boolean v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2257
    :cond_5
    return-void

    .line 2284
    :catch_0
    move-exception v1

    .line 2285
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 2286
    iput-boolean v5, p0, Ljava/net/URLConnection;->connected:Z

    .line 2287
    throw v1
.end method

.method private checkReuseConnection()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 855
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 856
    return v2

    .line 858
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 860
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 861
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-boolean v3, v0, Lsun/net/www/http/HttpClient;->reuse:Z

    .line 862
    iput-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    .line 863
    iput-boolean v2, p0, Ljava/net/URLConnection;->connected:Z

    .line 864
    return v2

    .line 866
    :cond_1
    return v3
.end method

.method static connectRequestURI(Ljava/net/URL;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;

    .prologue
    .line 1892
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1893
    .local v0, "host":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 1894
    .local v1, "port":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1896
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

    .line 1894
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v1

    goto :goto_0
.end method

.method private disconnectInternal()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2504
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2505
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 2506
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v0}, Lsun/net/ProgressSource;->finishTracking()V

    .line 2508
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    .line 2510
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v0, :cond_1

    .line 2511
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeServer()V

    .line 2512
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 2513
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    .line 2503
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

    .prologue
    .line 2490
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->usingProxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2491
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2494
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    .line 2489
    :goto_0
    return-void

    .line 2496
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

    .prologue
    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 1010
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7}, Lsun/net/NetworkClient;->getReadTimeout()I

    move-result v2

    .line 1011
    .local v2, "oldTimeout":I
    const/4 v0, 0x0

    .line 1012
    .local v0, "enforceTimeOut":Z
    const/4 v6, 0x0

    .line 1013
    .local v6, "timedOut":Z
    if-gtz v2, :cond_0

    .line 1016
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 1017
    const/4 v0, 0x1

    .line 1021
    :cond_0
    :try_start_0
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v7, v8, v9, p0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    if-nez v6, :cond_3

    .line 1031
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v7, v12}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1035
    .local v3, "resp":Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string/jumbo v7, "HTTP/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1036
    const-string/jumbo v7, "\\s+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1037
    .local v4, "sa":[Ljava/lang/String;
    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 1040
    :try_start_1
    array-length v7, v4

    if-le v7, v10, :cond_1

    .line 1041
    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Ljava/net/HttpURLConnection;->responseCode:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1045
    .end local v4    # "sa":[Ljava/lang/String;
    :cond_1
    :goto_1
    iget v7, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_3

    .line 1046
    new-instance v7, Ljava/net/ProtocolException;

    const-string/jumbo v8, "Server rejected operation"

    invoke-direct {v7, v8}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1022
    .end local v3    # "resp":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1023
    .local v5, "se":Ljava/net/SocketTimeoutException;
    if-nez v0, :cond_2

    .line 1024
    throw v5

    .line 1026
    :cond_2
    const/4 v6, 0x1

    .line 1027
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7, v10}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    goto :goto_0

    .line 1050
    .end local v5    # "se":Ljava/net/SocketTimeoutException;
    :cond_3
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v7, v2}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 1052
    iput v11, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 1053
    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v7}, Lsun/net/www/MessageHeader;->reset()V

    .line 1007
    return-void

    .line 1042
    .restart local v3    # "resp":Ljava/lang/String;
    .restart local v4    # "sa":[Ljava/lang/String;
    :catch_1
    move-exception v1

    .local v1, "numberFormatException":Ljava/lang/NumberFormatException;
    goto :goto_1
.end method

.method private filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2611
    if-nez p2, :cond_0

    .line 2612
    return-object v5

    .line 2614
    :cond_0
    const-string/jumbo v5, "set-cookie"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2615
    const-string/jumbo v5, "set-cookie2"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 2614
    if-eqz v5, :cond_7

    .line 2618
    :cond_1
    iget-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v5, :cond_2

    .line 2619
    return-object p2

    .line 2621
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2622
    .local v4, "retValue":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    invoke-static {p2, v5}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2

    .line 2623
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    const/4 v3, 0x0

    .line 2624
    .local v3, "multipleCookies":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cookie$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/HttpCookie;

    .line 2626
    .local v0, "cookie":Ljava/net/HttpCookie;
    invoke-virtual {v0}, Ljava/net/HttpCookie;->isHttpOnly()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2628
    if-eqz v3, :cond_4

    .line 2629
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2630
    :cond_4
    iget-object v5, v0, Ljava/net/HttpCookie;->header:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    const/4 v3, 0x1

    goto :goto_0

    .line 2634
    .end local v0    # "cookie":Ljava/net/HttpCookie;
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

    .line 2637
    .end local v1    # "cookie$iterator":Ljava/util/Iterator;
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/net/HttpCookie;>;"
    .end local v3    # "multipleCookies":Z
    .end local v4    # "retValue":Ljava/lang/StringBuilder;
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

    .prologue
    .line 2310
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInstanceFollowRedirects()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2311
    const/4 v9, 0x0

    return v9

    .line 2314
    :cond_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    .line 2315
    .local v8, "stat":I
    const/16 v9, 0x12c

    if-lt v8, v9, :cond_1

    const/16 v9, 0x133

    if-le v8, v9, :cond_2

    .line 2317
    :cond_1
    const/4 v9, 0x0

    return v9

    .line 2315
    :cond_2
    const/16 v9, 0x132

    if-eq v8, v9, :cond_1

    .line 2316
    const/16 v9, 0x130

    if-eq v8, v9, :cond_1

    .line 2319
    const-string/jumbo v9, "Location"

    invoke-virtual {p0, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2320
    .local v1, "loc":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2324
    const/4 v9, 0x0

    return v9

    .line 2328
    :cond_3
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2329
    .local v2, "locUrl":Ljava/net/URL;
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

    .line 2330
    const/4 v9, 0x0

    return v9

    .line 2333
    .end local v2    # "locUrl":Ljava/net/URL;
    :catch_0
    move-exception v3

    .line 2335
    .local v3, "mue":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/net/URL;

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-direct {v2, v9, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 2337
    .end local v3    # "mue":Ljava/net/MalformedURLException;
    .restart local v2    # "locUrl":Ljava/net/URL;
    :cond_4
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 2338
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2339
    new-instance v9, Ljava/net/HttpRetryException;

    const-string/jumbo v10, "cannot retry due to redirection, in streaming mode"

    invoke-direct {v9, v10, v8, v1}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw v9

    .line 2341
    :cond_5
    sget-object v9, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v10, 0x1f4

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2342
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

    .line 2346
    :cond_6
    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 2347
    const/16 v9, 0x131

    if-ne v8, v9, :cond_9

    .line 2356
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 2357
    .local v5, "proxyHost":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 2359
    .local v6, "proxyPort":I
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v7

    .line 2360
    .local v7, "security":Ljava/lang/SecurityManager;
    if-eqz v7, :cond_7

    .line 2361
    invoke-virtual {v7, v5, v6}, Ljava/lang/SecurityManager;->checkConnect(Ljava/lang/String;I)V

    .line 2364
    :cond_7
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v9, v5, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    .line 2365
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

    .line 2366
    const-string/jumbo v11, "HTTP/1.1"

    .line 2365
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 2366
    const/4 v12, 0x0

    .line 2365
    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 2367
    const/4 v9, 0x1

    iput-boolean v9, p0, Ljava/net/URLConnection;->connected:Z

    .line 2421
    .end local v5    # "proxyHost":Ljava/lang/String;
    .end local v6    # "proxyPort":I
    .end local v7    # "security":Ljava/lang/SecurityManager;
    :cond_8
    :goto_0
    const/4 v9, 0x1

    return v9

    .line 2371
    :cond_9
    iput-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    .line 2372
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    .line 2373
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v10, "POST"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v9, "http.strictPostRedirect"

    invoke-static {v9}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 2398
    :cond_a
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v9

    if-nez v9, :cond_b

    .line 2399
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 2409
    :cond_b
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v9, :cond_8

    .line 2410
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

    .line 2411
    const-string/jumbo v11, "HTTP/1.1"

    .line 2410
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    .line 2411
    const/4 v12, 0x0

    .line 2410
    invoke-virtual {v9, v11, v10, v12}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 2412
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getPort()I

    move-result v4

    .line 2413
    .local v4, "port":I
    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2414
    .local v0, "host":Ljava/lang/String;
    const/4 v9, -0x1

    if-eq v4, v9, :cond_c

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getDefaultPort()I

    move-result v9

    if-eq v4, v9, :cond_c

    .line 2415
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

    .line 2417
    :cond_c
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v10, "Host"

    invoke-virtual {v9, v10, v0}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2373
    .end local v0    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    :cond_d
    const/16 v9, 0x133

    if-eq v8, v9, :cond_a

    .line 2391
    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 2392
    const/4 v9, 0x0

    iput-boolean v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    .line 2393
    const-string/jumbo v9, "GET"

    invoke-virtual {p0, v9}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2394
    const/4 v9, 0x0

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 2395
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v9

    if-nez v9, :cond_8

    .line 2396
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    goto/16 :goto_0
.end method

.method private getChainedException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 5
    .param p1, "rememberedException"    # Ljava/io/IOException;

    .prologue
    .line 1671
    const/4 v3, 0x1

    :try_start_0
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 1674
    .local v0, "args":[Ljava/lang/Object;
    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$6;

    invoke-direct {v3, p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection$6;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/IOException;[Ljava/lang/Object;)V

    .line 1673
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    .line 1682
    .local v1, "chainedException":Ljava/io/IOException;
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1683
    return-object v1

    .line 1684
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v1    # "chainedException":Ljava/io/IOException;
    :catch_0
    move-exception v2

    .line 1685
    .local v2, "ignored":Ljava/lang/Exception;
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

    .prologue
    .line 2645
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    if-eqz v10, :cond_0

    .line 2646
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    return-object v10

    .line 2648
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 2650
    .local v6, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v10, :cond_3

    .line 2651
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .line 2655
    .local v4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2656
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2657
    .local v5, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .local v9, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2658
    .local v3, "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "value$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2659
    .local v7, "value":Ljava/lang/String;
    invoke-direct {p0, v5, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2660
    .local v2, "fVal":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 2661
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2653
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    .end local v2    # "fVal":Ljava/lang/String;
    .end local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "value$iterator":Ljava/util/Iterator;
    .end local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v10}, Lsun/net/www/MessageHeader;->getHeaders()Ljava/util/Map;

    move-result-object v4

    .restart local v4    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    goto :goto_0

    .line 2663
    .restart local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "e$iterator":Ljava/util/Iterator;
    .restart local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v8    # "value$iterator":Ljava/util/Iterator;
    .restart local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2664
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v6, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2667
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "filteredVals":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "value$iterator":Ljava/util/Iterator;
    .end local v9    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->filteredHeaders:Ljava/util/Map;

    return-object v10
.end method

.method public static getHttpLogger()Lsun/util/logging/PlatformLogger;
    .locals 1

    .prologue
    .line 444
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    return-object v0
.end method

.method private getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 39
    .param p1, "authhdr"    # Lsun/net/www/protocol/http/AuthenticationHeader;

    .prologue
    .line 1965
    const/4 v9, 0x0

    .line 1966
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v36

    .line 1967
    .local v36, "raw":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v3

    .line 1968
    .local v3, "host":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v6}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v5

    .line 1969
    .local v5, "port":I
    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1970
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v35

    .line 1971
    .local v35, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v6, "realm"

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1972
    .local v7, "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    move-result-object v8

    .line 1973
    .local v8, "scheme":Ljava/lang/String;
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    .line 1974
    .local v31, "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    const-string/jumbo v6, "basic"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1975
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    .line 1989
    :cond_0
    :goto_0
    if-nez v7, :cond_1

    .line 1990
    const-string/jumbo v7, ""

    .line 1991
    :cond_1
    move-object/from16 v0, v31

    invoke-static {v3, v5, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuthKey(Ljava/lang/String;ILjava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    .line 1992
    move-object/from16 v0, p0

    iget-object v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v6}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v37

    .line 1993
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v37, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-nez v37, :cond_6

    .line 1994
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    move-result-object v6

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v6, v6, v10

    packed-switch v6, :pswitch_data_0

    .line 2069
    :goto_1
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v10, "should not reach here"

    invoke-direct {v6, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v6

    .line 1976
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_2
    const-string/jumbo v6, "digest"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1977
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    goto :goto_0

    .line 1978
    :cond_3
    const-string/jumbo v6, "ntlm"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1979
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    .line 1980
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    .line 1981
    :cond_4
    const-string/jumbo v6, "Kerberos"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1982
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    .line 1983
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    .line 1984
    :cond_5
    const-string/jumbo v6, "Negotiate"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1985
    sget-object v31, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    .line 1986
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto :goto_0

    .line 1996
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_0
    const/4 v4, 0x0

    .line 1998
    .local v4, "addr":Ljava/net/InetAddress;
    move-object/from16 v32, v3

    .line 2000
    .local v32, "finalHost":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$7;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lsun/net/www/protocol/http/HttpURLConnection$7;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/lang/String;)V

    .line 1999
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/net/InetAddress;

    move-object v4, v0
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2011
    .end local v4    # "addr":Ljava/net/InetAddress;
    :goto_2
    const-string/jumbo v6, "http"

    .line 2012
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 2010
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .line 2013
    .local v14, "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_12

    .line 2014
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    const/4 v10, 0x1

    move-object v11, v3

    move v12, v5

    move-object v13, v7

    invoke-direct/range {v9 .. v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/net/PasswordAuthentication;)V

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_3
    move-object/from16 v37, v9

    .line 2075
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .end local v32    # "finalHost":Ljava/lang/String;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_6
    :goto_4
    if-nez v37, :cond_d

    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    if-eqz v6, :cond_d

    .line 2076
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    invoke-interface {v6, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    move-result v6

    .line 2075
    if-eqz v6, :cond_f

    .line 2078
    :try_start_1
    new-instance v38, Ljava/net/URL;

    const-string/jumbo v6, "http"

    const-string/jumbo v10, "/"

    move-object/from16 v0, v38

    invoke-direct {v0, v6, v3, v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2079
    .local v38, "u":Ljava/net/URL;
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    move-object/from16 v0, v38

    invoke-interface {v6, v0, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2080
    .local v20, "a":Ljava/lang/String;
    if-eqz v20, :cond_f

    .line 2081
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    const/16 v16, 0x1

    move-object v15, v9

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v7

    invoke-direct/range {v15 .. v20}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2087
    .end local v20    # "a":Ljava/lang/String;
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "u":Ljava/net/URL;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_5
    if-eqz v9, :cond_7

    .line 2088
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2089
    const/4 v9, 0x0

    .line 2093
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v35    # "p":Lsun/net/www/HeaderParser;
    :cond_7
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v10, 0x190

    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2094
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

    .line 2096
    :cond_8
    return-object v9

    .line 2019
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v35    # "p":Lsun/net/www/HeaderParser;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    .line 2020
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    sget-object v22, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 2019
    const/16 v16, 0x0

    move-object v15, v3

    move/from16 v17, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    .line 2018
    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .line 2021
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_11

    .line 2023
    new-instance v22, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-direct/range {v22 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    .line 2024
    .local v22, "params":Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    const/16 v16, 0x1

    move-object v15, v9

    move-object/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v22}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    .end local v22    # "params":Lsun/net/www/protocol/http/DigestAuthentication$Parameters;
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_7
    move-object/from16 v37, v9

    .line 2027
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    .line 2029
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :pswitch_2
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    if-eqz v6, :cond_10

    .line 2033
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-eqz v6, :cond_9

    .line 2035
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    .line 2034
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    .line 2037
    :cond_9
    const/4 v14, 0x0

    .line 2038
    .local v14, "a":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-eqz v6, :cond_b

    .line 2039
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v10, "Trying Transparent NTLM authentication"

    invoke-virtual {v6, v10}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 2051
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-nez v6, :cond_a

    .line 2052
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    if-nez v6, :cond_c

    if-eqz v14, :cond_c

    .line 2053
    :cond_a
    sget-object v6, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    const/4 v10, 0x1

    invoke-virtual {v6, v10, v3, v5, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/lang/String;ILjava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    .line 2057
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_9
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMProxy:Z

    :goto_a
    move-object/from16 v37, v9

    .line 2059
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    .line 2042
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v26

    .line 2043
    const-string/jumbo v27, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v29, v0

    sget-object v30, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    .line 2042
    const/16 v24, 0x0

    move-object/from16 v23, v3

    move/from16 v25, v5

    move-object/from16 v28, v8

    .line 2041
    invoke-static/range {v23 .. v30}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .local v14, "a":Ljava/net/PasswordAuthentication;
    goto :goto_8

    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_c
    move-object/from16 v9, v37

    .line 2052
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_9

    .line 2061
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_3
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v10

    const-string/jumbo v11, "Negotiate"

    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v37, v9

    .line 2062
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    .line 2064
    :pswitch_4
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v6, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v10

    const-string/jumbo v11, "Kerberos"

    invoke-direct {v6, v10, v11}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v6}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v37, v9

    .line 2065
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_4

    .line 2067
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

    .line 2076
    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    .line 2084
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_0
    move-exception v33

    .local v33, "ignored":Ljava/net/MalformedURLException;
    move-object/from16 v9, v37

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    .line 2094
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v33    # "ignored":Ljava/net/MalformedURLException;
    .end local v35    # "p":Lsun/net/www/HeaderParser;
    :cond_e
    const-string/jumbo v6, "null"

    goto/16 :goto_6

    .line 2006
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v31    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v32    # "finalHost":Ljava/lang/String;
    .restart local v35    # "p":Lsun/net/www/HeaderParser;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_1
    move-exception v34

    .local v34, "ignored":Ljava/security/PrivilegedActionException;
    goto/16 :goto_2

    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v32    # "finalHost":Ljava/lang/String;
    .end local v34    # "ignored":Ljava/security/PrivilegedActionException;
    :cond_f
    move-object/from16 v9, v37

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_5

    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_10
    move-object/from16 v9, v37

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_a

    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_11
    move-object/from16 v9, v37

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_7

    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v32    # "finalHost":Ljava/lang/String;
    .restart local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_12
    move-object/from16 v9, v37

    .end local v37    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    .line 1994
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
    .param p1, "authhdr"    # Lsun/net/www/protocol/http/AuthenticationHeader;

    .prologue
    .line 2107
    const/4 v9, 0x0

    .line 2108
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v28

    .line 2110
    .local v28, "raw":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2111
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v27

    .line 2112
    .local v27, "p":Lsun/net/www/HeaderParser;
    const-string/jumbo v3, "realm"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2113
    .local v7, "realm":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->scheme()Ljava/lang/String;

    move-result-object v8

    .line 2114
    .local v8, "scheme":Ljava/lang/String;
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->UNKNOWN:Lsun/net/www/protocol/http/AuthScheme;

    .line 2115
    .local v24, "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    const-string/jumbo v3, "basic"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2116
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->BASIC:Lsun/net/www/protocol/http/AuthScheme;

    .line 2130
    :cond_0
    :goto_0
    const-string/jumbo v3, "domain"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Lsun/net/www/HeaderParser;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    .line 2131
    if-nez v7, :cond_1

    .line 2132
    const-string/jumbo v7, ""

    .line 2133
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, v24

    invoke-static {v3, v7, v0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuthKey(Ljava/net/URL;Ljava/lang/String;Lsun/net/www/protocol/http/AuthScheme;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    .line 2134
    move-object/from16 v0, p0

    iget-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v3}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/lang/String;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v29

    .line 2135
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v29, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/4 v4, 0x0

    .line 2136
    .local v4, "addr":Ljava/net/InetAddress;
    if-nez v29, :cond_2

    .line 2138
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2144
    .end local v4    # "addr":Ljava/net/InetAddress;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v5

    .line 2145
    .local v5, "port":I
    const/4 v3, -0x1

    if-ne v5, v3, :cond_3

    .line 2146
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getDefaultPort()I

    move-result v5

    .line 2148
    :cond_3
    if-nez v29, :cond_10

    .line 2149
    invoke-static {}, Lsun/net/www/protocol/http/HttpURLConnection;->-getsun-net-www-protocol-http-AuthSchemeSwitchesValues()[I

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 2224
    :goto_2
    new-instance v3, Ljava/lang/AssertionError;

    const-string/jumbo v6, "should not reach here"

    invoke-direct {v3, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 2117
    .end local v5    # "port":I
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_4
    const-string/jumbo v3, "digest"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2118
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->DIGEST:Lsun/net/www/protocol/http/AuthScheme;

    goto :goto_0

    .line 2119
    :cond_5
    const-string/jumbo v3, "ntlm"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2120
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    .line 2121
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto :goto_0

    .line 2122
    :cond_6
    const-string/jumbo v3, "Kerberos"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2123
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    .line 2124
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto/16 :goto_0

    .line 2125
    :cond_7
    const-string/jumbo v3, "Negotiate"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2126
    sget-object v24, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    .line 2127
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    goto/16 :goto_0

    .line 2151
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v5    # "port":I
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_0
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v6

    const-string/jumbo v10, "Kerberos"

    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    .line 2231
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .local v9, "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_3
    if-nez v9, :cond_8

    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    if-eqz v3, :cond_8

    .line 2232
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    invoke-interface {v3, v8}, Lsun/net/www/protocol/http/HttpAuthenticator;->schemeSupported(Ljava/lang/String;)Z

    move-result v3

    .line 2231
    if-eqz v3, :cond_8

    .line 2233
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-interface {v3, v6, v8, v7}, Lsun/net/www/protocol/http/HttpAuthenticator;->authString(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 2234
    .local v23, "a":Ljava/lang/String;
    if-eqz v23, :cond_8

    .line 2235
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const/4 v6, 0x0

    move-object/from16 v0, v23

    invoke-direct {v9, v6, v3, v7, v0}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;)V

    .line 2240
    .end local v23    # "a":Ljava/lang/String;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_8
    if-eqz v9, :cond_9

    .line 2241
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v9, v0, v1, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2242
    const/4 v9, 0x0

    .line 2246
    .end local v5    # "port":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v27    # "p":Lsun/net/www/HeaderParser;
    :cond_9
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v6, 0x190

    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2247
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

    .line 2249
    :cond_a
    return-object v9

    .line 2154
    .restart local v5    # "port":I
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v27    # "p":Lsun/net/www/HeaderParser;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_1
    new-instance v9, Lsun/net/www/protocol/http/NegotiateAuthentication;

    new-instance v3, Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-virtual/range {p1 .. p1}, Lsun/net/www/protocol/http/AuthenticationHeader;->getHttpCallerInfo()Lsun/net/www/protocol/http/HttpCallerInfo;

    move-result-object v6

    const-string/jumbo v10, "Negotiate"

    invoke-direct {v3, v6, v10}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;Ljava/lang/String;)V

    invoke-direct {v9, v3}, Lsun/net/www/protocol/http/NegotiateAuthentication;-><init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V

    .line 2155
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_3

    .line 2159
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 2160
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 2158
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .line 2161
    .local v14, "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_10

    .line 2162
    new-instance v9, Lsun/net/www/protocol/http/BasicAuthentication;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const/4 v6, 0x0

    invoke-direct {v9, v6, v3, v7, v14}, Lsun/net/www/protocol/http/BasicAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/net/PasswordAuthentication;)V

    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    .line 2167
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    .line 2168
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    sget-object v10, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    .line 2166
    invoke-static/range {v3 .. v10}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .line 2169
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    if-eqz v14, :cond_10

    .line 2170
    new-instance v3, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    invoke-direct {v3}, Lsun/net/www/protocol/http/DigestAuthentication$Parameters;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .line 2171
    new-instance v9, Lsun/net/www/protocol/http/DigestAuthentication;

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v15, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const/4 v10, 0x0

    move-object v12, v7

    move-object v13, v8

    invoke-direct/range {v9 .. v15}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    .line 2175
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :pswitch_4
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supported:Z

    if-eqz v3, :cond_10

    .line 2178
    :try_start_1
    new-instance v30, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    const-string/jumbo v6, "/"

    move-object/from16 v0, v30

    invoke-direct {v0, v3, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2186
    .local v30, "url1":Ljava/net/URL;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_b

    .line 2188
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    sget-boolean v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->supportsTransparentAuth:Z

    .line 2187
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    .line 2192
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_b

    .line 2194
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->isTrustedSite(Ljava/net/URL;)Z

    move-result v3

    .line 2193
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    .line 2197
    :cond_b
    const/4 v14, 0x0

    .line 2198
    .local v14, "a":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-eqz v3, :cond_d

    .line 2199
    sget-object v3, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v6, "Trying Transparent NTLM authentication"

    invoke-virtual {v3, v6}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 2212
    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-nez v3, :cond_c

    .line 2213
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    if-nez v3, :cond_e

    if-eqz v14, :cond_e

    .line 2214
    :cond_c
    sget-object v3, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->proxy:Lsun/net/www/protocol/http/NTLMAuthenticationProxy;

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v3, v6, v0, v14}, Lsun/net/www/protocol/http/NTLMAuthenticationProxy;->create(ZLjava/net/URL;Ljava/net/PasswordAuthentication;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    .line 2218
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :goto_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lsun/net/www/protocol/http/HttpURLConnection;->tryTransparentNTLMServer:Z

    goto/16 :goto_3

    .line 2179
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v30    # "url1":Ljava/net/URL;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_0
    move-exception v25

    .line 2180
    .local v25, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v30, v0

    .restart local v30    # "url1":Ljava/net/URL;
    goto :goto_5

    .line 2202
    .end local v25    # "e":Ljava/lang/Exception;
    .restart local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v18

    .line 2203
    const-string/jumbo v19, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    sget-object v22, Ljava/net/Authenticator$RequestorType;->SERVER:Ljava/net/Authenticator$RequestorType;

    move-object/from16 v16, v4

    move/from16 v17, v5

    move-object/from16 v20, v8

    .line 2201
    invoke-static/range {v15 .. v22}, Lsun/net/www/protocol/http/HttpURLConnection;->privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;

    move-result-object v14

    .local v14, "a":Ljava/net/PasswordAuthentication;
    goto :goto_6

    .end local v14    # "a":Ljava/net/PasswordAuthentication;
    :cond_e
    move-object/from16 v9, v29

    .line 2213
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_7

    .line 2222
    .end local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v30    # "url1":Ljava/net/URL;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
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

    .line 2247
    .end local v5    # "port":I
    .end local v7    # "realm":Ljava/lang/String;
    .end local v8    # "scheme":Ljava/lang/String;
    .end local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .end local v27    # "p":Lsun/net/www/HeaderParser;
    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_f
    const-string/jumbo v3, "null"

    goto/16 :goto_4

    .line 2139
    .restart local v4    # "addr":Ljava/net/InetAddress;
    .restart local v7    # "realm":Ljava/lang/String;
    .restart local v8    # "scheme":Ljava/lang/String;
    .restart local v24    # "authScheme":Lsun/net/www/protocol/http/AuthScheme;
    .restart local v27    # "p":Lsun/net/www/HeaderParser;
    .restart local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_1
    move-exception v26

    .local v26, "ignored":Ljava/net/UnknownHostException;
    goto/16 :goto_1

    .end local v4    # "addr":Ljava/net/InetAddress;
    .end local v26    # "ignored":Ljava/net/UnknownHostException;
    .restart local v5    # "port":I
    :cond_10
    move-object/from16 v9, v29

    .end local v29    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v9    # "ret":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_3

    .line 2149
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
    .param p0, "u1"    # Ljava/net/URL;
    .param p1, "u2"    # Ljava/net/URL;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 817
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "h1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "h2":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 821
    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 822
    :cond_1
    if-nez v1, :cond_2

    .line 823
    return v4

    .line 824
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 825
    return v3

    .line 829
    :cond_3
    new-array v2, v3, [Z

    aput-boolean v4, v2, v4

    .line 832
    .local v2, "result":[Z
    new-instance v3, Lsun/net/www/protocol/http/HttpURLConnection$4;

    invoke-direct {v3, v0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection$4;-><init>(Ljava/lang/String;Ljava/lang/String;[Z)V

    .line 831
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 845
    aget-boolean v3, v2, v4

    return v3
.end method

.method private isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    const/4 v0, 0x1

    return v0

    .line 439
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRestrictedHeader(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 408
    sget-boolean v0, Lsun/net/www/protocol/http/HttpURLConnection;->allowRestrictedHeaders:Z

    if-eqz v0, :cond_0

    .line 409
    return v1

    .line 412
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 413
    sget-object v0, Lsun/net/www/protocol/http/HttpURLConnection;->restrictedHeaderSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    const-string/jumbo v0, "connection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "close"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    return v1

    .line 422
    :cond_1
    return v2

    .line 423
    :cond_2
    const-string/jumbo v0, "sec-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    return v2

    .line 426
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

    .prologue
    .line 2927
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v2, Lsun/net/www/MessageHeader;

    invoke-direct {v2}, Lsun/net/www/MessageHeader;-><init>()V

    .line 2928
    .local v2, "headers":Lsun/net/www/MessageHeader;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2929
    :cond_0
    return-object v2

    .line 2931
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2932
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2933
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 2934
    .local v6, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2935
    .local v4, "value":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 2936
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2938
    :cond_3
    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2942
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "value$iterator":Ljava/util/Iterator;
    .end local v6    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    return-object v2
.end method

.method public static openConnectionCheckRedirects(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 10
    .param p0, "c"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    const/4 v5, 0x0

    .line 773
    .local v5, "redirects":I
    :cond_0
    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v8, :cond_1

    move-object v8, p0

    .line 774
    nop

    nop

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 780
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 781
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 783
    .local v4, "redir":Z
    instance-of v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;

    if-eqz v8, :cond_5

    move-object v1, p0

    .line 784
    nop

    nop

    .line 785
    .local v1, "http":Lsun/net/www/protocol/http/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 786
    .local v6, "stat":I
    const/16 v8, 0x12c

    if-lt v6, v8, :cond_5

    const/16 v8, 0x133

    if-gt v6, v8, :cond_5

    const/16 v8, 0x132

    if-eq v6, v8, :cond_5

    .line 787
    const/16 v8, 0x130

    if-eq v6, v8, :cond_5

    .line 788
    invoke-virtual {v1}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 789
    .local v0, "base":Ljava/net/URL;
    const-string/jumbo v8, "Location"

    invoke-virtual {v1, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 790
    .local v3, "loc":Ljava/lang/String;
    const/4 v7, 0x0

    .line 791
    .local v7, "target":Ljava/net/URL;
    if-eqz v3, :cond_2

    .line 792
    new-instance v7, Ljava/net/URL;

    .end local v7    # "target":Ljava/net/URL;
    invoke-direct {v7, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 794
    :cond_2
    invoke-virtual {v1}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnect()V

    .line 795
    if-eqz v7, :cond_3

    .line 796
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 797
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v8

    invoke-virtual {v7}, Ljava/net/URL;->getPort()I

    move-result v9

    if-eq v8, v9, :cond_4

    .line 801
    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    const-string/jumbo v9, "illegal URL redirect"

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 798
    :cond_4
    invoke-static {v0, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 799
    const/4 v8, 0x5

    if-ge v5, v8, :cond_3

    .line 803
    const/4 v4, 0x1

    .line 804
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .line 805
    add-int/lit8 v5, v5, 0x1

    .line 808
    .end local v0    # "base":Ljava/net/URL;
    .end local v1    # "http":Lsun/net/www/protocol/http/HttpURLConnection;
    .end local v3    # "loc":Ljava/lang/String;
    .end local v6    # "stat":I
    :cond_5
    if-nez v4, :cond_0

    .line 809
    return-object v2
.end method

.method private static privilegedRequestPasswordAuthentication(Ljava/lang/String;Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;Ljava/net/Authenticator$RequestorType;)Ljava/net/PasswordAuthentication;
    .locals 9
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .param p3, "protocol"    # Ljava/lang/String;
    .param p4, "prompt"    # Ljava/lang/String;
    .param p5, "scheme"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/net/URL;
    .param p7, "authType"    # Ljava/net/Authenticator$RequestorType;

    .prologue
    .line 391
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

    .line 390
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

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, 0x0

    .line 2431
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    .line 2433
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    .line 2434
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v9}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 2435
    .local v5, "is":Ljava/io/InputStream;
    iget-object v9, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v10, "HEAD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2441
    :try_start_0
    instance-of v9, v5, Lsun/net/www/http/ChunkedInputStream;

    if-nez v9, :cond_0

    .line 2442
    instance-of v9, v5, Lsun/net/www/MeteredStream;

    .line 2441
    if-eqz v9, :cond_3

    .line 2444
    :cond_0
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-gtz v9, :cond_0

    .line 2474
    :cond_1
    :try_start_1
    instance-of v9, v5, Lsun/net/www/MeteredStream;

    if-eqz v9, :cond_2

    .line 2475
    invoke-virtual {v5}, Lsun/net/www/MeteredStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2479
    :cond_2
    :goto_0
    iput v13, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2480
    new-instance v9, Lsun/net/www/MessageHeader;

    invoke-direct {v9}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 2481
    iput-boolean v12, p0, Ljava/net/URLConnection;->connected:Z

    .line 2430
    return-void

    .line 2449
    :cond_3
    const-wide/16 v0, 0x0

    .line 2450
    .local v0, "cl":J
    const/4 v8, 0x0

    .line 2451
    .local v8, "n":I
    :try_start_2
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v10, "Content-Length"

    invoke-virtual {v9, v10}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 2452
    .local v2, "cls":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 2454
    :try_start_3
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v0

    .line 2459
    :cond_4
    :goto_1
    const-wide/16 v6, 0x0

    .local v6, "i":J
    :goto_2
    cmp-long v9, v6, v0

    if-gez v9, :cond_1

    .line 2460
    :try_start_4
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cdata:[B

    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v8

    if-eq v8, v13, :cond_1

    .line 2463
    int-to-long v10, v8

    add-long/2addr v6, v10

    goto :goto_2

    .line 2455
    .end local v6    # "i":J
    :catch_0
    move-exception v4

    .line 2456
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 2467
    .end local v0    # "cl":J
    .end local v2    # "cls":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "n":I
    :catch_1
    move-exception v3

    .line 2468
    .local v3, "e":Ljava/io/IOException;
    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iput-boolean v12, v9, Lsun/net/www/http/HttpClient;->reuse:Z

    .line 2469
    iput-object v14, p0, Lsun/net/www/protocol/http/HttpURLConnection;->reuseClient:Lsun/net/www/http/HttpClient;

    .line 2470
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 2471
    return-void

    .line 2477
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;
    .locals 5
    .param p1, "proxyAuthentication"    # Lsun/net/www/protocol/http/AuthenticationInfo;
    .param p2, "auth"    # Lsun/net/www/protocol/http/AuthenticationHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1710
    if-eqz p1, :cond_3

    .line 1711
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    if-eq v3, v4, :cond_3

    .line 1712
    invoke-virtual {p2}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, "raw":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1716
    instance-of v3, p1, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 1717
    nop

    nop

    .line 1719
    .local v0, "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v3, v4, :cond_0

    .line 1720
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1727
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1728
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 1729
    return-object p1

    .line 1722
    .end local v2    # "value":Ljava/lang/String;
    .restart local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    :cond_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1725
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1731
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    .line 1734
    .end local v1    # "raw":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->getHttpProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object p1

    .line 1735
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 1736
    return-object p1
.end method

.method private sendCONNECTRequest()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1903
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 1905
    .local v1, "port":I
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

    .line 1906
    const-string/jumbo v4, " "

    .line 1905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1906
    const-string/jumbo v4, "HTTP/1.1"

    .line 1905
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lsun/net/www/MessageHeader;->set(ILjava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "User-Agent"

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1910
    .local v0, "host":Ljava/lang/String;
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getDefaultPort()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1911
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

    .line 1913
    :cond_0
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Host"

    invoke-virtual {v2, v3, v0}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Accept"

    const-string/jumbo v4, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v2}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1919
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v3, "Proxy-Connection"

    const-string/jumbo v4, "keep-alive"

    invoke-virtual {v2, v3, v4}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_1
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-direct {p0, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    .line 1925
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1926
    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1929
    :cond_2
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v2, v3, v5}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;)V

    .line 1902
    return-void
.end method

.method private setCookieHeader()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1157
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v11, :cond_a

    .line 1161
    monitor-enter p0

    .line 1162
    :try_start_0
    iget-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-eqz v11, :cond_2

    .line 1163
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    .line 1164
    .local v5, "k":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 1165
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    .line 1166
    :cond_0
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    .line 1167
    const/4 v11, -0x1

    if-eq v5, v11, :cond_1

    .line 1168
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11, v5}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    .line 1169
    :cond_1
    const/4 v11, 0x0

    iput-boolean v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "k":I
    :cond_2
    monitor-exit p0

    .line 1174
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 1175
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 1177
    iget-object v11, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v11}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v8

    .line 1178
    .local v8, "uri":Ljava/net/URI;
    if-eqz v8, :cond_8

    .line 1179
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1180
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

    .line 1183
    :cond_3
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    .line 1184
    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v13, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v12

    .line 1183
    invoke-virtual {v11, v8, v12}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 1185
    .local v1, "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 1186
    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v12, 0x12c

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1187
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

    .line 1190
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    .line 1189
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1191
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1194
    .local v6, "key":Ljava/lang/String;
    const-string/jumbo v11, "Cookie"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1195
    const-string/jumbo v11, "Cookie2"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1198
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 1199
    .local v7, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1201
    .local v0, "cookieValue":Ljava/lang/StringBuilder;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "value$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1202
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "; "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1161
    .end local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "uri":Ljava/net/URI;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "value$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 1206
    .restart local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .restart local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v3    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "uri":Ljava/net/URI;
    .restart local v10    # "value$iterator":Ljava/util/Iterator;
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

    .line 1207
    :catch_0
    move-exception v4

    .local v4, "ignored":Ljava/lang/StringIndexOutOfBoundsException;
    goto :goto_0

    .line 1214
    .end local v0    # "cookieValue":Ljava/lang/StringBuilder;
    .end local v1    # "cookies":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "entry$iterator":Ljava/util/Iterator;
    .end local v4    # "ignored":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "value$iterator":Ljava/util/Iterator;
    :cond_8
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-eqz v11, :cond_9

    .line 1216
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "k":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_b

    .line 1217
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

    .line 1221
    .end local v5    # "k":I
    :cond_9
    :goto_2
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v11, :cond_a

    .line 1223
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    invoke-virtual {v11, v12}, Lsun/net/www/MessageHeader;->getKey(Ljava/lang/String;)I

    move-result v5

    .restart local v5    # "k":I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_c

    .line 1224
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

    .line 1156
    .end local v5    # "k":I
    .end local v8    # "uri":Ljava/net/URI;
    :cond_a
    :goto_3
    return-void

    .line 1219
    .restart local v5    # "k":I
    .restart local v8    # "uri":Ljava/net/URI;
    :cond_b
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie"

    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1226
    :cond_c
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Cookie2"

    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static setDefaultAuthenticator(Lsun/net/www/protocol/http/HttpAuthenticator;)V
    .locals 0
    .param p0, "a"    # Lsun/net/www/protocol/http/HttpAuthenticator;

    .prologue
    .line 759
    sput-object p0, Lsun/net/www/protocol/http/HttpURLConnection;->defaultAuth:Lsun/net/www/protocol/http/HttpAuthenticator;

    .line 758
    return-void
.end method

.method private setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V
    .locals 5
    .param p1, "requests"    # Lsun/net/www/MessageHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1937
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v3

    .line 1938
    iget-object v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v4}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v4

    .line 1937
    invoke-static {v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getProxyAuth(Ljava/lang/String;I)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v1

    .line 1939
    .local v1, "pauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1941
    instance-of v3, v1, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 1942
    nop

    nop

    .line 1943
    .local v0, "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-ne v3, v4, :cond_1

    .line 1945
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v3}, Lsun/net/www/protocol/http/HttpURLConnection;->connectRequestURI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lsun/net/www/protocol/http/HttpURLConnection;->HTTP_CONNECT:Ljava/lang/String;

    .line 1944
    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1954
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    iput-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentProxyCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 1935
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void

    .line 1947
    .restart local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    :cond_1
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getRequestURI()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lsun/net/www/protocol/http/DigestAuthentication;->getHeaderValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 1950
    .end local v0    # "digestProxy":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v2    # "value":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v4, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method private writeRequests()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v10

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-eq v10, v11, :cond_0

    .line 499
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-direct {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setPreemptiveProxyAuthentication(Lsun/net/www/MessageHeader;)V

    .line 501
    :cond_0
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    if-nez v10, :cond_a

    .line 513
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v10, :cond_1

    .line 514
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

    .line 515
    const-string/jumbo v12, "HTTP/1.1"

    .line 514
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 515
    const/4 v12, 0x0

    .line 514
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->prepend(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v10

    if-nez v10, :cond_2

    .line 517
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Cache-Control"

    const-string/jumbo v12, "no-cache"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Pragma"

    const-string/jumbo v12, "no-cache"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :cond_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "User-Agent"

    sget-object v12, Lsun/net/www/protocol/http/HttpURLConnection;->userAgent:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getPort()I

    move-result v6

    .line 522
    .local v6, "port":I
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "host":Ljava/lang/String;
    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->getDefaultPort()I

    move-result v10

    if-eq v6, v10, :cond_3

    .line 524
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

    .line 526
    :cond_3
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Host"

    invoke-virtual {v10, v11, v3}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Accept"

    const-string/jumbo v12, "text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v10, :cond_d

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getHttpKeepAliveSet()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 538
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-boolean v10, v10, Lsun/net/www/http/HttpClient;->usingProxy:Z

    if-eqz v10, :cond_c

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-result-object v10

    sget-object v11, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    if-eq v10, v11, :cond_c

    .line 539
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Proxy-Connection"

    const-string/jumbo v12, "keep-alive"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :goto_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getIfModifiedSince()J

    move-result-wide v4

    .line 554
    .local v4, "modTime":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_4

    .line 555
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 559
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v10, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 560
    .local v2, "fo":Ljava/text/SimpleDateFormat;
    const-string/jumbo v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 561
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "If-Modified-Since"

    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    .end local v1    # "date":Ljava/util/Date;
    .end local v2    # "fo":Ljava/text/SimpleDateFormat;
    :cond_4
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v10}, Lsun/net/www/protocol/http/AuthenticationInfo;->getServerAuth(Ljava/net/URL;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v9

    .line 565
    .local v9, "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->supportsPreemptiveAuthorization()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 567
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v9}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v13, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v9, v12, v13}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iput-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 571
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

    .line 572
    :cond_6
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-type"

    .line 573
    const-string/jumbo v12, "application/x-www-form-urlencoded"

    .line 572
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_7
    const/4 v0, 0x0

    .line 578
    .local v0, "chunked":Z
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v10

    if-eqz v10, :cond_10

    .line 579
    iget v10, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e

    .line 580
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    const-string/jumbo v12, "chunked"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v0, 0x1

    .line 601
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    .line 602
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 603
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Transfer-Encoding"

    invoke-virtual {v10, v11}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 604
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v11, 0x384

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 605
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    .line 606
    const-string/jumbo v11, "use streaming mode for chunked encoding"

    .line 605
    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 613
    :cond_9
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    .line 615
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    .line 617
    .end local v0    # "chunked":Z
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "modTime":J
    .end local v6    # "port":I
    .end local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_a
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v11, 0x1f4

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 618
    sget-object v10, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v11}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 620
    :cond_b
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    iget-object v12, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lsun/net/www/http/HttpClient;->writeRequests(Lsun/net/www/MessageHeader;Lsun/net/www/http/PosterOutputStream;Z)V

    .line 621
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-virtual {v10}, Ljava/io/PrintStream;->checkError()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 622
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v7

    .line 623
    .local v7, "proxyHost":Ljava/lang/String;
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v8

    .line 624
    .local v8, "proxyPort":I
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 625
    iget-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-eqz v10, :cond_11

    .line 626
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Error writing to server"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 541
    .end local v7    # "proxyHost":Ljava/lang/String;
    .end local v8    # "proxyPort":I
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v6    # "port":I
    :cond_c
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Connection"

    const-string/jumbo v12, "keep-alive"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 550
    :cond_d
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Connection"

    const-string/jumbo v12, "close"

    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->setIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 583
    .restart local v0    # "chunked":Z
    .restart local v4    # "modTime":J
    .restart local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    :cond_e
    iget-wide v10, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v12, -0x1

    cmp-long v10, v10, v12

    if-eqz v10, :cond_f

    .line 584
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-Length"

    .line 585
    iget-wide v12, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    .line 584
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :cond_f
    iget v10, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_8

    .line 587
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v11, "Content-Length"

    .line 588
    iget v12, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 587
    invoke-virtual {v10, v11, v12}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 591
    :cond_10
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    if-eqz v10, :cond_8

    .line 593
    iget-object v11, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    monitor-enter v11

    .line 595
    :try_start_0
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {v10}, Lsun/net/www/http/PosterOutputStream;->close()V

    .line 596
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v12, "Content-Length"

    .line 597
    iget-object v13, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 596
    invoke-virtual {v10, v12, v13}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    goto/16 :goto_1

    .line 593
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10

    .line 628
    .end local v0    # "chunked":Z
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "modTime":J
    .end local v6    # "port":I
    .end local v9    # "sauth":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v7    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "proxyPort":I
    :cond_11
    const/4 v10, 0x1

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    .line 629
    if-eqz v7, :cond_13

    .line 630
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v10, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V

    .line 634
    :goto_2
    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v10}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    check-cast v10, Ljava/io/PrintStream;

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    .line 635
    const/4 v10, 0x1

    iput-boolean v10, p0, Ljava/net/URLConnection;->connected:Z

    .line 636
    new-instance v10, Lsun/net/www/MessageHeader;

    invoke-direct {v10}, Lsun/net/www/MessageHeader;-><init>()V

    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 637
    const/4 v10, 0x0

    iput-boolean v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setRequests:Z

    .line 638
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    .line 492
    .end local v7    # "proxyHost":Ljava/lang/String;
    .end local v8    # "proxyPort":I
    :cond_12
    return-void

    .line 632
    .restart local v7    # "proxyHost":Ljava/lang/String;
    .restart local v8    # "proxyPort":I
    :cond_13
    iget-object v10, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {p0, v10}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;)V

    goto :goto_2
.end method


# virtual methods
.method public addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2770
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 2771
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2772
    :cond_0
    if-nez p1, :cond_1

    .line 2773
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2775
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2776
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 2769
    :cond_2
    return-void
.end method

.method public authObj()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    return-object v0
.end method

.method public authObj(Ljava/lang/Object;)V
    .locals 0
    .param p1, "authObj"    # Ljava/lang/Object;

    .prologue
    .line 453
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    .line 452
    return-void
.end method

.method public connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 851
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->plainConnect()V

    .line 850
    return-void
.end method

.method public disconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2522
    const/4 v3, -0x1

    iput v3, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 2523
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v3, :cond_0

    .line 2524
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v3}, Lsun/net/ProgressSource;->finishTracking()V

    .line 2525
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    .line 2528
    :cond_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v3, :cond_2

    .line 2554
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_4

    .line 2555
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 2558
    .local v0, "hc":Lsun/net/www/http/HttpClient;
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->isKeepingAlive()Z

    move-result v2

    .line 2561
    .local v2, "ka":Z
    :try_start_0
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2569
    :goto_0
    if-eqz v2, :cond_1

    .line 2570
    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->closeIdleConnection()V

    .line 2584
    .end local v0    # "hc":Lsun/net/www/http/HttpClient;
    .end local v2    # "ka":Z
    :cond_1
    :goto_1
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 2585
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/net/URLConnection;->connected:Z

    .line 2587
    :cond_2
    iput-object v5, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    .line 2588
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v3, :cond_3

    .line 2589
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v3}, Lsun/net/www/MessageHeader;->reset()V

    .line 2520
    :cond_3
    return-void

    .line 2578
    :cond_4
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lsun/net/www/http/HttpClient;->setDoNotRetry(Z)V

    .line 2580
    iget-object v3, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v3}, Lsun/net/www/http/HttpClient;->closeServer()V

    goto :goto_1

    .line 2562
    .restart local v0    # "hc":Lsun/net/www/http/HttpClient;
    .restart local v2    # "ka":Z
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized doTunneling()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1761
    const/4 v13, 0x0

    .line 1762
    .local v13, "retryTunnel":I
    :try_start_0
    const-string/jumbo v16, ""

    .line 1763
    .local v16, "statusLine":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1764
    .local v12, "respCode":I
    const/4 v8, 0x0

    .line 1765
    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/4 v9, 0x0

    .line 1766
    .local v9, "proxyHost":Ljava/lang/String;
    const/4 v10, -0x1

    .line 1769
    .local v10, "proxyPort":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1770
    .local v14, "savedRequests":Lsun/net/www/MessageHeader;
    new-instance v18, Lsun/net/www/MessageHeader;

    invoke-direct/range {v18 .. v18}, Lsun/net/www/MessageHeader;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1773
    const/4 v6, 0x0

    .line 1777
    .local v6, "inNegotiateProxy":Z
    :try_start_1
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->SETUP:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    .line 1780
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v9    # "proxyHost":Ljava/lang/String;
    :cond_0
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v18

    if-nez v18, :cond_1

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v9, v10, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 1785
    :cond_1
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->sendCONNECTRequest()V

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V

    .line 1790
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

    .line 1793
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1794
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1797
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1798
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v19, 0x1f4

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1799
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v19, ">>>> Headers are filtered"

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1800
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1804
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v16

    .line 1805
    new-instance v15, Ljava/util/StringTokenizer;

    invoke-direct/range {v15 .. v16}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 1806
    .local v15, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 1807
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1808
    const/16 v18, 0x197

    move/from16 v0, v18

    if-ne v12, v0, :cond_c

    .line 1810
    const/4 v5, 0x0

    .line 1811
    .local v5, "dontUseNegotiate":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    .line 1812
    .local v7, "iter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1813
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 1814
    .local v17, "value":Ljava/lang/String;
    const-string/jumbo v18, "Negotiate"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1815
    const-string/jumbo v18, "Kerberos"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    .line 1814
    if-eqz v18, :cond_4

    .line 1816
    :cond_5
    if-nez v6, :cond_9

    .line 1817
    const/4 v6, 0x1

    .line 1827
    .end local v17    # "value":Ljava/lang/String;
    :cond_6
    :goto_0
    new-instance v4, Lsun/net/www/protocol/http/AuthenticationHeader;

    .line 1828
    const-string/jumbo v18, "Proxy-Authenticate"

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v19, v0

    .line 1829
    new-instance v20, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v22

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v23

    .line 1829
    invoke-direct/range {v20 .. v23}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    .line 1827
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2, v5}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    .line 1833
    .local v4, "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 1835
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v8

    .line 1836
    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v8, :cond_c

    .line 1837
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v9

    .line 1838
    .local v9, "proxyHost":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v10

    .line 1839
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1840
    add-int/lit8 v13, v13, 0x1

    .line 1871
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v9    # "proxyHost":Ljava/lang/String;
    :goto_1
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    move/from16 v0, v18

    if-lt v13, v0, :cond_0

    .line 1873
    .end local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v5    # "dontUseNegotiate":Z
    .end local v7    # "iter":Ljava/util/Iterator;
    :goto_2
    sget v18, Lsun/net/www/protocol/http/HttpURLConnection;->maxRedirects:I

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v12, v0, :cond_f

    .line 1874
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

    .line 1876
    const-string/jumbo v20, "\""

    .line 1874
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1878
    .end local v15    # "st":Ljava/util/StringTokenizer;
    :catchall_0
    move-exception v18

    .line 1879
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1878
    :cond_8
    throw v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v6    # "inNegotiateProxy":Z
    .end local v10    # "proxyPort":I
    .end local v12    # "respCode":I
    .end local v14    # "savedRequests":Lsun/net/www/MessageHeader;
    .end local v16    # "statusLine":Ljava/lang/String;
    :catchall_1
    move-exception v18

    monitor-exit p0

    throw v18

    .line 1819
    .restart local v5    # "dontUseNegotiate":Z
    .restart local v6    # "inNegotiateProxy":Z
    .restart local v7    # "iter":Ljava/util/Iterator;
    .restart local v10    # "proxyPort":I
    .restart local v12    # "respCode":I
    .restart local v14    # "savedRequests":Lsun/net/www/MessageHeader;
    .restart local v15    # "st":Ljava/util/StringTokenizer;
    .restart local v16    # "statusLine":Ljava/lang/String;
    .restart local v17    # "value":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x1

    .line 1820
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    .line 1821
    const/4 v8, 0x0

    .local v8, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto/16 :goto_0

    .line 1844
    .end local v8    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v17    # "value":Ljava/lang/String;
    .restart local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    const-string/jumbo v19, "Proxy-Authenticate"

    invoke-virtual/range {v18 .. v19}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1845
    .local v11, "raw":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    .line 1847
    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v18

    .line 1846
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1, v11}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1848
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1849
    new-instance v18, Ljava/io/IOException;

    const-string/jumbo v19, "Authentication failure"

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1851
    :cond_b
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    .line 1852
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    goto/16 :goto_1

    .line 1857
    .end local v4    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v5    # "dontUseNegotiate":Z
    .end local v7    # "iter":Ljava/util/Iterator;
    .end local v11    # "raw":Ljava/lang/String;
    :cond_c
    if-eqz v8, :cond_d

    .line 1859
    invoke-virtual {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    .line 1862
    :cond_d
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-ne v12, v0, :cond_e

    .line 1863
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->TUNNELING:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V

    goto/16 :goto_2

    .line 1868
    :cond_e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1869
    sget-object v18, Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;->NONE:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 1879
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1885
    :cond_10
    move-object/from16 v0, p0

    iput-object v14, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    .line 1888
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/net/www/MessageHeader;->reset()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 1760
    return-void
.end method

.method public getConnectTimeout()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2872
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

    .prologue
    .line 2919
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1691
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_1

    iget v0, p0, Ljava/net/HttpURLConnection;->responseCode:I

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 1693
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->errorStream:Ljava/io/InputStream;

    return-object v0

    .line 1695
    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 1696
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    return-object v0

    .line 1699
    :cond_1
    return-object v2
.end method

.method public getHeaderField(I)Ljava/lang/String;
    .locals 3
    .param p1, "n"    # I

    .prologue
    .line 2713
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    .line 2717
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    .line 2718
    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v2, p1}, Lsun/net/www/MessageHeader;->getValue(I)Ljava/lang/String;

    move-result-object v2

    .line 2717
    invoke-direct {p0, v1, v2}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2714
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2720
    .end local v0    # "e":Ljava/io/IOException;
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
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 2677
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2680
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    .line 2681
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->filterHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2678
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2684
    .end local v0    # "e":Ljava/io/IOException;
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
    .param p1, "n"    # I

    .prologue
    .line 2730
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2733
    :goto_0
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v1, :cond_0

    .line 2734
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    invoke-virtual {v1, p1}, Lsun/net/www/MessageHeader;->getKey(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2731
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 2737
    .end local v0    # "e":Ljava/io/IOException;
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

    .prologue
    .line 2700
    :try_start_0
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2703
    :goto_0
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getFilteredHeaderFields()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 2701
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 1236
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Ljava/net/URLConnection;->doInput:Z

    if-nez v5, :cond_0

    .line 1237
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

    .line 1241
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    if-eqz v5, :cond_2

    .line 1242
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    instance-of v5, v5, Ljava/lang/RuntimeException;

    if-eqz v5, :cond_1

    .line 1243
    new-instance v5, Ljava/lang/RuntimeException;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    invoke-direct {v5, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 1245
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    check-cast v5, Ljava/io/IOException;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->getChainedException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v5

    throw v5

    .line 1249
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v5, :cond_3

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    .line 1253
    :cond_3
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1254
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v5, :cond_4

    .line 1255
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 1258
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->close()V

    .line 1259
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    invoke-virtual {v5}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;->writtenOK()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1260
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete output stream"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1264
    :cond_5
    const/16 v34, 0x0

    .line 1265
    .local v34, "redirects":I
    const/16 v35, 0x0

    .line 1266
    .local v35, "respCode":I
    const-wide/16 v16, -0x1

    .line 1267
    .local v16, "cl":J
    const/16 v36, 0x0

    .line 1268
    .local v36, "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/16 v32, 0x0

    .line 1269
    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    const/16 v38, 0x0

    .line 1291
    .local v38, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    const/16 v24, 0x0

    .line 1292
    .local v24, "inNegotiate":Z
    const/16 v25, 0x0

    .line 1295
    .local v25, "inNegotiateProxy":Z
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

    .line 1296
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

    .line 1300
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .local v39, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_2
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1301
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1303
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    if-eqz v5, :cond_b

    .line 1304
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1655
    :try_start_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_7

    .line 1656
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1658
    :cond_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 1659
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit p0

    .line 1304
    return-object v5

    .line 1295
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_9
    const/4 v5, 0x0

    goto :goto_0

    .line 1296
    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    .line 1308
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
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

    .line 1310
    .local v27, "meteredInput":Z
    if-eqz v27, :cond_c

    .line 1311
    new-instance v5, Lsun/net/ProgressSource;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-direct {v5, v8, v10}, Lsun/net/ProgressSource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    .line 1312
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v5}, Lsun/net/ProgressSource;->beginTracking()V

    .line 1319
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Ljava/io/PrintStream;

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1322
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    .line 1324
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    move-object/from16 v0, p0

    invoke-virtual {v5, v8, v10, v0}, Lsun/net/www/http/HttpClient;->parseHTTP(Lsun/net/www/MessageHeader;Lsun/net/ProgressSource;Lsun/net/www/protocol/http/HttpURLConnection;)Z

    .line 1325
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x1f4

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1326
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1329
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "WWW-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v13

    .line 1330
    .local v13, "b1":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->filterNTLMResponses(Ljava/lang/String;)Z

    move-result v14

    .line 1331
    .local v14, "b2":Z
    if-nez v13, :cond_f

    if-eqz v14, :cond_10

    .line 1332
    :cond_f
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x1f4

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1333
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const-string/jumbo v8, ">>>> Headers are filtered"

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1334
    sget-object v5, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    invoke-virtual {v8}, Lsun/net/www/MessageHeader;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    .line 1338
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 1340
    invoke-virtual/range {p0 .. p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v35

    .line 1341
    const/4 v5, -0x1

    move/from16 v0, v35

    if-ne v0, v5, :cond_13

    .line 1342
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1343
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid Http response"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1639
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v27    # "meteredInput":Z
    :catch_0
    move-exception v21

    .local v21, "e":Ljava/lang/RuntimeException;
    move-object/from16 v38, v39

    .line 1640
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .local v38, "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_3
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1641
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    .line 1642
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1654
    .end local v21    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v5

    .line 1655
    :goto_4
    :try_start_7
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_11

    .line 1656
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1658
    :cond_11
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_12

    .line 1659
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1654
    :cond_12
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1345
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v27    # "meteredInput":Z
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_13
    const/16 v5, 0x197

    move/from16 v0, v35

    if-ne v0, v5, :cond_1f

    .line 1346
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1347
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1348
    new-instance v5, Ljava/net/HttpRetryException;

    .line 1349
    const-string/jumbo v8, "cannot retry due to proxy authentication, in streaming mode"

    const/16 v10, 0x197

    .line 1348
    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1643
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v27    # "meteredInput":Z
    :catch_1
    move-exception v19

    .local v19, "e":Ljava/io/IOException;
    move-object/from16 v38, v39

    .line 1644
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :goto_5
    :try_start_9
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->rememberedException:Ljava/lang/Exception;

    .line 1648
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Transfer-Encoding"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1649
    .local v40, "te":Ljava/lang/String;
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

    .line 1650
    const-wide/16 v46, 0x0

    cmp-long v5, v16, v46

    if-gtz v5, :cond_14

    if-eqz v40, :cond_15

    const-string/jumbo v5, "chunked"

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1649
    if-eqz v5, :cond_15

    .line 1651
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

    .line 1653
    :cond_15
    throw v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1353
    .end local v19    # "e":Ljava/io/IOException;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v40    # "te":Ljava/lang/String;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v27    # "meteredInput":Z
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_16
    const/16 v18, 0x0

    .line 1354
    .local v18, "dontUseNegotiate":Z
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v26

    .line 1355
    .local v26, "iter":Ljava/util/Iterator;
    :cond_17
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1356
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    .line 1357
    .local v44, "value":Ljava/lang/String;
    const-string/jumbo v5, "Negotiate"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_18

    .line 1358
    const-string/jumbo v5, "Kerberos"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1357
    if-eqz v5, :cond_17

    .line 1359
    :cond_18
    if-nez v25, :cond_1a

    .line 1360
    const/16 v25, 0x1

    .line 1376
    .end local v44    # "value":Ljava/lang/String;
    :cond_19
    :goto_6
    new-instance v12, Lsun/net/www/protocol/http/AuthenticationHeader;

    .line 1377
    const-string/jumbo v5, "Proxy-Authenticate"

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 1378
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v46

    .line 1379
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lsun/net/www/http/HttpClient;->getProxyPortUsed()I

    move-result v47

    .line 1378
    move-object/from16 v0, v45

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v10, v0, v1, v2}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;Ljava/lang/String;I)V

    .line 1376
    move/from16 v0, v18

    invoke-direct {v12, v5, v8, v10, v0}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V

    .line 1383
    .local v12, "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    if-nez v5, :cond_1b

    .line 1385
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v12}, Lsun/net/www/protocol/http/HttpURLConnection;->resetProxyAuthentication(Lsun/net/www/protocol/http/AuthenticationInfo;Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v32

    .line 1386
    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    if-eqz v32, :cond_20

    .line 1387
    add-int/lit8 v34, v34, 0x1

    .line 1388
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v38, v39

    .line 1635
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
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

    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto/16 :goto_2

    .line 1362
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v44    # "value":Ljava/lang/String;
    :cond_1a
    const/16 v18, 0x1

    .line 1363
    const/4 v5, 0x0

    :try_start_c
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    .line 1364
    const/16 v32, 0x0

    .local v32, "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_6

    .line 1393
    .end local v32    # "proxyAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v44    # "value":Ljava/lang/String;
    .restart local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 1394
    .local v33, "raw":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    .line 1396
    invoke-virtual {v12}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v5

    .line 1395
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 1397
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1398
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1654
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v13    # "b1":Z
    .end local v14    # "b2":Z
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v27    # "meteredInput":Z
    .end local v33    # "raw":Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object/from16 v38, v39

    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto/16 :goto_4

    .line 1400
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v13    # "b1":Z
    .restart local v14    # "b2":Z
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v27    # "meteredInput":Z
    .restart local v33    # "raw":Ljava/lang/String;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1c
    if-eqz v36, :cond_1d

    if-eqz v39, :cond_1d

    .line 1402
    invoke-virtual/range {v39 .. v39}, Lsun/net/www/protocol/http/AuthenticationHeader;->headerParser()Lsun/net/www/HeaderParser;

    move-result-object v5

    .line 1401
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 1406
    :cond_1d
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    .line 1407
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    move-object/from16 v38, v39

    .line 1408
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    goto :goto_7

    .line 1403
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1404
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1411
    .end local v12    # "authhdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    :cond_1f
    const/16 v25, 0x0

    .line 1412
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    .line 1413
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    if-nez v5, :cond_20

    .line 1414
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 1418
    :cond_20
    if-eqz v32, :cond_21

    .line 1420
    invoke-virtual/range {v32 .. v32}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    .line 1423
    :cond_21
    const/16 v5, 0x191

    move/from16 v0, v35

    if-ne v0, v5, :cond_2b

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1425
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1426
    new-instance v5, Ljava/net/HttpRetryException;

    .line 1427
    const-string/jumbo v8, "cannot retry due to server authentication, in streaming mode"

    const/16 v10, 0x191

    .line 1426
    invoke-direct {v5, v8, v10}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 1431
    :cond_22
    const/16 v18, 0x0

    .line 1432
    .restart local v18    # "dontUseNegotiate":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "WWW-Authenticate"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->multiValueIterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v26

    .line 1433
    .restart local v26    # "iter":Ljava/util/Iterator;
    :cond_23
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 1434
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v44

    .line 1435
    .restart local v44    # "value":Ljava/lang/String;
    const-string/jumbo v5, "Negotiate"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    .line 1436
    const-string/jumbo v5, "Kerberos"

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    .line 1435
    if-eqz v5, :cond_23

    .line 1437
    :cond_24
    if-nez v24, :cond_26

    .line 1438
    const/16 v24, 0x1

    .line 1448
    .end local v44    # "value":Ljava/lang/String;
    :cond_25
    :goto_8
    new-instance v38, Lsun/net/www/protocol/http/AuthenticationHeader;

    .line 1449
    const-string/jumbo v5, "WWW-Authenticate"

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->responses:Lsun/net/www/MessageHeader;

    .line 1450
    new-instance v10, Lsun/net/www/protocol/http/HttpCallerInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v45, v0

    move-object/from16 v0, v45

    invoke-direct {v10, v0}, Lsun/net/www/protocol/http/HttpCallerInfo;-><init>(Ljava/net/URL;)V

    .line 1448
    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-direct {v0, v5, v8, v10, v1}, Lsun/net/www/protocol/http/AuthenticationHeader;-><init>(Ljava/lang/String;Lsun/net/www/MessageHeader;Lsun/net/www/protocol/http/HttpCallerInfo;Z)V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1454
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :try_start_d
    invoke-virtual/range {v38 .. v38}, Lsun/net/www/protocol/http/AuthenticationHeader;->raw()Ljava/lang/String;

    move-result-object v33

    .line 1455
    .restart local v33    # "raw":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    if-nez v5, :cond_29

    .line 1456
    if-eqz v36, :cond_28

    .line 1457
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;

    move-result-object v5

    sget-object v8, Lsun/net/www/protocol/http/AuthScheme;->NTLM:Lsun/net/www/protocol/http/AuthScheme;

    if-eq v5, v8, :cond_28

    .line 1458
    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->isAuthorizationStale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1460
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    .line 1461
    add-int/lit8 v34, v34, 0x1

    .line 1462
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v8

    .line 1463
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v45

    invoke-virtual {v0, v10, v1}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1462
    invoke-virtual {v5, v8, v10}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 1465
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_7

    .line 1639
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    :catch_2
    move-exception v21

    .restart local v21    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_3

    .line 1440
    .end local v21    # "e":Ljava/lang/RuntimeException;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v44    # "value":Ljava/lang/String;
    :cond_26
    const/16 v18, 0x1

    .line 1441
    const/4 v5, 0x0

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1442
    const/16 v36, 0x0

    .restart local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    goto :goto_8

    .line 1468
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .end local v44    # "value":Ljava/lang/String;
    .restart local v33    # "raw":Ljava/lang/String;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_27
    :try_start_f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    .line 1471
    :cond_28
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lsun/net/www/protocol/http/HttpURLConnection;->getServerAuthentication(Lsun/net/www/protocol/http/AuthenticationHeader;)Lsun/net/www/protocol/http/AuthenticationInfo;

    move-result-object v36

    .line 1472
    .local v36, "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lsun/net/www/protocol/http/HttpURLConnection;->currentServerCredentials:Lsun/net/www/protocol/http/AuthenticationInfo;

    .line 1474
    if-eqz v36, :cond_2c

    .line 1475
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    .line 1476
    add-int/lit8 v34, v34, 0x1

    .line 1477
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    .line 1643
    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    .end local v36    # "serverAuthentication":Lsun/net/www/protocol/http/AuthenticationInfo;
    :catch_3
    move-exception v19

    .restart local v19    # "e":Ljava/io/IOException;
    goto/16 :goto_5

    .line 1481
    .end local v19    # "e":Ljava/io/IOException;
    .restart local v18    # "dontUseNegotiate":Z
    .restart local v26    # "iter":Ljava/util/Iterator;
    .restart local v33    # "raw":Ljava/lang/String;
    :cond_29
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->reset()V

    .line 1483
    const/4 v5, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v5, v2}, Lsun/net/www/protocol/http/AuthenticationInfo;->setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1484
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectWeb()V

    .line 1485
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v8, "Authentication failure"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1487
    :cond_2a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    .line 1488
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->authObj:Ljava/lang/Object;

    .line 1489
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    .end local v18    # "dontUseNegotiate":Z
    .end local v26    # "iter":Ljava/util/Iterator;
    .end local v33    # "raw":Ljava/lang/String;
    .end local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_2b
    move-object/from16 v38, v39

    .line 1494
    .end local v39    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    .restart local v38    # "srvHdr":Lsun/net/www/protocol/http/AuthenticationHeader;
    :cond_2c
    if-eqz v36, :cond_31

    .line 1496
    move-object/from16 v0, v36

    instance-of v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;

    if-eqz v5, :cond_2d

    .line 1497
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    if-nez v5, :cond_34

    .line 1498
    :cond_2d
    move-object/from16 v0, v36

    instance-of v5, v0, Lsun/net/www/protocol/http/BasicAuthentication;

    if-eqz v5, :cond_30

    .line 1500
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lsun/net/www/protocol/http/AuthenticationInfo;->reducePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1501
    .local v28, "npath":Ljava/lang/String;
    move-object/from16 v0, v36

    iget-object v0, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1502
    .local v30, "opath":Ljava/lang/String;
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

    .line 1504
    :cond_2e
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lsun/net/www/protocol/http/BasicAuthentication;->getRootPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1508
    :cond_2f
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsun/net/www/protocol/http/BasicAuthentication;

    .line 1509
    .local v11, "a":Lsun/net/www/protocol/http/BasicAuthentication;
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->removeFromCache()V

    .line 1510
    move-object/from16 v0, v28

    iput-object v0, v11, Lsun/net/www/protocol/http/AuthenticationInfo;->path:Ljava/lang/String;

    .line 1511
    move-object/from16 v36, v11

    .line 1513
    .end local v11    # "a":Lsun/net/www/protocol/http/BasicAuthentication;
    .end local v28    # "npath":Ljava/lang/String;
    .end local v30    # "opath":Ljava/lang/String;
    :cond_30
    invoke-virtual/range {v36 .. v36}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V

    .line 1538
    :cond_31
    const/16 v24, 0x0

    .line 1539
    const/16 v25, 0x0

    .line 1542
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLMp2ndStage:Z

    .line 1543
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->doingNTLM2ndStage:Z

    .line 1544
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserServerAuth:Z

    if-nez v5, :cond_32

    .line 1545
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 1546
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->isUserProxyAuth:Z

    if-nez v5, :cond_33

    .line 1547
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v8, "Proxy-Authorization"

    invoke-virtual {v5, v8}, Lsun/net/www/MessageHeader;->remove(Ljava/lang/String;)V

    .line 1549
    :cond_33
    const/16 v5, 0xc8

    move/from16 v0, v35

    if-ne v0, v5, :cond_35

    .line 1550
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lsun/net/www/protocol/http/HttpURLConnection;->checkResponseCredentials(Z)V

    .line 1556
    :goto_9
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->needToCheck:Z

    .line 1558
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->followRedirect()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1563
    add-int/lit8 v34, v34, 0x1

    .line 1567
    invoke-direct/range {p0 .. p0}, Lsun/net/www/protocol/http/HttpURLConnection;->setCookieHeader()V

    goto/16 :goto_7

    .line 1516
    :cond_34
    move-object/from16 v0, v36

    nop

    nop

    move-object/from16 v37, v0

    .line 1518
    .local v37, "srv":Lsun/net/www/protocol/http/DigestAuthentication;
    new-instance v41, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->domain:Ljava/lang/String;

    const-string/jumbo v8, " "

    move-object/from16 v0, v41

    invoke-direct {v0, v5, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    .local v41, "tok":Ljava/util/StringTokenizer;
    move-object/from16 v0, v37

    iget-object v7, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->realm:Ljava/lang/String;

    .line 1520
    .local v7, "realm":Ljava/lang/String;
    move-object/from16 v0, v37

    iget-object v9, v0, Lsun/net/www/protocol/http/AuthenticationInfo;->pw:Ljava/net/PasswordAuthentication;

    .line 1521
    .local v9, "pw":Ljava/net/PasswordAuthentication;
    move-object/from16 v0, v37

    iget-object v5, v0, Lsun/net/www/protocol/http/DigestAuthentication;->params:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    .line 1522
    :goto_a
    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 1523
    invoke-virtual/range {v41 .. v41}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    move-result-object v31

    .line 1526
    .local v31, "path":Ljava/lang/String;
    :try_start_10
    new-instance v6, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    move-object/from16 v0, v31

    invoke-direct {v6, v5, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 1527
    .local v6, "u":Ljava/net/URL;
    new-instance v4, Lsun/net/www/protocol/http/DigestAuthentication;

    .line 1528
    const-string/jumbo v8, "Digest"

    move-object/from16 v0, p0

    iget-object v10, v0, Lsun/net/www/protocol/http/HttpURLConnection;->digestparams:Lsun/net/www/protocol/http/DigestAuthentication$Parameters;

    const/4 v5, 0x0

    .line 1527
    invoke-direct/range {v4 .. v10}, Lsun/net/www/protocol/http/DigestAuthentication;-><init>(ZLjava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/net/PasswordAuthentication;Lsun/net/www/protocol/http/DigestAuthentication$Parameters;)V

    .line 1529
    .local v4, "d":Lsun/net/www/protocol/http/DigestAuthentication;
    invoke-virtual {v4}, Lsun/net/www/protocol/http/AuthenticationInfo;->addToCache()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto :goto_a

    .line 1530
    .end local v4    # "d":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v6    # "u":Ljava/net/URL;
    :catch_4
    move-exception v20

    .local v20, "e":Ljava/lang/Exception;
    goto :goto_a

    .line 1552
    .end local v7    # "realm":Ljava/lang/String;
    .end local v9    # "pw":Ljava/net/PasswordAuthentication;
    .end local v20    # "e":Ljava/lang/Exception;
    .end local v31    # "path":Ljava/lang/String;
    .end local v37    # "srv":Lsun/net/www/protocol/http/DigestAuthentication;
    .end local v41    # "tok":Ljava/util/StringTokenizer;
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

    .line 1573
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

    .line 1576
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

    .line 1580
    :cond_37
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    if-eqz v5, :cond_38

    .line 1581
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    invoke-virtual {v5}, Lsun/net/ProgressSource;->finishTracking()V

    .line 1582
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->pi:Lsun/net/ProgressSource;

    .line 1584
    :cond_38
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5}, Lsun/net/www/http/HttpClient;->finished()V

    .line 1585
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 1586
    new-instance v5, Lsun/net/www/protocol/http/EmptyInputStream;

    invoke-direct {v5}, Lsun/net/www/protocol/http/EmptyInputStream;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 1587
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Ljava/net/URLConnection;->connected:Z

    .line 1590
    :cond_39
    const/16 v5, 0xc8

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    const/16 v5, 0xcb

    move/from16 v0, v35

    if-ne v0, v5, :cond_40

    .line 1592
    :cond_3a
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    if-eqz v5, :cond_3c

    .line 1594
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v5}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v43

    .line 1595
    .local v43, "uri":Ljava/net/URI;
    if-eqz v43, :cond_3c

    .line 1596
    move-object/from16 v42, p0

    .line 1597
    .local v42, "uconn":Ljava/net/URLConnection;
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

    .line 1602
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

    .line 1610
    :cond_3b
    :goto_e
    :try_start_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-virtual {v5, v0, v1}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v15

    .line 1611
    .local v15, "cacheRequest":Ljava/net/CacheRequest;
    if-eqz v15, :cond_3c

    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v5, :cond_3c

    .line 1612
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v5, v15}, Lsun/net/www/http/HttpClient;->setCacheRequest(Ljava/net/CacheRequest;)V

    .line 1613
    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8, v15}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;Ljava/net/CacheRequest;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 1619
    .end local v15    # "cacheRequest":Ljava/net/CacheRequest;
    .end local v42    # "uconn":Ljava/net/URLConnection;
    .end local v43    # "uri":Ljava/net/URI;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    instance-of v5, v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    if-nez v5, :cond_3d

    .line 1620
    new-instance v5, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;

    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v8}, Lsun/net/www/protocol/http/HttpURLConnection$HttpInputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    .line 1623
    :cond_3d
    const/16 v5, 0x190

    move/from16 v0, v35

    if-lt v0, v5, :cond_42

    .line 1624
    const/16 v5, 0x194

    move/from16 v0, v35

    if-eq v0, v5, :cond_3e

    const/16 v5, 0x19a

    move/from16 v0, v35

    if-ne v0, v5, :cond_41

    .line 1625
    :cond_3e
    new-instance v5, Ljava/io/FileNotFoundException;

    move-object/from16 v0, p0

    iget-object v8, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1577
    :cond_3f
    const/16 v5, 0x130

    move/from16 v0, v35

    if-eq v0, v5, :cond_37

    .line 1578
    const/16 v5, 0xcc

    move/from16 v0, v35

    if-ne v0, v5, :cond_39

    goto/16 :goto_c

    .line 1590
    :cond_40
    const/16 v5, 0xce

    move/from16 v0, v35

    if-eq v0, v5, :cond_3a

    .line 1591
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

    .line 1627
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

    .line 1628
    const-string/jumbo v10, " for URL: "

    .line 1627
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1629
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v10}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1627
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1632
    :cond_42
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 1633
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    .line 1634
    move-object/from16 v0, p0

    iget-object v5, v0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_3
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 1655
    :try_start_16
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_43

    .line 1656
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->proxyAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V

    .line 1658
    :cond_43
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    if-eqz v8, :cond_44

    .line 1659
    move-object/from16 v0, p0

    iget-object v8, v0, Lsun/net/www/protocol/http/HttpURLConnection;->serverAuthKey:Ljava/lang/String;

    invoke-static {v8}, Lsun/net/www/protocol/http/AuthenticationInfo;->endAuthRequest(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_44
    monitor-exit p0

    .line 1634
    return-object v5

    .line 1637
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

    .line 1638
    const-string/jumbo v10, ")"

    .line 1637
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

    .line 1603
    .restart local v42    # "uconn":Ljava/net/URLConnection;
    .restart local v43    # "uri":Ljava/net/URI;
    :catch_5
    move-exception v23

    .local v23, "iae":Ljava/lang/IllegalAccessException;
    goto/16 :goto_e

    .line 1605
    .end local v23    # "iae":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v29

    .local v29, "nsfe":Ljava/lang/NoSuchFieldException;
    goto/16 :goto_e

    .line 1574
    .end local v29    # "nsfe":Ljava/lang/NoSuchFieldException;
    .end local v42    # "uconn":Ljava/net/URLConnection;
    .end local v43    # "uri":Ljava/net/URI;
    :catch_7
    move-exception v22

    .local v22, "exc":Ljava/lang/Exception;
    goto/16 :goto_b
.end method

.method getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2923
    iget-object v0, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 997
    invoke-static {p1, p2, p3, p0}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/net/Proxy;ILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method protected getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "p"    # Ljava/net/Proxy;
    .param p3, "connectTimeout"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1004
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

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, -0x1

    monitor-enter p0

    .line 1072
    :try_start_0
    iget-boolean v8, p0, Ljava/net/URLConnection;->doOutput:Z

    if-nez v8, :cond_0

    .line 1073
    new-instance v8, Ljava/net/ProtocolException;

    const-string/jumbo v9, "cannot write to a URLConnection if doOutput=false - call setDoOutput(true)"

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    :catch_0
    move-exception v1

    .line 1132
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1133
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1077
    :cond_0
    :try_start_2
    iget-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v9, "GET"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1078
    const-string/jumbo v8, "POST"

    iput-object v8, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    .line 1080
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

    .line 1087
    :cond_2
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_4

    .line 1088
    new-instance v8, Ljava/net/ProtocolException;

    const-string/jumbo v9, "Cannot write output after reading input."

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1134
    :catch_1
    move-exception v2

    .line 1137
    .local v2, "e":Ljava/net/ProtocolException;
    :try_start_3
    iget v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 1138
    .local v5, "i":I
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1139
    iput v5, p0, Ljava/net/HttpURLConnection;->responseCode:I

    .line 1140
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1081
    .end local v2    # "e":Ljava/net/ProtocolException;
    .end local v5    # "i":I
    :cond_3
    :try_start_4
    const-string/jumbo v8, "http"

    iget-object v9, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-virtual {v9}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1080
    if-eqz v8, :cond_2

    .line 1082
    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HTTP method "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Ljava/net/HttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1083
    const-string/jumbo v10, " doesn\'t support output"

    .line 1082
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

    .line 1141
    :catch_2
    move-exception v0

    .line 1142
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->disconnectInternal()V

    .line 1143
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1091
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_6
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->checkReuseConnection()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1092
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->connect()V

    .line 1094
    :cond_5
    const/4 v3, 0x0

    .line 1095
    .local v3, "expectContinue":Z
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    const-string/jumbo v9, "Expect"

    invoke-virtual {v8, v9}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1096
    .local v4, "expects":Ljava/lang/String;
    const-string/jumbo v8, "100-Continue"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1097
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lsun/net/www/http/HttpClient;->setIgnoreContinue(Z)V

    .line 1098
    const/4 v3, 0x1

    .line 1101
    :cond_6
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v8, :cond_7

    .line 1102
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->writeRequests()V

    .line 1105
    :cond_7
    if-eqz v3, :cond_8

    .line 1106
    invoke-direct {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->expect100Continue()V

    .line 1108
    :cond_8
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v8}, Lsun/net/www/http/HttpClient;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    check-cast v8, Ljava/io/PrintStream;

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    .line 1109
    invoke-virtual {p0}, Lsun/net/www/protocol/http/HttpURLConnection;->streaming()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1110
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    if-nez v8, :cond_9

    .line 1111
    iget v8, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-eq v8, v10, :cond_a

    .line 1112
    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    .line 1113
    new-instance v9, Lsun/net/www/http/ChunkedOutputStream;

    iget-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    iget v11, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    invoke-direct {v9, v10, v11}, Lsun/net/www/http/ChunkedOutputStream;-><init>(Ljava/io/PrintStream;I)V

    const-wide/16 v10, -0x1

    .line 1112
    invoke-direct {v8, p0, v9, v10, v11}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    .line 1124
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

    .line 1115
    :cond_a
    const-wide/16 v6, 0x0

    .line 1116
    .local v6, "length":J
    :try_start_7
    iget-wide v8, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_c

    .line 1117
    iget-wide v6, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    .line 1121
    :cond_b
    :goto_1
    new-instance v8, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    iget-object v9, p0, Lsun/net/www/protocol/http/HttpURLConnection;->ps:Ljava/io/PrintStream;

    invoke-direct {v8, p0, v9, v6, v7}, Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;Ljava/io/OutputStream;J)V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->strOutputStream:Lsun/net/www/protocol/http/HttpURLConnection$StreamingOutputStream;

    goto :goto_0

    .line 1118
    :cond_c
    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-eq v8, v10, :cond_b

    .line 1119
    iget v8, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    int-to-long v6, v8

    goto :goto_1

    .line 1126
    .end local v6    # "length":J
    :cond_d
    iget-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    if-nez v8, :cond_e

    .line 1127
    new-instance v8, Lsun/net/www/http/PosterOutputStream;

    invoke-direct {v8}, Lsun/net/www/http/PosterOutputStream;-><init>()V

    iput-object v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->poster:Lsun/net/www/http/PosterOutputStream;

    .line 1129
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

    .prologue
    const/4 v0, 0x0

    .line 2915
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

    .prologue
    monitor-enter p0

    .line 2826
    :try_start_0
    iget-boolean v1, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v1, :cond_0

    .line 2827
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

    .line 2830
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-eqz v1, :cond_1

    .line 2831
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    sget-object v2, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lsun/net/www/MessageHeader;->getHeaders([Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2837
    :cond_1
    const/4 v0, 0x0

    .line 2838
    .local v0, "userCookiesMap":Ljava/util/Map;
    :try_start_2
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-nez v1, :cond_2

    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2839
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "userCookiesMap":Ljava/util/Map;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2840
    .local v0, "userCookiesMap":Ljava/util/Map;
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 2841
    const-string/jumbo v1, "Cookie"

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2843
    :cond_3
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 2844
    const-string/jumbo v1, "Cookie2"

    iget-object v2, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2847
    .end local v0    # "userCookiesMap":Ljava/util/Map;
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
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    monitor-enter p0

    .line 2791
    if-nez p1, :cond_0

    monitor-exit p0

    .line 2792
    return-object v2

    .line 2796
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2797
    sget-object v1, Lsun/net/www/protocol/http/HttpURLConnection;->EXCLUDE_HEADERS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    .line 2798
    return-object v2

    .line 2796
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2801
    :cond_2
    :try_start_1
    iget-boolean v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->setUserCookies:Z

    if-nez v1, :cond_4

    .line 2802
    const-string/jumbo v1, "Cookie"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2803
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2805
    :cond_3
    :try_start_2
    const-string/jumbo v1, "Cookie2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2806
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->userCookies2:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 2809
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

    .prologue
    .line 2298
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2299
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v0}, Lsun/net/www/http/HttpClient;->getURLFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requestURI:Ljava/lang/String;

    .line 2301
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

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 870
    iget-boolean v6, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v6, :cond_0

    .line 871
    return-void

    .line 874
    :cond_0
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cacheHandler:Ljava/net/ResponseCache;

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Ljava/net/URLConnection;->getUseCaches()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 876
    :try_start_0
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v5

    .line 877
    .local v5, "uri":Ljava/net/URI;
    if-eqz v5, :cond_3

    .line 878
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

    .line 879
    const-string/jumbo v6, "https"

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 880
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    instance-of v6, v6, Ljava/net/SecureCacheResponse;

    if-eqz v6, :cond_4

    .line 883
    :cond_1
    :goto_0
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 884
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

    .line 885
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

    .line 887
    :cond_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    if-eqz v6, :cond_3

    .line 888
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    invoke-virtual {v6}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v6

    invoke-direct {p0, v6}, Lsun/net/www/protocol/http/HttpURLConnection;->mapToMessageHeader(Ljava/util/Map;)Lsun/net/www/MessageHeader;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    .line 889
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    invoke-virtual {v6}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    .end local v5    # "uri":Ljava/net/URI;
    :cond_3
    :goto_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedHeaders:Lsun/net/www/MessageHeader;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedInputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_6

    .line 896
    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    .line 897
    return-void

    .line 881
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_4
    const/4 v6, 0x0

    :try_start_1
    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 892
    .end local v5    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v1

    .local v1, "ioex":Ljava/io/IOException;
    goto :goto_2

    .line 885
    .end local v1    # "ioex":Ljava/io/IOException;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_5
    const-string/jumbo v6, "null"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 899
    .end local v5    # "uri":Ljava/net/URI;
    :cond_6
    iput-object v10, p0, Lsun/net/www/protocol/http/HttpURLConnection;->cachedResponse:Ljava/net/CacheResponse;

    .line 911
    :cond_7
    :try_start_2
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    if-nez v6, :cond_f

    .line 917
    new-instance v6, Lsun/net/www/protocol/http/HttpURLConnection$5;

    invoke-direct {v6, p0}, Lsun/net/www/protocol/http/HttpURLConnection$5;-><init>(Lsun/net/www/protocol/http/HttpURLConnection;)V

    .line 916
    invoke-static {v6}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/ProxySelector;

    .line 922
    .local v4, "sel":Ljava/net/ProxySelector;
    if-eqz v4, :cond_d

    .line 923
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    invoke-static {v6}, Lsun/net/www/ParseUtil;->toURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v5

    .line 924
    .restart local v5    # "uri":Ljava/net/URI;
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 925
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

    .line 927
    :cond_8
    invoke-virtual {v4, v5}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 929
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 930
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/Proxy;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 932
    .local v3, "p":Ljava/net/Proxy;
    :try_start_3
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_b

    .line 933
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    invoke-virtual {p0, v6, v3, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 934
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 941
    :goto_3
    sget-object v6, Lsun/net/www/protocol/http/HttpURLConnection;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v7, 0x12c

    invoke-virtual {v6, v7}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 942
    if-eqz v3, :cond_a

    .line 943
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

    .line 986
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v4    # "sel":Ljava/net/ProxySelector;
    .end local v5    # "uri":Ljava/net/URI;
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

    .line 991
    iput-boolean v11, p0, Ljava/net/URLConnection;->connected:Z

    .line 869
    return-void

    .line 938
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v3    # "p":Ljava/net/Proxy;
    .restart local v4    # "sel":Ljava/net/ProxySelector;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_b
    :try_start_5
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v3, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 939
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 947
    :catch_1
    move-exception v1

    .line 948
    .restart local v1    # "ioex":Ljava/io/IOException;
    :try_start_6
    sget-object v6, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-eq v3, v6, :cond_c

    .line 949
    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    .line 950
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    .line 952
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 953
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 987
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v4    # "sel":Ljava/net/ProxySelector;
    .end local v5    # "uri":Ljava/net/URI;
    :catch_2
    move-exception v0

    .line 988
    .local v0, "e":Ljava/io/IOException;
    throw v0

    .line 957
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "ioex":Ljava/io/IOException;
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .restart local v3    # "p":Ljava/net/Proxy;
    .restart local v4    # "sel":Ljava/net/ProxySelector;
    .restart local v5    # "uri":Ljava/net/URI;
    :cond_c
    :try_start_7
    throw v1

    .line 964
    .end local v1    # "ioex":Ljava/io/IOException;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/Proxy;>;"
    .end local v3    # "p":Ljava/net/Proxy;
    .end local v5    # "uri":Ljava/net/URI;
    :cond_d
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_e

    .line 965
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8, v7}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 966
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto :goto_4

    .line 970
    :cond_e
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v7, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 971
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto :goto_4

    .line 975
    .end local v4    # "sel":Ljava/net/ProxySelector;
    :cond_f
    iget-boolean v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->failedOnce:Z

    if-nez v6, :cond_10

    .line 976
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    invoke-virtual {p0, v6, v7, v8}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;I)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 977
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    goto/16 :goto_4

    .line 981
    :cond_10
    iget-object v6, p0, Ljava/net/URLConnection;->url:Ljava/net/URL;

    iget-object v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->instProxy:Ljava/net/Proxy;

    iget v8, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Lsun/net/www/protocol/http/HttpURLConnection;->getNewHttpClient(Ljava/net/URL;Ljava/net/Proxy;IZ)Lsun/net/www/http/HttpClient;

    move-result-object v6

    iput-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 982
    iget-object v6, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v7, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v6, v7}, Lsun/net/NetworkClient;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4
.end method

.method protected proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 706
    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p0

    .line 705
    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 707
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 704
    return-void
.end method

.method public setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2785
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->checkMessageHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2784
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 2852
    if-gez p1, :cond_0

    .line 2853
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2854
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    .line 2851
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setNewClient(Ljava/net/URL;Z)V

    .line 651
    return-void
.end method

.method protected setNewClient(Ljava/net/URL;Z)V
    .locals 6
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    iget v4, p0, Lsun/net/www/protocol/http/HttpURLConnection;->connectTimeout:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    move-object v0, p1

    move v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lsun/net/www/http/HttpClient;->New(Ljava/net/URL;Ljava/lang/String;IZILsun/net/www/protocol/http/HttpURLConnection;)Lsun/net/www/http/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    .line 665
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    iget v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    invoke-virtual {v0, v1}, Lsun/net/NetworkClient;->setReadTimeout(I)V

    .line 663
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lsun/net/www/protocol/http/HttpURLConnection;->setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 679
    return-void
.end method

.method protected setProxiedClient(Ljava/net/URL;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxyHost"    # Ljava/lang/String;
    .param p3, "proxyPort"    # I
    .param p4, "useCache"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/net/www/protocol/http/HttpURLConnection;->proxiedConnect(Ljava/net/URL;Ljava/lang/String;IZ)V

    .line 697
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 2897
    if-gez p1, :cond_0

    .line 2898
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeouts can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2899
    :cond_0
    iput p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->readTimeout:I

    .line 2896
    return-void
.end method

.method public setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 2747
    iget-boolean v0, p0, Ljava/net/URLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 2748
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2749
    :cond_0
    if-nez p1, :cond_1

    .line 2750
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2752
    :cond_1
    invoke-direct {p0, p1, p2}, Lsun/net/www/protocol/http/HttpURLConnection;->isExternalMessageHeaderAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2753
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->requests:Lsun/net/www/MessageHeader;

    invoke-virtual {v0, p1, p2}, Lsun/net/www/MessageHeader;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2746
    :cond_2
    return-void
.end method

.method public setTunnelState(Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;)V
    .locals 0
    .param p1, "tunnelState"    # Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    .prologue
    .line 1754
    iput-object p1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    .line 1753
    return-void
.end method

.method public streaming()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v6, -0x1

    .line 1148
    iget v1, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    if-ne v1, v6, :cond_0

    iget-wide v2, p0, Ljava/net/HttpURLConnection;->fixedContentLengthLong:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1149
    :cond_1
    iget v1, p0, Ljava/net/HttpURLConnection;->chunkLength:I

    if-ne v1, v6, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method tunnelState()Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;
    .locals 1

    .prologue
    .line 1745
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpURLConnection;->tunnelState:Lsun/net/www/protocol/http/HttpURLConnection$TunnelState;

    return-object v0
.end method

.method public usingProxy()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2594
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    if-eqz v1, :cond_1

    .line 2595
    iget-object v1, p0, Lsun/net/www/protocol/http/HttpURLConnection;->http:Lsun/net/www/http/HttpClient;

    invoke-virtual {v1}, Lsun/net/www/http/HttpClient;->getProxyHostUsed()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2597
    :cond_1
    return v0
.end method
