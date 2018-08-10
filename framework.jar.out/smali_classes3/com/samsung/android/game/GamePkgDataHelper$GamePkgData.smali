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
.field private mAspectRatio:F

.field private mBlackSurfaceNeeded:Z

.field private mCategory:I

.field private mCpuLevel:I

.field private mCpuMinPercent:I

.field private mGovernorSetting:Ljava/lang/String;

.field private mGpuLevel:I

.field private mGpuMinPercent:I

.field private mPkgName:Ljava/lang/String;

.field private mServerCategory:I

.field private mShiftTemperature:I

.field private mSosPolicy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mServerCategory:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mShiftTemperature:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuMinPercent:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuMinPercent:I

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mAspectRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mBlackSurfaceNeeded:Z

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mSosPolicy:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mServerCategory:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    iput v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mShiftTemperature:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuMinPercent:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuMinPercent:I

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    const v0, 0x3fe38e39

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mAspectRatio:F

    iput-boolean v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mBlackSurfaceNeeded:Z

    iput-object v2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mSosPolicy:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    iput p3, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mServerCategory:I

    return-void
.end method


# virtual methods
.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mAspectRatio:F

    return v0
.end method

.method public getCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    return v0
.end method

.method public getCpuLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    return v0
.end method

.method public getCpuMinPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuMinPercent:I

    return v0
.end method

.method public getGovernorSetting()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-object v0
.end method

.method public getGpuLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    return v0
.end method

.method public getGpuMinPercent()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuMinPercent:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerCategory()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mServerCategory:I

    return v0
.end method

.method public getShiftTemperature()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mShiftTemperature:I

    return v0
.end method

.method public getSosPolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mSosPolicy:Ljava/lang/String;

    return-object v0
.end method

.method public isBlackSurfaceNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mBlackSurfaceNeeded:Z

    return v0
.end method

.method public isTunableApp()Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_2
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1
.end method

.method public setAspectRatio(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mAspectRatio:F

    return-void
.end method

.method public setBlackSurfaceNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mBlackSurfaceNeeded:Z

    return-void
.end method

.method public setCategory(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCategory:I

    return-void
.end method

.method public setCpuLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    return-void
.end method

.method public setCpuMinPercent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuMinPercent:I

    return-void
.end method

.method public setGovernorSetting(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    return-void
.end method

.method public setGpuLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    return-void
.end method

.method public setGpuMinPercent(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuMinPercent:I

    return-void
.end method

.method public setServerCategory(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mServerCategory:I

    return-void
.end method

.method public setShiftTemperature(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mShiftTemperature:I

    return-void
.end method

.method public setSosPolicy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mSosPolicy:Ljava/lang/String;

    return-void
.end method
