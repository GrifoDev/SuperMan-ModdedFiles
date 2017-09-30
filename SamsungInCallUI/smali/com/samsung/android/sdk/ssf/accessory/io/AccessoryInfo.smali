.class public Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;
.super Ljava/lang/Object;


# instance fields
.field public MaxRegistrationCount:I

.field protected cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

.field public expired:I

.field public expiryTimeStamp:J

.field public registeredState:I

.field public registrationCount:I

.field protected rsrc_id:Ljava/lang/String;

.field protected rsrc_st:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected ser_no:Ljava/lang/String;

.field protected svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->rsrc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->rsrc_st:Ljava/util/List;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->ser_no:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->svc_id:I

    return v0
.end method
