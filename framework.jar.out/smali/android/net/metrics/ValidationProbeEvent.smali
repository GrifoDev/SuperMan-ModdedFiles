.class public final Landroid/net/metrics/ValidationProbeEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "ValidationProbeEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/ValidationProbeEvent$1;,
        Landroid/net/metrics/ValidationProbeEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/ValidationProbeEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DNS_FAILURE:I = 0x0

.field public static final DNS_SUCCESS:I = 0x1

.field public static final PROBE_DNS:I = 0x0

.field public static final PROBE_HTTP:I = 0x1

.field public static final PROBE_HTTPS:I = 0x2

.field public static final PROBE_PAC:I = 0x3


# instance fields
.field public final durationMs:J

.field public final netId:I

.field public final probeType:I

.field public final returnCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/ValidationProbeEvent$1;-><init>()V

    .line 70
    sput-object v0, Landroid/net/metrics/ValidationProbeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(IJII)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "durationMs"    # J
    .param p4, "probeType"    # I
    .param p5, "returnCode"    # I

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 46
    iput p1, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    .line 47
    iput-wide p2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 48
    iput p4, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 49
    iput p5, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 45
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/ValidationProbeEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getProbeName(I)Ljava/lang/String;
    .locals 2
    .param p0, "probeType"    # I

    .prologue
    .line 83
    sget-object v0, Landroid/net/metrics/ValidationProbeEvent$Decoder;->constants:Landroid/util/SparseArray;

    const-string/jumbo v1, "PROBE_???"

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static logEvent(IJII)V
    .locals 7
    .param p0, "netId"    # I
    .param p1, "durationMs"    # J
    .param p3, "probeType"    # I
    .param p4, "returnCode"    # I

    .prologue
    .line 87
    new-instance v0, Landroid/net/metrics/ValidationProbeEvent;

    move v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/metrics/ValidationProbeEvent;-><init>(IJII)V

    invoke-static {v0}, Landroid/net/metrics/ValidationProbeEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 86
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 92
    const-string/jumbo v0, "ValidationProbeEvent(%d, %s:%d, %dms)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-static {v2}, Landroid/net/metrics/ValidationProbeEvent;->getProbeName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 92
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 60
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-wide v0, p0, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 62
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget v0, p0, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
