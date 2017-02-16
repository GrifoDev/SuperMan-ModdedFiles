.class public Lcom/yulore/sdk/ivr/util/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static API_KEY:Ljava/lang/String; = null

.field public static API_SECRET:Ljava/lang/String; = null

.field public static final DEFAULT:I = -0x1

.field public static final DEFAULT_UPDATE_INTERVAL:I = 0x18

.field public static HOST_APP_NAME:Ljava/lang/String; = null

.field public static IMEI_ID:Ljava/lang/String; = null

.field public static final MANUFACTURER:Ljava/lang/String; = "https://apis-samsung.dianhua.cn/"

.field public static MATCHER:I = 0x0

.field public static final NO_IVRDATA:I = 0x1

.field public static final NO_MISMATH:I = 0x2

.field public static final SUCCESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "YuloreIVR"

.field public static final TEL_MO:Ljava/lang/String; = "telmo"

.field public static final TEL_MT:Ljava/lang/String; = "telmt"

.field public static final TEL_NUMBER:Ljava/lang/String; = "telnum"

.field public static final TEL_OPERATOR:Ljava/lang/String; = "telop"

.field public static TEL_VERSION:Ljava/lang/String; = null

.field public static final UPDATE_URL:Ljava/lang/String; = "https://apis-samsung.dianhua.cn/ivr/"

.field public static VERSION:Ljava/lang/String; = null

.field public static final VIVR_UPDATE_API_URL:Ljava/lang/String; = "https://apis-samsung.dianhua.cn/vivr/checkIvrZipVer.php"

.field public static areaCodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static areaCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static cityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static specialNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->API_KEY:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->API_SECRET:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->HOST_APP_NAME:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->IMEI_ID:Ljava/lang/String;

    .line 13
    const-string v0, "1.6.4"

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->VERSION:Ljava/lang/String;

    .line 14
    const-string v0, ""

    sput-object v0, Lcom/yulore/sdk/ivr/util/Constants;->TEL_VERSION:Ljava/lang/String;

    .line 39
    const/4 v0, -0x1

    sput v0, Lcom/yulore/sdk/ivr/util/Constants;->MATCHER:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
