.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Landroid/net/metrics/IpConnectivityEvent;
.source "DhcpErrorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/DhcpErrorEvent$1;,
        Landroid/net/metrics/DhcpErrorEvent$Decoder;
    }
.end annotation


# static fields
.field public static final BOOTP_TOO_SHORT:I

.field public static final BUFFER_UNDERFLOW:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/metrics/DhcpErrorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final DHCP_BAD_MAGIC_COOKIE:I

.field public static final DHCP_ERROR:I = 0x4

.field public static final DHCP_INVALID_OPTION_LENGTH:I

.field public static final DHCP_NO_MSG_TYPE:I

.field public static final DHCP_UNKNOWN_MSG_TYPE:I

.field public static final L2_ERROR:I = 0x1

.field public static final L2_TOO_SHORT:I

.field public static final L2_WRONG_ETH_TYPE:I

.field public static final L3_ERROR:I = 0x2

.field public static final L3_INVALID_IP:I

.field public static final L3_NOT_IPV4:I

.field public static final L3_TOO_SHORT:I

.field public static final L4_ERROR:I = 0x3

.field public static final L4_NOT_UDP:I

.field public static final L4_WRONG_PORT:I

.field public static final MISC_ERROR:I = 0x5

.field public static final RECEIVE_ERROR:I


# instance fields
.field public final errorCode:I

.field public final ifName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 37
    invoke-static {v2, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    .line 38
    invoke-static {v2, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    .line 40
    invoke-static {v1, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    .line 41
    invoke-static {v1, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    .line 42
    invoke-static {v1, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    .line 44
    invoke-static {v4, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    .line 45
    invoke-static {v4, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    .line 47
    invoke-static {v3, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    .line 48
    invoke-static {v3, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    .line 49
    invoke-static {v3, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    .line 50
    invoke-static {v3, v3}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    .line 51
    invoke-static {v3, v5}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    .line 53
    invoke-static {v5, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    .line 54
    invoke-static {v5, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    .line 84
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    .line 83
    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/net/metrics/IpConnectivityEvent;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    .line 66
    iput p2, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    .line 64
    return-void
.end method

.method public static errorCodeWithOption(II)I
    .locals 2
    .param p0, "errorCode"    # I
    .param p1, "option"    # I

    .prologue
    .line 103
    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static logParseError(Ljava/lang/String;I)V
    .locals 1
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "errorCode"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent;

    invoke-direct {v0, p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/net/metrics/DhcpErrorEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 94
    return-void
.end method

.method public static logReceiveError(Ljava/lang/String;)V
    .locals 2
    .param p0, "ifName"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/net/metrics/DhcpErrorEvent;

    sget v1, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    invoke-direct {v0, p0, v1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Landroid/net/metrics/DhcpErrorEvent;->logEvent(Landroid/net/metrics/IpConnectivityEvent;)V

    .line 98
    return-void
.end method

.method private static makeErrorCode(II)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "subtype"    # I

    .prologue
    .line 107
    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 112
    const-string/jumbo v0, "DhcpErrorEvent(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

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
    .line 75
    iget-object v0, p0, Landroid/net/metrics/DhcpErrorEvent;->ifName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
