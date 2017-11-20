.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/Utils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static contactResponseToProfileDetails(Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;
    .locals 7

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceuniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setDeviceUniqueId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMsisdn(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getType()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setType(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setImage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setStatus(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getPrivacy()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setPrivacy(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setCountryCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getPrsc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setPresence(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOld()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setOld(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getServiceId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setServiceId(I)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getTy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setTy(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD14()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->setData14(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EventInfo;->getD15()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EventDetails;->setData15(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setEventList(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;

    invoke-direct {v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->setImage(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getImgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/ImageInfo;->getNo()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ImageDetails;->setId(I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setImageList(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setStreet(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPoBox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setPobox(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setCity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getPostCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setPostCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setCountry(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setData1(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AddressInfo;->getD6()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AddressDetails;->setData6(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setAddressList(Ljava/util/List;)V

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;->setType(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;->setAddress(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getMails()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/EmailInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/EmailDetails;->setLabel(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setMailList(Ljava/util/List;)V

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getCompany()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;->setCompany(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getDepartment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;->setDepartment(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getOrganization()Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/contact/io/OrganizationInfo;->getPosition()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;->setPosition(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setOrganization(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/OrganizationDetails;)V

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAppList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactResponse;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/contact/io/AppListInfo;->getSvcId()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/AppSerivceIDDetails;->setServiceId(I)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;->setAppServiceIdList(Ljava/util/List;)V

    :cond_a
    return-object v3
.end method

.method public static isPhotoMimeType(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "vnd.android.cursor.item/photo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vnd.android.cursor.item/photo_deleted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static resizeImage([BII)[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-le v2, p1, :cond_0

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v1

    const-string v2, "Utils"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/Throwable;Ljava/lang/String;)V

    move-object p0, v0

    goto :goto_0
.end method
