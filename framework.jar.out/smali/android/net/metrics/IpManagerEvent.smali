.class public final Landroid/net/metrics/IpManagerEvent;
.super Ljava/lang/Object;
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

.field public static final ERROR_STARTING_IPREACHABILITYMONITOR:I = 0x6

.field public static final ERROR_STARTING_IPV4:I = 0x4

.field public static final ERROR_STARTING_IPV6:I = 0x5

.field public static final PROVISIONING_FAIL:I = 0x2

.field public static final PROVISIONING_OK:I = 0x1


# instance fields
.field public final durationMs:J

.field public final eventType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/IpManagerEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/IpManagerEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/IpManagerEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput-wide p2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/IpManagerEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/IpManagerEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "IpManagerEvent(%s, %dms)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/net/metrics/IpManagerEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/net/metrics/IpManagerEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
