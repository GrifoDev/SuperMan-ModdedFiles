.class Lsun/net/www/protocol/http/NegotiateAuthentication;
.super Lsun/net/www/protocol/http/AuthenticationInfo;
.source "NegotiateAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;
    }
.end annotation


# static fields
.field static cache:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lsun/net/www/protocol/http/Negotiator;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64L

.field static supported:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hci:Lsun/net/www/protocol/http/HttpCallerInfo;

.field private negotiator:Lsun/net/www/protocol/http/Negotiator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    sput-object v0, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lsun/net/www/protocol/http/HttpCallerInfo;)V
    .locals 4

    sget-object v0, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    iget-object v1, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->authType:Ljava/net/Authenticator$RequestorType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x70

    :goto_0
    iget-object v1, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    const-string/jumbo v2, "Negotiate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->NEGOTIATE:Lsun/net/www/protocol/http/AuthScheme;

    :goto_1
    iget-object v2, p1, Lsun/net/www/protocol/http/HttpCallerInfo;->url:Ljava/net/URL;

    const-string/jumbo v3, ""

    invoke-direct {p0, v0, v1, v2, v3}, Lsun/net/www/protocol/http/AuthenticationInfo;-><init>(CLsun/net/www/protocol/http/AuthScheme;Ljava/net/URL;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    iput-object p1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    return-void

    :cond_0
    const/16 v0, 0x73

    goto :goto_0

    :cond_1
    sget-object v1, Lsun/net/www/protocol/http/AuthScheme;->KERBEROS:Lsun/net/www/protocol/http/AuthScheme;

    goto :goto_1
.end method

.method private firstToken()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/net/www/protocol/http/Negotiator;

    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    if-eqz v1, :cond_0

    sget-object v1, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    :cond_1
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    if-nez v1, :cond_2

    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    invoke-static {v1}, Lsun/net/www/protocol/http/Negotiator;->getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;

    move-result-object v1

    iput-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    if-nez v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Cannot initialize Negotiator"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2
    iget-object v1, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    invoke-virtual {v1}, Lsun/net/www/protocol/http/Negotiator;->firstToken()[B

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized isSupported(Lsun/net/www/protocol/http/HttpCallerInfo;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v3, Lsun/net/www/protocol/http/NegotiateAuthentication;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lsun/net/www/protocol/http/HttpCallerInfo;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_1
    :try_start_1
    invoke-static {p0}, Lsun/net/www/protocol/http/Negotiator;->getNegotiator(Lsun/net/www/protocol/http/HttpCallerInfo;)Lsun/net/www/protocol/http/Negotiator;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->cache:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return v6

    :cond_2
    :try_start_2
    sget-object v2, Lsun/net/www/protocol/http/NegotiateAuthentication;->supported:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v3

    return v5

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private nextToken([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->negotiator:Lsun/net/www/protocol/http/Negotiator;

    invoke-virtual {v0, p1}, Lsun/net/www/protocol/http/Negotiator;->nextToken([B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHeaderValue(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getHeaderValue not supported"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAuthorizationStale(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized setHeaders(Lsun/net/www/protocol/http/HttpURLConnection;Lsun/net/www/HeaderParser;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, "\\s+"

    invoke-virtual {p3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-le v4, v7, :cond_0

    new-instance v4, Lsun/misc/BASE64Decoder;

    invoke-direct {v4}, Lsun/misc/BASE64Decoder;-><init>()V

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lsun/net/www/protocol/http/NegotiateAuthentication;->hci:Lsun/net/www/protocol/http/HttpCallerInfo;

    iget-object v5, v5, Lsun/net/www/protocol/http/HttpCallerInfo;->scheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;

    invoke-direct {v6, p0}, Lsun/net/www/protocol/http/NegotiateAuthentication$B64Encoder;-><init>(Lsun/net/www/protocol/http/NegotiateAuthentication;)V

    if-nez v1, :cond_1

    invoke-direct {p0}, Lsun/net/www/protocol/http/NegotiateAuthentication;->firstToken()[B

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lsun/net/www/protocol/http/AuthenticationInfo;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lsun/net/www/protocol/http/HttpURLConnection;->setAuthenticationProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lsun/net/www/protocol/http/NegotiateAuthentication;->nextToken([B)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public supportsPreemptiveAuthorization()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
