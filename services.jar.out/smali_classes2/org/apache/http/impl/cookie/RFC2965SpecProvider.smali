.class public Lorg/apache/http/impl/cookie/RFC2965SpecProvider;
.super Ljava/lang/Object;
.source "RFC2965SpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/http/annotation/Obsolete;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    iput-object p1, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 7

    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_0

    :goto_0
    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v2

    :cond_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v2, :cond_1

    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    new-instance v2, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-boolean v3, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->oneHeader:Z

    const/16 v4, 0x9

    new-array v4, v4, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v5, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v6, 0x1

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v6, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v5, v6}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v6, 0x3

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v6, 0x4

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v6, 0x5

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v6, 0x6

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const/4 v6, 0x7

    aput-object v5, v4, v6

    new-instance v5, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const/16 v6, 0x8

    aput-object v5, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    iput-object v2, p0, Lorg/apache/http/impl/cookie/RFC2965SpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
