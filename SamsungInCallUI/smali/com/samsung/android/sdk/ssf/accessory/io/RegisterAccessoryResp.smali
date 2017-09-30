.class public Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected cp_svc_id:Ljava/lang/String;

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


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getCpServiceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->cp_svc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->rsrc_id:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->rsrc_st:Ljava/util/List;

    return-object v0
.end method
