.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final AKA:I = 0x5

.field public static final AKA_PRIME:I = 0x6

.field public static final FAST:I = 0x12

.field public static final LEAP:I = 0x13

.field public static final NONE:I = -0x1

.field public static final PEAP:I = 0x0

.field public static final PWD:I = 0x3

.field public static final SIM:I = 0x4

.field public static final TLS:I = 0x1

.field public static final TTLS:I = 0x2

.field public static final UNAUTH_TLS:I = 0x7

.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "PEAP"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "TLS"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "TTLS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "PWD"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SIM"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "AKA"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "AKA\'"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "WFA-UNAUTH-TLS"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, ""

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "FAST"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "LEAP"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
