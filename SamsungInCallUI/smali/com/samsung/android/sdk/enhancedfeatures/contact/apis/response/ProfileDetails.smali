.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;
.super Ljava/lang/Object;


# instance fields
.field protected adrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected appServiceId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected cc:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field protected duid:Ljava/lang/String;

.field protected evnt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/String;

.field protected img:Ljava/lang/String;

.field protected imgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected mail:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;",
            ">;"
        }
    .end annotation
.end field

.field protected msisdn:Ljava/lang/String;

.field protected nm:Ljava/lang/String;

.field protected old:Ljava/lang/String;

.field protected org:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;

.field protected pn:Ljava/lang/String;

.field protected presence:Ljava/lang/String;

.field protected privacy:I

.field protected sids:I

.field protected status:Ljava/lang/String;

.field protected ty:Ljava/lang/String;

.field protected type:I

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->adrs:Ljava/util/List;

    return-object v0
.end method

.method public getAppServiceIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->appServiceId:Ljava/util/List;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUniqueId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->duid:Ljava/lang/String;

    return-object v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->evnt:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->img:Ljava/lang/String;

    return-object v0
.end method

.method public getImageList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->imgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->mail:Ljava/util/List;

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->nm:Ljava/lang/String;

    return-object v0
.end method

.method public getOld()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->old:Ljava/lang/String;

    return-object v0
.end method

.method public getOrganization()Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->org:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->pn:Ljava/lang/String;

    return-object v0
.end method

.method public getPresence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->presence:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivacy()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->privacy:I

    return v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->sids:I

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->ty:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->adrs:Ljava/util/List;

    return-void
.end method

.method public setAppServiceIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->appServiceId:Ljava/util/List;

    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->cc:Ljava/lang/String;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUniqueId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->duid:Ljava/lang/String;

    return-void
.end method

.method public setEventList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->evnt:Ljava/util/List;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->id:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->img:Ljava/lang/String;

    return-void
.end method

.method public setImageList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->imgs:Ljava/util/ArrayList;

    return-void
.end method

.method public setMailList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->mail:Ljava/util/List;

    return-void
.end method

.method public setMsisdn(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->nm:Ljava/lang/String;

    return-void
.end method

.method public setOld(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->old:Ljava/lang/String;

    return-void
.end method

.method public setOrganization(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->org:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->pn:Ljava/lang/String;

    return-void
.end method

.method public setPresence(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->presence:Ljava/lang/String;

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->privacy:I

    return-void
.end method

.method public setServiceId(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->sids:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->status:Ljava/lang/String;

    return-void
.end method

.method public setTy(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->ty:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->url:Ljava/lang/String;

    return-void
.end method
