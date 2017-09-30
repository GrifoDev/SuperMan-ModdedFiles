.class public Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected adrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected app_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected cc:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field protected device_idx:Ljava/lang/String;

.field protected duid:Ljava/lang/String;

.field protected evnt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected img:Ljava/lang/String;

.field protected img_tt:J

.field protected imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected msisdn:Ljava/lang/String;

.field protected nm:Ljava/lang/String;

.field protected old:Ljava/lang/String;

.field protected org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

.field protected pn:Ljava/lang/String;

.field protected privacy:I

.field protected prsc:Ljava/lang/String;

.field protected sids:I

.field protected status:Ljava/lang/String;

.field protected status_tt:J

.field protected ty:Ljava/lang/String;

.field protected type:I

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->adrs:Ljava/util/List;

    return-object v0
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->app_list:Ljava/util/List;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice_idx()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->device_idx:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceuniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->evnt:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImageTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->img_tt:J

    return-wide v0
.end method

.method public getImgs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->mail:Ljava/util/List;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->nm:Ljava/lang/String;

    return-object v0
.end method

.method public getOld()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->old:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->pn:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->privacy:I

    return v0
.end method

.method public getPrsc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->prsc:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->sids:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTimestamp()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->status_tt:J

    return-wide v0
.end method

.method public getTy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->ty:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAddreses(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->adrs:Ljava/util/List;

    return-void
.end method

.method public setAppList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->app_list:Ljava/util/List;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDevice_idx(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->device_idx:Ljava/lang/String;

    return-void
.end method

.method public setDeviceuniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->duid:Ljava/lang/String;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->evnt:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->img:Ljava/lang/String;

    return-void
.end method

.method public setImgs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->imgs:Ljava/util/ArrayList;

    return-void
.end method

.method public setMails(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->mail:Ljava/util/List;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->nm:Ljava/lang/String;

    return-void
.end method

.method public setOld(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->old:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->org:Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->privacy:I

    return-void
.end method

.method public setPrsc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->prsc:Ljava/lang/String;

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->sids:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->status:Ljava/lang/String;

    return-void
.end method

.method public setTy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->ty:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->url:Ljava/lang/String;

    return-void
.end method
