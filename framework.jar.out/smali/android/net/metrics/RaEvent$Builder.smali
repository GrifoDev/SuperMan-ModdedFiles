.class public Landroid/net/metrics/RaEvent$Builder;
.super Ljava/lang/Object;
.source "RaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/RaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field dnsslLifetime:J

.field prefixPreferredLifetime:J

.field prefixValidLifetime:J

.field rdnssLifetime:J

.field routeInfoLifetime:J

.field routerLifetime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    return-void
.end method

.method private updateLifetime(JJ)J
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-wide p3

    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public build()Landroid/net/metrics/RaEvent;
    .locals 14

    new-instance v1, Landroid/net/metrics/RaEvent;

    iget-wide v2, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    iget-wide v4, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    iget-wide v6, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    iget-wide v8, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    iget-wide v10, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    iget-wide v12, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    invoke-direct/range {v1 .. v13}, Landroid/net/metrics/RaEvent;-><init>(JJJJJJ)V

    return-object v1
.end method

.method public updateDnsslLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->dnsslLifetime:J

    return-object p0
.end method

.method public updatePrefixPreferredLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixPreferredLifetime:J

    return-object p0
.end method

.method public updatePrefixValidLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->prefixValidLifetime:J

    return-object p0
.end method

.method public updateRdnssLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->rdnssLifetime:J

    return-object p0
.end method

.method public updateRouteInfoLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routeInfoLifetime:J

    return-object p0
.end method

.method public updateRouterLifetime(J)Landroid/net/metrics/RaEvent$Builder;
    .locals 3

    iget-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/net/metrics/RaEvent$Builder;->updateLifetime(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent$Builder;->routerLifetime:J

    return-object p0
.end method
