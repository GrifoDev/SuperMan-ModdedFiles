.class Landroid/os/OdtcHelper$OdtcPackageInfo;
.super Ljava/lang/Object;
.source "OdtcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/OdtcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OdtcPackageInfo"
.end annotation


# instance fields
.field private appType:C

.field private healthFactor:S

.field private memConsumed:I


# direct methods
.method static synthetic -get0(Landroid/os/OdtcHelper$OdtcPackageInfo;)C
    .locals 1

    iget-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    return v0
.end method

.method static synthetic -get1(Landroid/os/OdtcHelper$OdtcPackageInfo;)S
    .locals 1

    iget-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    return v0
.end method

.method static synthetic -get2(Landroid/os/OdtcHelper$OdtcPackageInfo;)I
    .locals 1

    iget v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    return v0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    const/16 v0, 0x45

    iput-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    .line 226
    iput-short v1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    .line 227
    iput v1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    .line 224
    return-void
.end method

.method constructor <init>(CII)V
    .locals 1
    .param p1, "appType"    # C
    .param p2, "healthFactor"    # I
    .param p3, "memConsumed"    # I

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-char p1, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    .line 232
    int-to-short v0, p2

    iput-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    .line 233
    iput p3, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    .line 230
    return-void
.end method


# virtual methods
.method getAppType()C
    .locals 1

    .prologue
    .line 237
    iget-char v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->appType:C

    return v0
.end method

.method getHealthFactor()S
    .locals 1

    .prologue
    .line 241
    iget-short v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->healthFactor:S

    return v0
.end method

.method getMemConsumed()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/os/OdtcHelper$OdtcPackageInfo;->memConsumed:I

    return v0
.end method
