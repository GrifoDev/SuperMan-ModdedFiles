.class Lcom/android/server/DssControllerImpl$DssAppDate;
.super Ljava/lang/Object;
.source "DssControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DssControllerImpl;
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

.field final synthetic this$0:Lcom/android/server/DssControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/DssControllerImpl;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->this$0:Lcom/android/server/DssControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    return-void
.end method


# virtual methods
.method addPackage(F)V
    .locals 1

    const/4 v0, 0x0

    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    iput v0, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    return-void
.end method

.method addPackage(FI)V
    .locals 0

    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    iput p2, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGameSiopLevel:I

    return-void
.end method

.method addPackage(FLjava/lang/String;)V
    .locals 2

    iput p1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mScale:F

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mCpuLevel:I

    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/DssControllerImpl$DssAppDate;->mGpuLevel:I

    return-void
.end method
