.class public Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;
.super Lcom/samsung/android/sdk/ssf/accessory/io/ResourceIdReq;


# instance fields
.field protected cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceIdReq;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpCustomInfo()Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;->cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    return-object v0
.end method

.method public setCpCustomInfo(Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/UpdateAccessoryReq;->cp_custm_info:Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    return-void
.end method
