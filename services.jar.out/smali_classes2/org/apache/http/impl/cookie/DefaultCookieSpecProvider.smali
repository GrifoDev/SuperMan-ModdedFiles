.class public Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;
.super Ljava/lang/Object;
.source "DefaultCookieSpecProvider.java"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;

.field private final oneHeader:Z

.field private final publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 3

    sget-object v0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;Lorg/apache/http/conn/util/PublicSuffixMatcher;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->DEFAULT:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    :cond_0
    iput-object p1, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    iput-object p2, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    iput-object p3, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    iput-boolean p4, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 11

    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v5, :cond_0

    :goto_0
    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object v5

    :cond_0
    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-eqz v5, :cond_1

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
    new-instance v4, Lorg/apache/http/impl/cookie/RFC2965Spec;

    iget-boolean v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/16 v6, 0x9

    new-array v6, v6, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2965VersionAttributeHandler;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2965DomainAttributeHandler;-><init>()V

    iget-object v8, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v7, v8}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2965PortAttributeHandler;-><init>()V

    const/4 v8, 0x3

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v8, 0x4

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v8, 0x5

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v8, 0x6

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2965CommentUrlAttributeHandler;-><init>()V

    const/4 v8, 0x7

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2965DiscardAttributeHandler;-><init>()V

    const/16 v8, 0x8

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lorg/apache/http/impl/cookie/RFC2965Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    new-instance v3, Lorg/apache/http/impl/cookie/RFC2109Spec;

    iget-boolean v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->oneHeader:Z

    const/4 v6, 0x6

    new-array v6, v6, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2109VersionHandler;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/RFC2109DomainHandler;-><init>()V

    iget-object v8, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v7, v8}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicMaxAgeHandler;-><init>()V

    const/4 v8, 0x3

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v8, 0x4

    aput-object v7, v6, v8

    new-instance v7, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v7}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v8, 0x5

    aput-object v7, v6, v8

    invoke-direct {v3, v5, v6}, Lorg/apache/http/impl/cookie/RFC2109Spec;-><init>(Z[Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    new-instance v2, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    const/4 v5, 0x5

    new-array v6, v5, [Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    new-instance v5, Lorg/apache/http/impl/cookie/BasicDomainHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicDomainHandler;-><init>()V

    iget-object v7, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->publicSuffixMatcher:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    invoke-static {v5, v7}, Lorg/apache/http/impl/cookie/PublicSuffixDomainFilter;->decorate(Lorg/apache/http/cookie/CommonCookieAttributeHandler;Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/cookie/CommonCookieAttributeHandler;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->compatibilityLevel:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    sget-object v7, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;->IE_MEDIUM_SECURITY:Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$CompatibilityLevel;

    const/4 v8, 0x1

    if-eq v5, v7, :cond_2

    new-instance v5, Lorg/apache/http/impl/cookie/BasicPathHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicPathHandler;-><init>()V

    :goto_2
    aput-object v5, v6, v8

    new-instance v5, Lorg/apache/http/impl/cookie/BasicSecureHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicSecureHandler;-><init>()V

    const/4 v7, 0x2

    aput-object v5, v6, v7

    new-instance v5, Lorg/apache/http/impl/cookie/BasicCommentHandler;

    invoke-direct {v5}, Lorg/apache/http/impl/cookie/BasicCommentHandler;-><init>()V

    const/4 v7, 0x3

    aput-object v5, v6, v7

    new-instance v7, Lorg/apache/http/impl/cookie/BasicExpiresHandler;

    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    const/4 v8, 0x4

    if-nez v5, :cond_3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v9, "EEE, dd-MMM-yy HH:mm:ss z"

    const/4 v10, 0x0

    aput-object v9, v5, v10

    :goto_3
    invoke-direct {v7, v5}, Lorg/apache/http/impl/cookie/BasicExpiresHandler;-><init>([Ljava/lang/String;)V

    aput-object v7, v6, v8

    invoke-direct {v2, v6}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Lorg/apache/http/cookie/CommonCookieAttributeHandler;)V

    new-instance v5, Lorg/apache/http/impl/cookie/DefaultCookieSpec;

    invoke-direct {v5, v4, v3, v2}, Lorg/apache/http/impl/cookie/DefaultCookieSpec;-><init>(Lorg/apache/http/impl/cookie/RFC2965Spec;Lorg/apache/http/impl/cookie/RFC2109Spec;Lorg/apache/http/impl/cookie/NetscapeDraftSpec;)V

    iput-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    goto/16 :goto_1

    :cond_2
    new-instance v5, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$1;

    invoke-direct {v5, p0}, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider$1;-><init>(Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lorg/apache/http/impl/cookie/DefaultCookieSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
