.class public Landroid/net/wifi/WifiConfiguration$SamsungFlag;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SamsungFlag"
.end annotation


# static fields
.field public static final CLEAR_ALL:I = 0x5

.field public static final SEC_INTRANET_AP:I = 0x3

.field public static final SEC_MDM:I = 0x4

.field public static final SEC_MOBILE_AP:I = 0x1

.field public static final SEC_OXYGEN_NETWORK:I = 0x2

.field public static final SKIP_INTERNET_SERVICE_CHECK:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "sec_flags"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ISC"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SECAP"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "OXG"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "INT"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "MDM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "CLR"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SamsungFlag;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
