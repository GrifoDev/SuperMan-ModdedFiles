.class public Lcom/sec/ims/ImsRegistration$Builder;
.super Ljava/lang/Object;
.source "ImsRegistration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDeregiReason:I

.field protected mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mDomain:Ljava/lang/String;

.field private mEcmpStatus:I

.field private mEpdgStatus:Z

.field protected mHandle:I

.field protected mInstanceId:Ljava/lang/String;

.field private mNetwork:Landroid/net/Network;

.field private mPAssociatedUri2nd:Ljava/lang/String;

.field protected mPcscf:Ljava/lang/String;

.field protected mPdnType:I

.field protected mPhoneId:I

.field protected mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

.field protected mPrivateUserId:Ljava/lang/String;

.field protected mProfile:Lcom/sec/ims/settings/ImsProfile;

.field private mProhibited:Z

.field protected mPublicUserId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;"
        }
    .end annotation
.end field

.field protected mRat:I

.field private mRegExpiryStatus:I

.field private mRegisterSipResponse:Ljava/lang/String;

.field protected mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

.field mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSubscriptionId:I


# direct methods
.method static synthetic -get0(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return v0
.end method

.method static synthetic -get1(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    return v0
.end method

.method static synthetic -get3(Lcom/sec/ims/ImsRegistration$Builder;)Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/ims/ImsRegistration$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sec/ims/ImsRegistration$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    return v0
.end method

.method static synthetic -get7(Lcom/sec/ims/ImsRegistration$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-static {}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    iput v1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    iput-boolean v1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    const/16 v0, 0xe

    iput v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return-void
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/sec/ims/ImsRegistration;
    .locals 1

    new-instance v0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {v0, p0}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration$Builder;)V

    return-object v0
.end method

.method public setDeregiReason(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeregiReason:I

    return-object p0
.end method

.method public setDeviceList(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDeviceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mDomain:Ljava/lang/String;

    return-object p0
.end method

.method public setEcmpStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEcmpStatus:I

    return-object p0
.end method

.method public setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mEpdgStatus:Z

    return-object p0
.end method

.method public setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mHandle:I

    return-object p0
.end method

.method public setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public setPAssociatedUri2nd(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPAssociatedUri2nd:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscf(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPcscf:Ljava/lang/String;

    return-object p0
.end method

.method public setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPdnType:I

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPhoneId:I

    return-object p0
.end method

.method public setPreferredPublicUserId(Lcom/sec/ims/util/NameAddr;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPreferredPublicUserId:Lcom/sec/ims/util/NameAddr;

    return-object p0
.end method

.method public setPrivateUserId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPrivateUserId:Ljava/lang/String;

    return-object p0
.end method

.method public setProhibited(Z)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mProhibited:Z

    return-object p0
.end method

.method public setPublicUserId(Ljava/util/List;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/ims/util/NameAddr;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mPublicUserId:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setRegExpiryStatus(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegExpiryStatus:I

    return-object p0
.end method

.method public setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRat:I

    return-object p0
.end method

.method public setRegisterSipResponse(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisterSipResponse:Ljava/lang/String;

    return-object p0
.end method

.method public setRegisteredPublicUserId(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mRegisteredPublicUserId:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/ims/ImsRegistration$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/sec/ims/ImsRegistration$Builder;->mServices:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setSubscriptionId(I)Lcom/sec/ims/ImsRegistration$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/ims/ImsRegistration$Builder;->mSubscriptionId:I

    return-object p0
.end method
