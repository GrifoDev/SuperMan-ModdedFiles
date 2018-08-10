.class public Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;
.super Ljava/lang/Object;
.source "CaAutoBrightnessTableManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;


# instance fields
.field private mOffsetTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    return-object v0
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public sendAutoBrightnessTableToSensorHub()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    array-length v1, v1

    if-gtz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Auto Brightness in sensorhub isn\'t supported so skip to send config data to sensorhub!!"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    const/4 v3, 0x4

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    return v4

    :cond_2
    const/4 v1, 0x1

    return v1

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x17t
        0x30t
        0x2t
    .end array-data
.end method

.method public setOffsetTable([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->mOffsetTable:[B

    return-void
.end method

.method public terminateManager()V
    .locals 0

    return-void
.end method
