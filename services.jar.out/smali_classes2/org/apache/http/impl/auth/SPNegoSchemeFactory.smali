.class public Lorg/apache/http/impl/auth/SPNegoSchemeFactory;
.super Ljava/lang/Object;
.source "SPNegoSchemeFactory.java"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;
.implements Lorg/apache/http/auth/AuthSchemeProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final stripPort:Z

.field private final useCanonicalHostname:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    iput-boolean p2, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/auth/SPNegoScheme;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    iget-boolean v2, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/SPNegoScheme;-><init>(ZZ)V

    return-object v0
.end method

.method public isStripPort()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    return v0
.end method

.method public isUseCanonicalHostname()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    return v0
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 3

    new-instance v0, Lorg/apache/http/impl/auth/SPNegoScheme;

    iget-boolean v1, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->stripPort:Z

    iget-boolean v2, p0, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;->useCanonicalHostname:Z

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/auth/SPNegoScheme;-><init>(ZZ)V

    return-object v0
.end method
