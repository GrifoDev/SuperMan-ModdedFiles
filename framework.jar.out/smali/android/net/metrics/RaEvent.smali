.class public final Landroid/net/metrics/RaEvent;
.super Ljava/lang/Object;
.source "RaEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/RaEvent$1;,
        Landroid/net/metrics/RaEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/RaEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_LIFETIME:J = -0x1L


# instance fields
.field public final dnsslLifetime:J

.field public final prefixPreferredLifetime:J

.field public final prefixValidLifetime:J

.field public final rdnssLifetime:J

.field public final routeInfoLifetime:J

.field public final routerLifetime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/RaEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/RaEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/RaEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJJJJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide p3, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide p5, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide p7, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide p9, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide p11, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/RaEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/RaEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "RaEvent(lifetimes: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "router=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "prefix_valid=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "prefix_preferred=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "route_info=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "rdnss=%ds, "

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "dnssl=%ds)"

    new-array v2, v7, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routerLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
