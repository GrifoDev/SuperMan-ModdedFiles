.class public final Landroid/net/metrics/NetworkEvent;
.super Ljava/lang/Object;
.source "NetworkEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/NetworkEvent$1;,
        Landroid/net/metrics/NetworkEvent$Decoder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final NETWORK_CAPTIVE_PORTAL_FOUND:I = 0x4

.field public static final NETWORK_CONNECTED:I = 0x1

.field public static final NETWORK_DISCONNECTED:I = 0x7

.field public static final NETWORK_FIRST_VALIDATION_PORTAL_FOUND:I = 0xa

.field public static final NETWORK_FIRST_VALIDATION_SUCCESS:I = 0x8

.field public static final NETWORK_LINGER:I = 0x5

.field public static final NETWORK_REVALIDATION_PORTAL_FOUND:I = 0xb

.field public static final NETWORK_REVALIDATION_SUCCESS:I = 0x9

.field public static final NETWORK_UNLINGER:I = 0x6

.field public static final NETWORK_VALIDATED:I = 0x2

.field public static final NETWORK_VALIDATION_FAILED:I = 0x3


# instance fields
.field public final durationMs:J

.field public final eventType:I

.field public final netId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/metrics/NetworkEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/NetworkEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/NetworkEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/metrics/NetworkEvent;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    iput p2, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput-wide p3, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/NetworkEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/NetworkEvent;-><init>(Landroid/os/Parcel;)V

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

    const-string/jumbo v0, "NetworkEvent(%d, %s, %dms)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/net/metrics/NetworkEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/net/metrics/NetworkEvent;->eventType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/net/metrics/NetworkEvent;->durationMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
