.class public final enum Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
.super Ljava/lang/Enum;
.source "ConnectivityManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/ConnectivityManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectivityTypeExt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

.field public static final enum TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;


# instance fields
.field private final mValue:I


# direct methods
.method static synthetic -wrap0(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    invoke-static {p0}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

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

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_MOBILE"

    invoke-direct {v0, v1, v5, v4}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_WIFI"

    invoke-direct {v0, v1, v6, v5}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_MOBILE_IMS"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v7, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_MOBILE_CBS"

    sget v2, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_CBS:I

    invoke-direct {v0, v1, v8, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_MOBILE_XCAP"

    sget v2, Lcom/sec/ims/extensions/ConnectivityManagerExt;->TYPE_MOBILE_XCAP:I

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    new-instance v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const-string/jumbo v1, "TYPE_MOBILE_EMERGENCY"

    const/4 v2, 0x6

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_WIFI:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_IMS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_CBS:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_XCAP:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_MOBILE_EMERGENCY:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    return-void
.end method

.method private static valueOf(I)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 6

    sget-object v1, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->TYPE_NONE:Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {}, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    iget v5, v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    if-ne v5, p0, :cond_1

    move-object v1, v0

    :cond_0
    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    const-class v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object v0
.end method

.method public static values()[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;
    .locals 1

    sget-object v0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->$VALUES:[Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    iget v0, p0, Lcom/sec/ims/extensions/ConnectivityManagerExt$ConnectivityTypeExt;->mValue:I

    return v0
.end method
