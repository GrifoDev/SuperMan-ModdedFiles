.class public Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;
.super Ljava/lang/Object;


# instance fields
.field protected cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

.field protected ser_no:Ljava/lang/String;

.field protected svc_id:I

.field protected uniq_dvc_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    return-object v0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->uniq_dvc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->ser_no:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->svc_id:I

    return v0
.end method

.method public setCpCustomInfo(Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    return-void
.end method

.method public setDeviceID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->uniq_dvc_id:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->ser_no:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryReq;->svc_id:I

    return-void
.end method
