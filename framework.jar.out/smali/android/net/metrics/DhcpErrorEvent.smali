.class public final Landroid/net/metrics/DhcpErrorEvent;
.super Ljava/lang/Object;
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

.field public static final DHCP_NO_COOKIE:I

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

.field public static final PARSING_ERROR:I

.field public static final RECEIVE_ERROR:I


# instance fields
.field public final errorCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x2

    invoke-static {v2, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_TOO_SHORT:I

    invoke-static {v2, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L2_WRONG_ETH_TYPE:I

    invoke-static {v1, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_TOO_SHORT:I

    invoke-static {v1, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_NOT_IPV4:I

    invoke-static {v1, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L3_INVALID_IP:I

    invoke-static {v4, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_NOT_UDP:I

    invoke-static {v4, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->L4_WRONG_PORT:I

    invoke-static {v3, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BOOTP_TOO_SHORT:I

    invoke-static {v3, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_BAD_MAGIC_COOKIE:I

    invoke-static {v3, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_INVALID_OPTION_LENGTH:I

    invoke-static {v3, v3}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_MSG_TYPE:I

    invoke-static {v3, v5}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_UNKNOWN_MSG_TYPE:I

    const/4 v0, 0x6

    invoke-static {v3, v0}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->DHCP_NO_COOKIE:I

    invoke-static {v5, v2}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->BUFFER_UNDERFLOW:I

    invoke-static {v5, v1}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->RECEIVE_ERROR:I

    invoke-static {v5, v4}, Landroid/net/metrics/DhcpErrorEvent;->makeErrorCode(II)I

    move-result v0

    sput v0, Landroid/net/metrics/DhcpErrorEvent;->PARSING_ERROR:I

    new-instance v0, Landroid/net/metrics/DhcpErrorEvent$1;

    invoke-direct {v0}, Landroid/net/metrics/DhcpErrorEvent$1;-><init>()V

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/metrics/DhcpErrorEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static errorCodeWithOption(II)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static makeErrorCode(II)I
    .locals 2

    shl-int/lit8 v0, p0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "DhcpErrorEvent(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
