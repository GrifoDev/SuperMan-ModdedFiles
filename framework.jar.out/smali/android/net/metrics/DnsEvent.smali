.class public final Landroid/net/metrics/DnsEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "DnsEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DnsEvent$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DnsEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventTypes:[B

.field public final latenciesMs:[I

.field public final netId:I

.field public final returnCodes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/metrics/DnsEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DnsEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DnsEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 27
    return-void
.end method

.method private constructor <init>(I[B[B[I)V
    .locals 0
    .param p1, "netId"    # I
    .param p2, "eventTypes"    # [B
    .param p3, "returnCodes"    # [B
    .param p4, "latenciesMs"    # [I

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 41
    iput p1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 42
    iput-object p2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 43
    iput-object p3, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 44
    iput-object p4, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DnsEvent;->netId:I

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DnsEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DnsEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static logEvent(I[B[B[I)V
    .locals 1
    .param p0, "netId"    # I
    .param p1, "eventTypes"    # [B
    .param p2, "returnCodes"    # [B
    .param p3, "latenciesMs"    # [I

    .prologue
    .line 85
    new-instance v0, Landroid/net/metrics/DnsEvent;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/metrics/DnsEvent;-><init>(I[B[B[I)V

    invoke-static {v0}, Landroid/net/metrics/DnsEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    const-string/jumbo v0, "DnsEvent(%d, %d events)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget v0, p0, Landroid/net/metrics/DnsEvent;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 59
    iget-object v0, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 55
    return-void
.end method
