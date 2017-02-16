.class Landroid/os/DssHelper$DssAppDate;
.super Ljava/lang/Object;
.source "DssHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DssHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DssAppDate"
.end annotation


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F

.field final synthetic this$0:Landroid/os/DssHelper;


# direct methods
.method constructor <init>(Landroid/os/DssHelper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/os/DssHelper;

    .prologue
    const/4 v1, 0x0

    .line 42
    iput-object p1, p0, Landroid/os/DssHelper$DssAppDate;->this$0:Landroid/os/DssHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 44
    iput v1, p0, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I

    .line 45
    iput v1, p0, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    .line 46
    iput v1, p0, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    .line 42
    return-void
.end method


# virtual methods
.method addPackage(F)V
    .locals 1
    .param p1, "scalingFactor"    # F

    .prologue
    const/4 v0, 0x0

    .line 50
    iput p1, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 51
    iput v0, p0, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I

    .line 52
    iput v0, p0, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    .line 53
    iput v0, p0, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    .line 49
    return-void
.end method

.method addPackage(FI)V
    .locals 0
    .param p1, "scalingFactor"    # F
    .param p2, "gameSiopLevel"    # I

    .prologue
    .line 57
    iput p1, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 58
    iput p2, p0, Landroid/os/DssHelper$DssAppDate;->mGameSiopLevel:I

    .line 56
    return-void
.end method

.method addPackage(FLjava/lang/String;)V
    .locals 2
    .param p1, "scalingFactor"    # F
    .param p2, "gameSiopLevels"    # Ljava/lang/String;

    .prologue
    .line 62
    iput p1, p0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    .line 63
    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "siopLevel":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/os/DssHelper$DssAppDate;->mCpuLevel:I

    .line 65
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/os/DssHelper$DssAppDate;->mGpuLevel:I

    .line 61
    return-void
.end method
