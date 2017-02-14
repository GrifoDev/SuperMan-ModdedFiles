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

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

    iput v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGpuLevel:I

    iput-object v1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mGovernorSetting:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCpuLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

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

.method public getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public setCpuLevel(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/game/GamePkgDataHelper$GamePkgData;->mCpuLevel:I

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
