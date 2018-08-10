.class public final enum Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
.super Ljava/lang/Enum;
.source "TelephonyManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/TelephonyManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkTypeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

.field public static final enum NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method static synthetic -wrap0(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .locals 1

    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->valueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_GPRS"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_EDGE"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_UMTS"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_CDMA"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_EVDO_0"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_EVDO_A"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_1xRTT"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_HSDPA"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_HSUPA"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_HSPA"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_IDEN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_EVDO_B"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_LTE"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_EHRPD"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_HSPAP"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_GSM"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_TD_SCDMA"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_IWLAN"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_DC"

    const/16 v2, 0x13

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const-string/jumbo v1, "NETWORK_TYPE_TDLTE"

    const/16 v2, 0x14

    const/16 v3, 0x1f

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GPRS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EDGE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UMTS:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_CDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_0:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_A:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_1xRTT:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSDPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSUPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IDEN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EVDO_B:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_LTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_EHRPD:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_HSPAP:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_GSM:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TD_SCDMA:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_IWLAN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_DC:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_TDLTE:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->$VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .locals 6

    sget-object v1, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->NETWORK_TYPE_UNKNOWN:Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-static {}, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->values()[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget v5, v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    if-ne v5, p0, :cond_1

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .locals 1

    const-class v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;
    .locals 1

    sget-object v0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->$VALUES:[Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/extensions/TelephonyManagerExt$NetworkTypeExt;->mValue:I

    return v0
.end method
