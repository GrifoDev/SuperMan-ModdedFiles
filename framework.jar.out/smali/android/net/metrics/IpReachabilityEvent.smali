.class public final Landroid/net/metrics/IpReachabilityEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "IpReachabilityEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpReachabilityEvent$1;,
        Landroid/net/metrics/IpReachabilityEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/IpReachabilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUD_FAILED:I = 0x200

.field public static final PROBE:I = 0x100

.field public static final PROVISIONING_LOST:I = 0x300


# instance fields
.field public final eventType:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpReachabilityEvent$1;-><init>()V

    .line 63
    sput-object v0, Landroid/net/metrics/IpReachabilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "eventType"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 45
    iput-object p1, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    .line 46
    iput p2, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    .line 44
    return-void
.end method

.method public static logNudFailed(Ljava/lang/String;)V
    .locals 2
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent;

    const/16 v1, 0x200

    invoke-direct {v0, p0, v1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/net/metrics/IpReachabilityEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 78
    return-void
.end method

.method public static logProbeEvent(Ljava/lang/String;I)V
    .locals 2
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "nlErrorCode"    # I

    .prologue
    .line 75
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent;

    and-int/lit16 v1, p1, 0xff

    or-int/lit16 v1, v1, 0x100

    invoke-direct {v0, p0, v1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/net/metrics/IpReachabilityEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 74
    return-void
.end method

.method public static logProvisioningLost(Ljava/lang/String;)V
    .locals 2
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Landroid/net/metrics/IpReachabilityEvent;

    const/16 v1, 0x300

    invoke-direct {v0, p0, v1}, Landroid/net/metrics/IpReachabilityEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/net/metrics/IpReachabilityEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string/jumbo v0, "IpReachabilityEvent(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 89
    sget-object v2, Landroid/net/metrics/IpReachabilityEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 88
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget-object v0, p0, Landroid/net/metrics/IpReachabilityEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget v0, p0, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
