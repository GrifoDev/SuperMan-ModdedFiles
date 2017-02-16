.class public Lsun/net/ftp/impl/FtpClient;
.super Lsun/net/ftp/FtpClient;
.source "FtpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/ftp/impl/FtpClient$1;,
        Lsun/net/ftp/impl/FtpClient$DefaultParser;,
        Lsun/net/ftp/impl/FtpClient$FtpFileIterator;,
        Lsun/net/ftp/impl/FtpClient$MLSxParser;
    }
.end annotation


# static fields
.field private static MDTMformats:[Ljava/lang/String;

.field private static dateFormats:[Ljava/text/SimpleDateFormat;

.field private static defaultConnectTimeout:I

.field private static defaultSoTimeout:I

.field private static encoding:Ljava/lang/String;

.field private static epsvPat:Ljava/util/regex/Pattern;

.field private static linkp:Ljava/util/regex/Pattern;

.field private static final logger:Lsun/util/logging/PlatformLogger;

.field private static pasvPat:Ljava/util/regex/Pattern;

.field private static patStrings:[Ljava/lang/String;

.field private static patternGroups:[[I

.field private static patterns:[Ljava/util/regex/Pattern;

.field private static transPat:Ljava/util/regex/Pattern;


# instance fields
.field private connectTimeout:I

.field private df:Ljava/text/DateFormat;

.field private in:Ljava/io/InputStream;

.field private lastFileName:Ljava/lang/String;

.field private lastReplyCode:Lsun/net/ftp/FtpReplyCode;

.field private lastTransSize:J

.field private loggedIn:Z

.field private mlsxParser:Lsun/net/ftp/FtpDirParser;

.field private oldSocket:Ljava/net/Socket;

.field private out:Ljava/io/PrintStream;

.field private parser:Lsun/net/ftp/FtpDirParser;

.field private final passiveMode:Z

.field private proxy:Ljava/net/Proxy;

.field private readTimeout:I

.field private replyPending:Z

.field private restartOffset:J

.field private server:Ljava/net/Socket;

.field private serverAddr:Ljava/net/InetSocketAddress;

.field private serverResponse:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sslFact:Ljavax/net/ssl/SSLSocketFactory;

.field private type:Lsun/net/ftp/FtpClient$TransferType;

.field private useCrypto:Z

.field private welcomeMsg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lsun/net/ftp/impl/FtpClient;)Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get2()[[I
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    return-object v0
.end method

.method static synthetic -get3()[Ljava/util/regex/Pattern;
    .locals 1

    sget-object v0, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic -get4(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method static synthetic -get5(Lsun/net/ftp/impl/FtpClient;)Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    const-string/jumbo v4, "sun.net.ftp.FtpClient"

    invoke-static {v4}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v4

    .line 56
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    .line 66
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 91
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    .line 93
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d\\d:\\d\\d)\\s*(\\p{Print}*)"

    aput-object v5, v4, v7

    .line 95
    const-string/jumbo v5, "([\\-ld](?:[r\\-][w\\-][x\\-]){3})\\s*\\d+ (\\w+)\\s*(\\w+)\\s*(\\d+)\\s*([A-Z][a-z][a-z]\\s*\\d+)\\s*(\\d{4})\\s*(\\p{Print}*)"

    aput-object v5, v4, v8

    .line 97
    const-string/jumbo v5, "(\\d{2}/\\d{2}/\\d{4})\\s*(\\d{2}:\\d{2}[ap])\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    aput-object v5, v4, v11

    .line 99
    const-string/jumbo v5, "(\\d{2}-\\d{2}-\\d{2})\\s*(\\d{2}:\\d{2}[AP]M)\\s*((?:[0-9,]+)|(?:<DIR>))\\s*(\\p{Graph}*)"

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 91
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    .line 101
    const/4 v4, 0x4

    new-array v4, v4, [[I

    .line 104
    new-array v5, v9, [I

    fill-array-data v5, :array_0

    aput-object v5, v4, v7

    .line 105
    new-array v5, v9, [I

    fill-array-data v5, :array_1

    aput-object v5, v4, v8

    .line 106
    new-array v5, v9, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v11

    .line 107
    new-array v5, v9, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 101
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patternGroups:[[I

    .line 109
    const-string/jumbo v4, "(\\p{Print}+) \\-\\> (\\p{Print}+)$"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->linkp:Ljava/util/regex/Pattern;

    .line 113
    filled-new-array {v7, v7}, [I

    move-result-object v3

    .line 114
    .local v3, "vals":[I
    new-array v1, v8, [Ljava/lang/String;

    aput-object v10, v1, v7

    .line 117
    .local v1, "encs":[Ljava/lang/String;
    new-instance v4, Lsun/net/ftp/impl/FtpClient$1;

    invoke-direct {v4, v3, v1}, Lsun/net/ftp/impl/FtpClient$1;-><init>([I[Ljava/lang/String;)V

    .line 116
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 126
    aget v4, v3, v7

    if-nez v4, :cond_1

    .line 127
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    .line 132
    :goto_0
    aget v4, v3, v8

    if-nez v4, :cond_2

    .line 133
    const/4 v4, -0x1

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    .line 138
    :goto_1
    aget-object v4, v1, v7

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    .line 140
    :try_start_0
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-static {v4}, Lsun/net/ftp/impl/FtpClient;->isASCIISuperset(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_2
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/util/regex/Pattern;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    .line 148
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 149
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->patterns:[Ljava/util/regex/Pattern;

    sget-object v5, Lsun/net/ftp/impl/FtpClient;->patStrings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    aput-object v5, v4, v2

    .line 148
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 129
    .end local v2    # "i":I
    :cond_1
    aget v4, v3, v7

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    goto :goto_0

    .line 135
    :cond_2
    aget v4, v3, v8

    sput v4, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    goto :goto_1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ISO8859_1"

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    goto :goto_2

    .line 371
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_3
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 548
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 549
    sput-object v10, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 1744
    new-array v4, v11, [Ljava/lang/String;

    .line 1745
    const-string/jumbo v5, "yyyyMMddHHmmss.SSS"

    aput-object v5, v4, v7

    .line 1746
    const-string/jumbo v5, "yyyyMMddHHmmss"

    aput-object v5, v4, v8

    .line 1744
    sput-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    .line 1748
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    sput-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    .line 1751
    const/4 v2, 0x0

    :goto_4
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    .line 1752
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->MDTMformats:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    .line 1753
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    aget-object v4, v4, v2

    const-string/jumbo v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1751
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 52
    :cond_4
    return-void

    .line 104
    nop

    :array_0
    .array-data 4
        0x7
        0x4
        0x5
        0x6
        0x0
        0x1
        0x2
        0x3
    .end array-data

    .line 105
    :array_1
    .array-data 4
        0x7
        0x4
        0x5
        0x0
        0x6
        0x1
        0x2
        0x3
    .end array-data

    .line 106
    :array_2
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 107
    :array_3
    .array-data 4
        0x4
        0x3
        0x1
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 811
    invoke-direct {p0}, Lsun/net/ftp/FtpClient;-><init>()V

    .line 62
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 63
    iput v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 69
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 70
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 71
    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v3}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    .line 77
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 83
    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->passiveMode:Z

    .line 84
    sget-object v0, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 85
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 110
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->df:Ljava/text/DateFormat;

    .line 369
    new-instance v0, Lsun/net/ftp/impl/FtpClient$DefaultParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$DefaultParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$DefaultParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 370
    new-instance v0, Lsun/net/ftp/impl/FtpClient$MLSxParser;

    invoke-direct {v0, p0, v2}, Lsun/net/ftp/impl/FtpClient$MLSxParser;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/impl/FtpClient$MLSxParser;)V

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    .line 811
    return-void
.end method

.method public static create()Lsun/net/ftp/FtpClient;
    .locals 1

    .prologue
    .line 820
    new-instance v0, Lsun/net/ftp/impl/FtpClient;

    invoke-direct {v0}, Lsun/net/ftp/impl/FtpClient;-><init>()V

    return-object v0
.end method

.method private createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 793
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_0

    .line 794
    new-instance v0, Lsun/net/TelnetInputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-object v0

    .line 796
    :cond_0
    return-object p1
.end method

.method private createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 800
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v0, v1, :cond_0

    .line 801
    new-instance v0, Lsun/net/TelnetOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0

    .line 803
    :cond_0
    return-object p1
.end method

.method private disconnect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 971
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 974
    :cond_0
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 975
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 976
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    .line 977
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 978
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 979
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 980
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 981
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 982
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    .line 970
    return-void
.end method

.method private doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;
    .locals 3
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 930
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_2

    .line 931
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v1, v2, :cond_1

    .line 933
    new-instance v1, Lsun/net/ftp/impl/FtpClient$4;

    invoke-direct {v1, p0}, Lsun/net/ftp/impl/FtpClient$4;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 932
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    .line 949
    .local v0, "s":Ljava/net/Socket;
    :goto_0
    if-ltz p2, :cond_3

    .line 950
    invoke-virtual {v0, p1, p2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 962
    :goto_1
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v1, :cond_6

    .line 963
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 967
    :cond_0
    :goto_2
    return-object v0

    .line 940
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v0, Ljava/net/Socket;

    sget-object v1, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    .line 943
    .end local v0    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    .restart local v0    # "s":Ljava/net/Socket;
    goto :goto_0

    .line 952
    :cond_3
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v1, :cond_4

    .line 953
    iget v1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 955
    :cond_4
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v1, :cond_5

    .line 956
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v0, p1, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto :goto_1

    .line 958
    :cond_5
    invoke-virtual {v0, p1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto :goto_1

    .line 964
    :cond_6
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v1, :cond_0

    .line 965
    sget v1, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_2
.end method

.method private getResponseString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private getResponseStrings()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    return-object v0
.end method

.method private getSecurityData()[B
    .locals 5

    .prologue
    const/16 v4, 0x9

    .line 1909
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1910
    .local v2, "s":Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ADAT="

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1911
    new-instance v0, Lsun/misc/BASE64Decoder;

    invoke-direct {v0}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 1915
    .local v0, "decoder":Lsun/misc/BASE64Decoder;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lsun/misc/CharacterDecoder;->decodeBuffer(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 1916
    :catch_0
    move-exception v1

    .line 1920
    .end local v0    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method private getTransferName()V
    .locals 4

    .prologue
    .line 398
    const/4 v3, 0x0

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 399
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "response":Ljava/lang/String;
    const-string/jumbo v3, "unique file name:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 401
    .local v1, "i":I
    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 402
    .local v0, "e":I
    if-ltz v1, :cond_0

    .line 403
    add-int/lit8 v1, v1, 0x11

    .line 404
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    .line 397
    :cond_0
    return-void
.end method

.method private getTransferSize()V
    .locals 6

    .prologue
    .line 374
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 381
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    .line 382
    .local v1, "response":Ljava/lang/String;
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    if-nez v3, :cond_0

    .line 383
    const-string/jumbo v3, "150 Opening .*\\((\\d+) bytes\\)."

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    sput-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    .line 385
    :cond_0
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->transPat:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 386
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 387
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    .line 373
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static isASCIISuperset(Ljava/lang/String;)Z
    .locals 4
    .param p0, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    const-string/jumbo v2, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz-_.!~*\'();/?:@&=+$,"

    .line 176
    .local v2, "chkS":Ljava/lang/String;
    const/16 v3, 0x51

    new-array v1, v3, [B

    .local v1, "chkB":[B
    fill-array-data v1, :array_0

    .line 182
    invoke-virtual {v2, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    .local v0, "b":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    return v3

    .line 176
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x2dt
        0x5ft
        0x2et
        0x21t
        0x7et
        0x2at
        0x27t
        0x28t
        0x29t
        0x3bt
        0x2ft
        0x3ft
        0x3at
        0x40t
        0x26t
        0x3dt
        0x2bt
        0x24t
        0x2ct
    .end array-data
.end method

.method private issueCommand(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    .line 523
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Not connected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 525
    :cond_0
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v1, :cond_1

    .line 527
    :try_start_0
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    .line 532
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->sendServer(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v1

    return v1

    .line 528
    :catch_0
    move-exception v0

    .local v0, "e":Lsun/net/ftp/FtpProtocolException;
    goto :goto_0
.end method

.method private issueCommandCheck(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 543
    :cond_0
    return-void
.end method

.method private openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 710
    :try_start_0
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    return-object v9

    .line 711
    :catch_0
    move-exception v2

    .line 714
    .local v2, "e":Lsun/net/ftp/FtpProtocolException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 715
    .local v3, "errmsg":Ljava/lang/String;
    const-string/jumbo v9, "PASV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "EPSV"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 724
    :cond_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_2

    .line 728
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v10, "Passive mode failed"

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 716
    :cond_1
    throw v2

    .line 732
    :cond_2
    new-instance v8, Ljava/net/ServerSocket;

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-direct {v8, v11, v12, v9}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 734
    .local v8, "portSocket":Ljava/net/ServerSocket;
    :try_start_1
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 735
    .local v6, "myAddress":Ljava/net/InetAddress;
    invoke-virtual {v6}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 736
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 745
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "EPRT |"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    instance-of v9, v6, Ljava/net/Inet6Address;

    if-eqz v9, :cond_7

    const-string/jumbo v9, "2"

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 746
    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 746
    const-string/jumbo v10, "|"

    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 746
    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 746
    const-string/jumbo v10, "|"

    .line 745
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 747
    .local v7, "portCmd":Ljava/lang/String;
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 764
    :goto_1
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_a

    .line 765
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 771
    :cond_4
    :goto_2
    invoke-virtual {v8}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 772
    .local v1, "clientSocket":Ljava/net/Socket;
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_b

    .line 773
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    :cond_5
    :goto_3
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 782
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_6

    .line 784
    :try_start_2
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v10, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v10}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v11}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v1, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    .line 789
    :cond_6
    return-object v1

    .line 745
    .end local v1    # "clientSocket":Ljava/net/Socket;
    .end local v7    # "portCmd":Ljava/lang/String;
    :cond_7
    :try_start_3
    const-string/jumbo v9, "1"

    goto :goto_0

    .line 749
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_8
    const-string/jumbo v7, "PORT "

    .line 750
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 753
    .local v0, "addr":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    array-length v9, v0

    if-ge v5, v9, :cond_9

    .line 754
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-byte v10, v0, v5

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 753
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 758
    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    ushr-int/lit8 v10, v10, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 759
    invoke-direct {p0, v7}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 760
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 779
    .end local v0    # "addr":[B
    .end local v5    # "i":I
    .end local v6    # "myAddress":Ljava/net/InetAddress;
    .end local v7    # "portCmd":Ljava/lang/String;
    :catchall_0
    move-exception v9

    .line 780
    invoke-virtual {v8}, Ljava/net/ServerSocket;->close()V

    .line 779
    throw v9

    .line 767
    .restart local v6    # "myAddress":Ljava/net/InetAddress;
    .restart local v7    # "portCmd":Ljava/lang/String;
    :cond_a
    :try_start_4
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_4

    .line 768
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v8, v9}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    goto/16 :goto_2

    .line 775
    .restart local v1    # "clientSocket":Ljava/net/Socket;
    :cond_b
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_5

    .line 776
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v1, v9}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 785
    :catch_1
    move-exception v4

    .line 786
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private openPassiveDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    .locals 13
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 561
    const/4 v1, 0x0

    .line 574
    .local v1, "dest":Ljava/net/InetSocketAddress;
    const-string/jumbo v9, "EPSV ALL"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 576
    const-string/jumbo v9, "EPSV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_0

    .line 586
    const-string/jumbo v9, "^229 .* \\(\\|\\|\\|(\\d+)\\|\\)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    .line 588
    :cond_0
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->epsvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 589
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    .line 590
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "EPSV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 593
    :cond_1
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 594
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 595
    .local v4, "port":I
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v9}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 596
    .local v0, "add":Ljava/net/InetAddress;
    if-eqz v0, :cond_4

    .line 597
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v0, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 637
    .end local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :goto_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    if-eqz v9, :cond_9

    .line 638
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {v9}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v9

    sget-object v10, Ljava/net/Proxy$Type;->SOCKS:Ljava/net/Proxy$Type;

    if-ne v9, v10, :cond_8

    .line 640
    new-instance v9, Lsun/net/ftp/impl/FtpClient$2;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$2;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 639
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/Socket;

    .line 654
    .local v6, "s":Ljava/net/Socket;
    :goto_1
    new-instance v9, Lsun/net/ftp/impl/FtpClient$3;

    invoke-direct {v9, p0}, Lsun/net/ftp/impl/FtpClient$3;-><init>(Lsun/net/ftp/impl/FtpClient;)V

    .line 653
    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    .line 663
    .local v7, "serverAddress":Ljava/net/InetAddress;
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v7, v12}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v6, v9}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 665
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    if-ltz v9, :cond_a

    .line 666
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 674
    :goto_2
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    if-ltz v9, :cond_c

    .line 675
    iget v9, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 679
    :cond_2
    :goto_3
    iget-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v9, :cond_3

    .line 681
    :try_start_0
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v9, v6, v10, v11, v12}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 686
    :cond_3
    invoke-direct {p0, p1}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_e

    .line 687
    invoke-virtual {v6}, Ljava/net/Socket;->close()V

    .line 688
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v9

    sget-object v10, Lsun/net/ftp/FtpReplyCode;->FILE_UNAVAILABLE:Lsun/net/ftp/FtpReplyCode;

    if-ne v9, v10, :cond_d

    .line 690
    new-instance v9, Ljava/io/FileNotFoundException;

    invoke-direct {v9, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 603
    .end local v6    # "s":Ljava/net/Socket;
    .end local v7    # "serverAddress":Ljava/net/InetAddress;
    .restart local v0    # "add":Ljava/net/InetAddress;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_4
    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v9}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v4}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto :goto_0

    .line 607
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "port":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v8    # "serverAnswer":Ljava/lang/String;
    .local v1, "dest":Ljava/net/InetSocketAddress;
    :cond_5
    const-string/jumbo v9, "PASV"

    invoke-direct {p0, v9}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v8

    .line 622
    .restart local v8    # "serverAnswer":Ljava/lang/String;
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    if-nez v9, :cond_6

    .line 623
    const-string/jumbo v9, "227 .* \\(?(\\d{1,3},\\d{1,3},\\d{1,3},\\d{1,3}),(\\d{1,3}),(\\d{1,3})\\)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    .line 625
    :cond_6
    sget-object v9, Lsun/net/ftp/impl/FtpClient;->pasvPat:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 626
    .restart local v3    # "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_7

    .line 627
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "PASV failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 630
    :cond_7
    const/4 v9, 0x3

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x2

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    add-int v4, v9, v10

    .line 632
    .restart local v4    # "port":I
    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2c

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 633
    .restart local v5    # "s":Ljava/lang/String;
    new-instance v1, Ljava/net/InetSocketAddress;

    .end local v1    # "dest":Ljava/net/InetSocketAddress;
    invoke-direct {v1, v5, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .local v1, "dest":Ljava/net/InetSocketAddress;
    goto/16 :goto_0

    .line 647
    :cond_8
    new-instance v6, Ljava/net/Socket;

    sget-object v9, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-direct {v6, v9}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    .line 650
    .end local v6    # "s":Ljava/net/Socket;
    :cond_9
    new-instance v6, Ljava/net/Socket;

    invoke-direct {v6}, Ljava/net/Socket;-><init>()V

    .restart local v6    # "s":Ljava/net/Socket;
    goto/16 :goto_1

    .line 668
    .restart local v7    # "serverAddress":Ljava/net/InetAddress;
    :cond_a
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    if-lez v9, :cond_b

    .line 669
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultConnectTimeout:I

    invoke-virtual {v6, v1, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    goto/16 :goto_2

    .line 671
    :cond_b
    invoke-virtual {v6, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    goto/16 :goto_2

    .line 676
    :cond_c
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    if-lez v9, :cond_2

    .line 677
    sget v9, Lsun/net/ftp/impl/FtpClient;->defaultSoTimeout:I

    invoke-virtual {v6, v9}, Ljava/net/Socket;->setSoTimeout(I)V

    goto/16 :goto_3

    .line 682
    :catch_0
    move-exception v2

    .line 683
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can\'t open secure data channel: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_d
    new-instance v9, Lsun/net/ftp/FtpProtocolException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastReplyCode()Lsun/net/ftp/FtpReplyCode;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v9

    .line 694
    :cond_e
    return-object v6
.end method

.method private readReply()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 498
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readServerResponse()I

    move-result v0

    invoke-static {v0}, Lsun/net/ftp/FtpReplyCode;->find(I)Lsun/net/ftp/FtpReplyCode;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 500
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositivePreliminary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    iput-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 502
    return v2

    .line 504
    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-virtual {v0}, Lsun/net/ftp/FtpReplyCode;->isPositiveIntermediate()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 505
    :cond_1
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->CLOSING_DATA_CONNECTION:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_2

    .line 506
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferName()V

    .line 508
    :cond_2
    return v2

    .line 510
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private readServerResponse()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v14, 0xa

    const/4 v13, 0x4

    const/4 v12, -0x1

    const/4 v11, 0x3

    const/4 v10, 0x0

    .line 413
    new-instance v5, Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 415
    .local v5, "replyBuf":Ljava/lang/StringBuffer;
    const/4 v2, -0x1

    .line 419
    .local v2, "continuingCode":I
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v10}, Ljava/util/Vector;->setSize(I)V

    .line 421
    :cond_0
    :goto_0
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    if-eq v0, v12, :cond_2

    .line 422
    const/16 v7, 0xd

    if-ne v0, v7, :cond_1

    .line 423
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v14, :cond_1

    .line 424
    const/16 v7, 0xd

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 427
    :cond_1
    int-to-char v7, v0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 428
    if-ne v0, v14, :cond_0

    .line 432
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 433
    .local v6, "response":Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 434
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v8, 0x12c

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    sget-object v7, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Server ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] --> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 438
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    .line 439
    const/4 v1, -0x1

    .line 451
    .local v1, "code":I
    :goto_1
    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 452
    if-eq v2, v12, :cond_7

    .line 454
    if-ne v1, v2, :cond_0

    .line 455
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_4

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_0

    .line 459
    :cond_4
    const/4 v2, -0x1

    .line 470
    :cond_5
    return v1

    .line 442
    .end local v1    # "code":I
    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .restart local v1    # "code":I
    goto :goto_1

    .line 443
    .end local v1    # "code":I
    :catch_0
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/NumberFormatException;
    const/4 v1, -0x1

    .restart local v1    # "code":I
    goto :goto_1

    .line 462
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v13, :cond_5

    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_5

    .line 463
    move v2, v1

    .line 464
    goto/16 :goto_0

    .line 445
    .end local v1    # "code":I
    :catch_1
    move-exception v4

    .local v4, "e":Ljava/lang/StringIndexOutOfBoundsException;
    goto/16 :goto_0
.end method

.method private sendSecurityData([B)Z
    .locals 4
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1903
    new-instance v0, Lsun/misc/BASE64Encoder;

    invoke-direct {v0}, Lsun/misc/BASE64Encoder;-><init>()V

    .line 1904
    .local v0, "encoder":Lsun/misc/BASE64Encoder;
    invoke-virtual {v0, p1}, Lsun/misc/CharacterEncoder;->encode([B)Ljava/lang/String;

    move-result-object v1

    .line 1905
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ADAT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private sendServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 475
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 476
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    sget-object v0, Lsun/net/ftp/impl/FtpClient;->logger:Lsun/util/logging/PlatformLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Server ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] <-- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method

.method private tryConnect(Ljava/net/InetSocketAddress;I)V
    .locals 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 916
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 918
    :cond_0
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->doConnect(Ljava/net/InetSocketAddress;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 920
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 921
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 920
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 925
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 914
    return-void

    .line 922
    :catch_0
    move-exception v0

    .line 923
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private tryLogin(Ljava/lang/String;[C)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USER "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v1, Lsun/net/ftp/FtpReplyCode;->NEED_PASSWORD:Lsun/net/ftp/FtpReplyCode;

    if-ne v0, v1, :cond_0

    .line 1029
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PASS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1022
    :cond_0
    return-void
.end method


# virtual methods
.method public abort()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1555
    const-string/jumbo v0, "ABOR"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1574
    return-object p0
.end method

.method public allocate(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ALLO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2125
    return-object p0
.end method

.method public appendFile(Ljava/lang/String;Ljava/io/InputStream;)Lsun/net/ftp/FtpClient;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "APPE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    .line 1380
    .local v3, "s":Ljava/net/Socket;
    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    .line 1381
    .local v2, "remote":Ljava/io/OutputStream;
    const/16 v4, 0x3a98

    new-array v0, v4, [B

    .line 1383
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_1

    .line 1384
    if-lez v1, :cond_0

    .line 1385
    invoke-virtual {v2, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1388
    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1389
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v4

    return-object v4
.end method

.method public changeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "remoteDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1147
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1148
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "directory can\'t be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1151
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CWD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1152
    return-object p0
.end method

.method public changeToParentDirectory()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1162
    const-string/jumbo v0, "CDUP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1163
    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1123
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    const-string/jumbo v0, "QUIT"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommand(Ljava/lang/String;)Z

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1127
    :cond_0
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V

    .line 1122
    return-void
.end method

.method public completePending()Lsun/net/ftp/FtpClient;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1611
    :cond_0
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    if-eqz v0, :cond_1

    .line 1612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->replyPending:Z

    .line 1613
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1614
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->getLastResponseString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1617
    :cond_1
    return-object p0
.end method

.method public connect(Ljava/net/SocketAddress;)Lsun/net/ftp/FtpClient;
    .locals 1
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lsun/net/ftp/impl/FtpClient;->connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;I)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "dest"    # Ljava/net/SocketAddress;
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1009
    instance-of v0, p1, Ljava/net/InetSocketAddress;

    if-nez v0, :cond_0

    .line 1010
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Wrong address type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1012
    :cond_0
    nop

    nop

    .end local p1    # "dest":Ljava/net/SocketAddress;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    .line 1013
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-direct {p0, v0, p2}, Lsun/net/ftp/impl/FtpClient;->tryConnect(Ljava/net/InetSocketAddress;I)V

    .line 1014
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->readReply()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1015
    new-instance v0, Lsun/net/ftp/FtpProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Welcome message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1016
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v2

    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1016
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    .line 1015
    invoke-direct {v0, v1, v2}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v0

    .line 1018
    :cond_1
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1019
    return-object p0
.end method

.method public deleteFile(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DELE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1415
    return-object p0
.end method

.method public enablePassiveMode(Z)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "passive"    # Z

    .prologue
    .line 835
    return-object p0
.end method

.method public endSecureSession()Lsun/net/ftp/FtpClient;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2094
    iget-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-nez v1, :cond_0

    .line 2095
    return-object p0

    .line 2098
    :cond_0
    const-string/jumbo v1, "CCC"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2099
    const-string/jumbo v1, "PROT C"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2100
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2102
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2103
    const/4 v1, 0x0

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2105
    :try_start_0
    new-instance v1, Ljava/io/PrintStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2106
    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v4, 0x1

    .line 2105
    invoke-direct {v1, v2, v4, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2110
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2112
    return-object p0

    .line 2107
    :catch_0
    move-exception v0

    .line 2108
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "encoding not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    return v0
.end method

.method public getFeatures()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v0, "features":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "FEAT"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1536
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v2

    .line 1539
    .local v2, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 1540
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1542
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    .end local v3    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public getFile(Ljava/lang/String;Ljava/io/OutputStream;)Lsun/net/ftp/FtpClient;
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x3a98

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 1223
    iget-wide v4, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_2

    .line 1226
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "REST "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1228
    .local v3, "s":Ljava/net/Socket;
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RETR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1231
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1232
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 1233
    .local v2, "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1235
    .local v0, "buf":[B
    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    if-ltz v1, :cond_1

    .line 1236
    if-lez v1, :cond_0

    .line 1237
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 1227
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v4

    .line 1228
    iput-wide v10, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1227
    throw v4

    .line 1240
    .restart local v0    # "buf":[B
    .restart local v1    # "l":I
    .restart local v2    # "remote":Ljava/io/InputStream;
    .restart local v3    # "s":Ljava/net/Socket;
    :cond_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1254
    :goto_1
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v4

    return-object v4

    .line 1242
    .end local v0    # "buf":[B
    .end local v1    # "l":I
    .end local v2    # "remote":Ljava/io/InputStream;
    .end local v3    # "s":Ljava/net/Socket;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RETR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v3

    .line 1243
    .restart local v3    # "s":Ljava/net/Socket;
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1244
    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    .line 1245
    .restart local v2    # "remote":Ljava/io/InputStream;
    new-array v0, v9, [B

    .line 1247
    .restart local v0    # "buf":[B
    :cond_3
    :goto_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .restart local v1    # "l":I
    if-ltz v1, :cond_4

    .line 1248
    if-lez v1, :cond_3

    .line 1249
    invoke-virtual {p2, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1252
    :cond_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_1
.end method

.method public getFileStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 1270
    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_1

    .line 1272
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "REST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1274
    .local v0, "s":Ljava/net/Socket;
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1276
    if-nez v0, :cond_0

    .line 1277
    return-object v4

    .line 1273
    .end local v0    # "s":Ljava/net/Socket;
    :catchall_0
    move-exception v1

    .line 1274
    iput-wide v6, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1273
    throw v1

    .line 1279
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1281
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1284
    .end local v0    # "s":Ljava/net/Socket;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RETR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1285
    .restart local v0    # "s":Ljava/net/Socket;
    if-nez v0, :cond_2

    .line 1286
    return-object v4

    .line 1288
    :cond_2
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getTransferSize()V

    .line 1289
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public getHelp(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HELP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2192
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 2193
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2195
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 2199
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 2200
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 2201
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2200
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2203
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified(Ljava/lang/String;)Ljava/util/Date;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1770
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MDTM "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1771
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v4, v5, :cond_1

    .line 1772
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1773
    .local v3, "s":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1774
    .local v0, "d":Ljava/util/Date;
    sget-object v5, Lsun/net/ftp/impl/FtpClient;->dateFormats:[Ljava/text/SimpleDateFormat;

    const/4 v4, 0x0

    array-length v6, v5

    .end local v0    # "d":Ljava/util/Date;
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 1776
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v1, v3}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1779
    :goto_1
    if-eqz v0, :cond_0

    .line 1780
    return-object v0

    .line 1777
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/text/ParseException;
    goto :goto_1

    .line 1774
    .end local v2    # "ex":Ljava/text/ParseException;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1784
    .end local v1    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "s":Ljava/lang/String;
    :cond_1
    return-object v7
.end method

.method public getLastReplyCode()Lsun/net/ftp/FtpReplyCode;
    .locals 1

    .prologue
    .line 1986
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    return-object v0
.end method

.method public getLastResponseString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1996
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1997
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_1

    .line 1998
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1999
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2000
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2004
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getLastTransferSize()J
    .locals 2

    .prologue
    .line 2016
    iget-wide v0, p0, Lsun/net/ftp/impl/FtpClient;->lastTransSize:J

    return-wide v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 889
    iget v0, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    return v0
.end method

.method public getServerAddress()Ljava/net/SocketAddress;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 995
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize(Ljava/lang/String;)J
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1733
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1734
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "path can\'t be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1736
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SIZE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1737
    iget-object v1, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v2, Lsun/net/ftp/FtpReplyCode;->FILE_STATUS:Lsun/net/ftp/FtpReplyCode;

    if-ne v1, v2, :cond_2

    .line 1738
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1739
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1740
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2

    .line 1742
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1472
    if-nez p1, :cond_0

    const-string/jumbo v3, "STAT"

    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1497
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseStrings()Ljava/util/Vector;

    move-result-object v1

    .line 1498
    .local v1, "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1499
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 1500
    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1499
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1472
    .end local v0    # "i":I
    .end local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STAT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1502
    .restart local v0    # "i":I
    .restart local v1    # "resp":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2153
    const-string/jumbo v1, "SYST"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2157
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    .local v0, "resp":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getWelcomeMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkingDirectory()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1175
    const-string/jumbo v1, "PWD"

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1181
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->getResponseString()Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, "answ":Ljava/lang/String;
    const-string/jumbo v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1183
    const/4 v1, 0x0

    return-object v1

    .line 1185
    :cond_0
    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    return v0
.end method

.method public isPassiveModeEnabled()Z
    .locals 1

    .prologue
    .line 844
    const/4 v0, 0x1

    return v0
.end method

.method public list(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1688
    if-nez p1, :cond_0

    const-string/jumbo v1, "LIST"

    :goto_0
    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1689
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_1

    .line 1690
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1688
    .end local v0    # "s":Ljava/net/Socket;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LIST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1692
    .restart local v0    # "s":Ljava/net/Socket;
    :cond_1
    return-object v3
.end method

.method public listFiles(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Lsun/net/ftp/FtpDirEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1880
    const/4 v1, 0x0

    .line 1881
    .local v1, "s":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 1883
    .local v2, "sin":Ljava/io/BufferedReader;
    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v3, "MLSD"

    :goto_0
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;
    :try_end_0
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1889
    .end local v1    # "s":Ljava/net/Socket;
    :goto_1
    if-eqz v1, :cond_1

    .line 1890
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1891
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->mlsxParser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1883
    .restart local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MLSD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lsun/net/ftp/FtpProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0

    .line 1893
    .end local v1    # "s":Ljava/net/Socket;
    :cond_1
    if-nez p1, :cond_2

    const-string/jumbo v3, "LIST"

    :goto_2
    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v1

    .line 1894
    .local v1, "s":Ljava/net/Socket;
    if-eqz v1, :cond_3

    .line 1895
    new-instance v2, Ljava/io/BufferedReader;

    .end local v2    # "sin":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1896
    .local v2, "sin":Ljava/io/BufferedReader;
    new-instance v3, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    invoke-direct {v3, p0, v4, v2}, Lsun/net/ftp/impl/FtpClient$FtpFileIterator;-><init>(Lsun/net/ftp/impl/FtpClient;Lsun/net/ftp/FtpDirParser;Ljava/io/BufferedReader;)V

    return-object v3

    .line 1893
    .end local v1    # "s":Ljava/net/Socket;
    .local v2, "sin":Ljava/io/BufferedReader;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LIST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1899
    .restart local v1    # "s":Ljava/net/Socket;
    :cond_3
    return-object v5

    .line 1884
    .local v1, "s":Ljava/net/Socket;
    :catch_0
    move-exception v0

    .local v0, "FtpException":Lsun/net/ftp/FtpProtocolException;
    goto :goto_1
.end method

.method public login(Ljava/lang/String;[C)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 1044
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1045
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1047
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1048
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1050
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1055
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1056
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 1057
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1058
    .local v1, "l":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 1059
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_3

    const-string/jumbo v3, "230"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1061
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1063
    :cond_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1056
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1066
    .end local v1    # "l":Ljava/lang/String;
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1067
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1068
    return-object p0
.end method

.method public login(Ljava/lang/String;[CLjava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 6
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .param p3, "account"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    .line 1083
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1084
    new-instance v3, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v4, "Not connected yet"

    sget-object v5, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v3, v4, v5}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v3

    .line 1086
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1087
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "User name can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1089
    :cond_2
    invoke-direct {p0, p1, p2}, Lsun/net/ftp/impl/FtpClient;->tryLogin(Ljava/lang/String;[C)V

    .line 1094
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->lastReplyCode:Lsun/net/ftp/FtpReplyCode;

    sget-object v4, Lsun/net/ftp/FtpReplyCode;->NEED_ACCOUNT:Lsun/net/ftp/FtpReplyCode;

    if-ne v3, v4, :cond_3

    .line 1095
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACCT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1100
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1101
    .local v2, "sb":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    if-eqz v3, :cond_6

    .line 1102
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->serverResponse:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1103
    .local v0, "l":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 1104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_5

    const-string/jumbo v3, "230"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1106
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1108
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1112
    .end local v0    # "l":Ljava/lang/String;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lsun/net/ftp/impl/FtpClient;->welcomeMsg:Ljava/lang/String;

    .line 1113
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1114
    return-object p0
.end method

.method public makeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MKD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1428
    return-object p0
.end method

.method public nameList(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NLST "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v0

    .line 1713
    .local v0, "s":Ljava/net/Socket;
    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lsun/net/ftp/impl/FtpClient;->createInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1

    .line 1716
    :cond_0
    return-object v3
.end method

.method public noop()Lsun/net/ftp/FtpClient;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1452
    const-string/jumbo v0, "NOOP"

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1453
    return-object p0
.end method

.method public putFile(Ljava/lang/String;Ljava/io/InputStream;Z)Lsun/net/ftp/FtpClient;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "local"    # Ljava/io/InputStream;
    .param p3, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1348
    if-eqz p3, :cond_1

    const-string/jumbo v1, "STOU "

    .line 1350
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v6, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v5, v6, :cond_3

    .line 1351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v4

    .line 1352
    .local v4, "s":Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {p0, v5}, Lsun/net/ftp/impl/FtpClient;->createOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 1353
    .local v3, "remote":Ljava/io/OutputStream;
    const/16 v5, 0x3a98

    new-array v0, v5, [B

    .line 1355
    .local v0, "buf":[B
    :cond_0
    :goto_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "l":I
    if-ltz v2, :cond_2

    .line 1356
    if-lez v2, :cond_0

    .line 1357
    invoke-virtual {v3, v0, v7, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1348
    .end local v0    # "buf":[B
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_1
    const-string/jumbo v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1360
    .restart local v0    # "buf":[B
    .restart local v2    # "l":I
    .restart local v3    # "remote":Ljava/io/OutputStream;
    .restart local v4    # "s":Ljava/net/Socket;
    :cond_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1362
    .end local v0    # "buf":[B
    .end local v2    # "l":I
    .end local v3    # "remote":Ljava/io/OutputStream;
    .end local v4    # "s":Ljava/net/Socket;
    :cond_3
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->completePending()Lsun/net/ftp/FtpClient;

    move-result-object v5

    return-object v5
.end method

.method public putFileStream(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "unique"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1320
    if-eqz p2, :cond_0

    const-string/jumbo v1, "STOU "

    .line 1321
    .local v1, "cmd":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lsun/net/ftp/impl/FtpClient;->openDataConnection(Ljava/lang/String;)Ljava/net/Socket;

    move-result-object v2

    .line 1322
    .local v2, "s":Ljava/net/Socket;
    if-nez v2, :cond_1

    .line 1323
    return-object v4

    .line 1320
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v2    # "s":Ljava/net/Socket;
    :cond_0
    const-string/jumbo v1, "STOR "

    .restart local v1    # "cmd":Ljava/lang/String;
    goto :goto_0

    .line 1325
    .restart local v2    # "s":Ljava/net/Socket;
    :cond_1
    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    sget-object v4, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 1326
    .local v0, "bm":Z
    :goto_1
    new-instance v3, Lsun/net/TelnetOutputStream;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lsun/net/TelnetOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    return-object v3

    .line 1325
    .end local v0    # "bm":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "bm":Z
    goto :goto_1
.end method

.method public reInit()Lsun/net/ftp/FtpClient;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1626
    const-string/jumbo v2, "REIN"

    invoke-direct {p0, v2}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1627
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->loggedIn:Z

    .line 1628
    iget-boolean v2, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    if-eqz v2, :cond_0

    .line 1629
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    instance-of v2, v2, Ljavax/net/ssl/SSLSocket;

    if-eqz v2, :cond_0

    .line 1630
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    check-cast v2, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    .line 1631
    .local v1, "session":Ljavax/net/ssl/SSLSession;
    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 1633
    iget-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 1634
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 1636
    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1637
    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v5, 0x1

    .line 1636
    invoke-direct {v2, v3, v5, v4}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1641
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 1644
    .end local v1    # "session":Ljavax/net/ssl/SSLSession;
    :cond_0
    iput-boolean v6, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 1645
    return-object p0

    .line 1638
    .restart local v1    # "session":Ljavax/net/ssl/SSLSession;
    :catch_0
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "encoding not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeDirectory(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RMD "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1442
    return-object p0
.end method

.method public rename(Ljava/lang/String;Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RNFR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RNTO "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1402
    return-object p0
.end method

.method public setConnectTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 856
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->connectTimeout:I

    .line 857
    return-object p0
.end method

.method public setDirParser(Lsun/net/ftp/FtpDirParser;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Lsun/net/ftp/FtpDirParser;

    .prologue
    .line 1798
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->parser:Lsun/net/ftp/FtpDirParser;

    .line 1799
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "p"    # Ljava/net/Proxy;

    .prologue
    .line 893
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->proxy:Ljava/net/Proxy;

    .line 894
    return-object p0
.end method

.method public setReadTimeout(I)Lsun/net/ftp/FtpClient;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 878
    iput p1, p0, Lsun/net/ftp/impl/FtpClient;->readTimeout:I

    .line 879
    return-object p0
.end method

.method public setRestartOffset(J)Lsun/net/ftp/FtpClient;
    .locals 3
    .param p1, "offset"    # J

    .prologue
    .line 1200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "offset can\'t be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1203
    :cond_0
    iput-wide p1, p0, Lsun/net/ftp/impl/FtpClient;->restartOffset:J

    .line 1204
    return-object p0
.end method

.method public setType(Lsun/net/ftp/FtpClient$TransferType;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "type"    # Lsun/net/ftp/FtpClient$TransferType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1657
    const-string/jumbo v0, "NOOP"

    .line 1659
    .local v0, "cmd":Ljava/lang/String;
    iput-object p1, p0, Lsun/net/ftp/impl/FtpClient;->type:Lsun/net/ftp/FtpClient$TransferType;

    .line 1660
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->ASCII:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_0

    .line 1661
    const-string/jumbo v0, "TYPE A"

    .line 1663
    :cond_0
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->BINARY:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_1

    .line 1664
    const-string/jumbo v0, "TYPE I"

    .line 1666
    :cond_1
    sget-object v1, Lsun/net/ftp/FtpClient$TransferType;->EBCDIC:Lsun/net/ftp/FtpClient$TransferType;

    if-ne p1, v1, :cond_2

    .line 1667
    const-string/jumbo v0, "TYPE E"

    .line 1669
    :cond_2
    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 1670
    return-object p0
.end method

.method public siteCmd(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SITE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2217
    return-object p0
.end method

.method public startSecureSession()Lsun/net/ftp/FtpClient;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2046
    invoke-virtual {p0}, Lsun/net/ftp/impl/FtpClient;->isConnected()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2047
    new-instance v4, Lsun/net/ftp/FtpProtocolException;

    const-string/jumbo v5, "Not connected yet"

    sget-object v6, Lsun/net/ftp/FtpReplyCode;->BAD_SEQUENCE:Lsun/net/ftp/FtpReplyCode;

    invoke-direct {v4, v5, v6}, Lsun/net/ftp/FtpProtocolException;-><init>(Ljava/lang/String;Lsun/net/ftp/FtpReplyCode;)V

    throw v4

    .line 2049
    :cond_0
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_1

    .line 2051
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :cond_1
    const-string/jumbo v4, "AUTH TLS"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2057
    const/4 v2, 0x0

    .line 2059
    .local v2, "s":Ljava/net/Socket;
    :try_start_1
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->sslFact:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v6}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lsun/net/ftp/impl/FtpClient;->serverAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v7}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 2068
    .local v2, "s":Ljava/net/Socket;
    iget-object v4, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->oldSocket:Ljava/net/Socket;

    .line 2069
    iput-object v2, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    .line 2071
    :try_start_2
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    iget-object v6, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2072
    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    const/4 v7, 0x1

    .line 2071
    invoke-direct {v4, v5, v7, v6}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->out:Ljava/io/PrintStream;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2076
    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lsun/net/ftp/impl/FtpClient;->server:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v4, p0, Lsun/net/ftp/impl/FtpClient;->in:Ljava/io/InputStream;

    .line 2078
    const-string/jumbo v4, "PBSZ 0"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2079
    const-string/jumbo v4, "PROT P"

    invoke-direct {p0, v4}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2080
    iput-boolean v9, p0, Lsun/net/ftp/impl/FtpClient;->useCrypto:Z

    .line 2081
    return-object p0

    .line 2052
    .end local v2    # "s":Ljava/net/Socket;
    :catch_0
    move-exception v1

    .line 2053
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2060
    .end local v1    # "e":Ljava/lang/Exception;
    .local v2, "s":Ljava/net/Socket;
    :catch_1
    move-exception v3

    .line 2062
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_3
    invoke-direct {p0}, Lsun/net/ftp/impl/FtpClient;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2065
    :goto_0
    throw v3

    .line 2063
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 2073
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .local v2, "s":Ljava/net/Socket;
    :catch_3
    move-exception v0

    .line 2074
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v4, Ljava/lang/InternalError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lsun/net/ftp/impl/FtpClient;->encoding:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "encoding not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public structureMount(Ljava/lang/String;)Lsun/net/ftp/FtpClient;
    .locals 2
    .param p1, "struct"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SMNT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/net/ftp/impl/FtpClient;->issueCommandCheck(Ljava/lang/String;)V

    .line 2140
    return-object p0
.end method

.method public useKerberos()Lsun/net/ftp/FtpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lsun/net/ftp/FtpProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1967
    return-object p0
.end method
