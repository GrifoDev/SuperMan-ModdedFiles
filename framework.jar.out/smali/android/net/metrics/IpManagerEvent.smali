.class public final Landroid/net/metrics/IpManagerEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "IpManagerEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/IpManagerEvent$1;,
        Landroid/net/metrics/IpManagerEvent$Decoder;
    }
.end annotation


# static fields
.field public static final COMPLETE_LIFECYCLE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/IpManagerEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROVISIONING_FAIL:I = 0x2

.field public static final PROVISIONING_OK:I = 0x1


# instance fields
.field public final durationMs:J

.field public final eventType:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/net/metrics/IpManagerEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpManagerEvent$1;-><init>()V

    .line 62
    sput-object v0, Landroid/net/metrics/IpManagerEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpManagerEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/IpManagerEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "duration"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    .line 42
    iput p2, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    .line 43
    iput-wide p3, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    .line 40
    return-void
.end method

.method public static logEvent(ILjava/lang/String;J)V
    .locals 2
    .param p0, "eventType"    # I
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "durationMs"    # J

    .prologue
    .line 74
    new-instance v0, Landroid/net/metrics/IpManagerEvent;

    invoke-direct {v0, p1, p0, p2, p3}, Landroid/net/metrics/IpManagerEvent;-><init>(Ljava/lang/String;IJ)V

    invoke-static {v0}, Landroid/net/metrics/IpManagerEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "IpManagerEvent(%s, %s, %dms)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 80
    iget-object v2, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/net/metrics/IpManagerEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 79
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/metrics/IpManagerEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 52
    return-void
.end method
