.class public Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;
.super Ljava/lang/Object;


# instance fields
.field protected lang:Ljava/lang/String;

.field protected req_ver:Ljava/lang/String;

.field protected rsc_id:Ljava/lang/String;

.field protected setup:Ljava/lang/String;

.field protected svc_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContentVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->req_ver:Ljava/lang/String;

    return-object v0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->rsc_id:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->svc_id:I

    return v0
.end method

.method public getSetup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->setup:Ljava/lang/String;

    return-object v0
.end method

.method public setContentVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->req_ver:Ljava/lang/String;

    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->lang:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->rsc_id:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->svc_id:I

    return-void
.end method

.method public setSetup(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/accessory/io/GetContentReq;->setup:Ljava/lang/String;

    return-void
.end method
