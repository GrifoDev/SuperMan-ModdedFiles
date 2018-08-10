.class public Landroid/os/HWParamData;
.super Ljava/lang/Object;
.source "HWParamData.java"


# instance fields
.field protected HWRev:Ljava/lang/String;

.field protected IMEI:Ljava/lang/String;

.field protected UN:Ljava/lang/String;

.field protected compID:Ljava/lang/String;

.field protected compManufacture:Ljava/lang/String;

.field protected compVer:Ljava/lang/String;

.field protected envlogMaps:Ljava/lang/String;

.field protected feature:Ljava/lang/String;

.field protected hitType:Ljava/lang/String;

.field protected logMaps:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCompID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compID:Ljava/lang/String;

    return-object v0
.end method

.method public getCompManufacture()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compManufacture:Ljava/lang/String;

    return-object v0
.end method

.method public getCompVer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->compVer:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvLogMaps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->envlogMaps:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->feature:Ljava/lang/String;

    return-object v0
.end method

.method public getHWRev()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->HWRev:Ljava/lang/String;

    return-object v0
.end method

.method public getHitType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->hitType:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->IMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getLogMaps()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->logMaps:Ljava/lang/String;

    return-object v0
.end method

.method public getUN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/os/HWParamData;->UN:Ljava/lang/String;

    return-object v0
.end method
