.class public Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;
.super Ljava/lang/Object;
.source "GamePkgDataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GamePkgDataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GamePkgData"
.end annotation


# instance fields
.field private mCpuLevel:I

.field private mGovernorSetting:Ljava/lang/String;

.field private mGpuLevel:I

.field private mPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    .line 18
    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    .line 19
    iput-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public getCpuLevel()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    return v0
.end method

.method public getGovernorSetting()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuLevel()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setCpuLevel(I)V
    .locals 0
    .param p1, "cpuLevel"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    return-void
.end method

.method public setGovernorSetting(Ljava/lang/String;)V
    .locals 0
    .param p1, "governorSetting"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-void
.end method

.method public setGpuLevel(I)V
    .locals 0
    .param p1, "gpuLevel"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    return-void
.end method
