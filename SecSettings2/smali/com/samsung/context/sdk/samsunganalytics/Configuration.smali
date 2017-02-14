.class public Lcom/samsung/context/sdk/samsunganalytics/Configuration;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private auidType:I

.field private deviceId:Ljava/lang/String;

.field private enableAutoDeviceId:Z

.field private enableUseInAppLogging:Z

.field private isAlwaysRunningApp:Z

.field private overrideIp:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;

.field private useAnonymizeIp:Z

.field private userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

.field private userId:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->useAnonymizeIp:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method


# virtual methods
.method public enableAutoDeviceId()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return-object p0
.end method

.method public getAuidType()I
    .locals 1

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->overrideIp:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isAlwaysRunningApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isAlwaysRunningApp:Z

    return v0
.end method

.method public isEnableAutoDeviceId()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableAutoDeviceId:Z

    return v0
.end method

.method public isEnableUseInAppLogging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->enableUseInAppLogging:Z

    return v0
.end method

.method public isUseAnonymizeIp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->useAnonymizeIp:Z

    return v0
.end method

.method public setAuidType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setTrackingId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    return-object p0
.end method

.method public setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    return-object p0
.end method
