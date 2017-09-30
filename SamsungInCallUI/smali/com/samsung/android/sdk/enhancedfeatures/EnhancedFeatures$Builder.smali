.class public Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAppId:Ljava/lang/String;

.field mAppSecret:Ljava/lang/String;

.field mCid:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mGcmId:Ljava/lang/String;

.field mIsAnonymous:Z

.field mIsMessageSupport:Z

.field mIsProfileSync:Z

.field mServiceId:I

.field mSppId:Ljava/lang/String;

.field mUsingClass:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addAnonymous(Z)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsAnonymous:Z

    const-string v0, "is_anonymous"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/AESCryptoV02;->clearCryptoSeedPassword()V

    return-object p0
.end method

.method public addAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppId:Ljava/lang/String;

    const-string v0, "app_id"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAppSecret(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppSecret:Ljava/lang/String;

    const-string v0, "app_secret"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addCid(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mCid:Ljava/lang/String;

    const-string v0, "cid"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addEnhancedChat()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedGroup()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    const-string v0, "em_group_custom_id"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em_group_optional_id"

    invoke-static {v0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedProfile(I)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    const-string v0, "em_profile_api_version"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedShare()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedShop(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    const-string v0, "em_shop_servicename"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedShop(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    const-string v0, "em_shop_servicename"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "em_shop_dimen_1"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->contentWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_2"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->contentHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_3"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->panelWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_4"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->panelHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_5"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->thumbnailWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_6"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->thumbnailHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_7"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->previewWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "em_shop_dimen_8"

    iget v1, p2, Lcom/samsung/android/sdk/enhancedfeatures/shop/apis/Dimensions;->previewHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addEnhancedSocial()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    return-object p0
.end method

.method public addGcmId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mGcmId:Ljava/lang/String;

    const-string v0, "gcm_id"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addMessageSupport(Z)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsMessageSupport:Z

    const-string v0, "is_message_support"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public addProfileSync(Z)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsProfileSync:Z

    const-string v0, "profile_sync"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public addSppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mSppId:Ljava/lang/String;

    const-string v0, "spp_id"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 13

    const/4 v2, 0x0

    const/4 v12, 0x0

    const-string v0, "app_id"

    invoke-static {v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppId:Ljava/lang/String;

    const-string v0, "app_secret"

    invoke-static {v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppSecret:Ljava/lang/String;

    const-string v0, "cid"

    invoke-static {v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mCid:Ljava/lang/String;

    const-string v0, "spp_id"

    invoke-static {v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mSppId:Ljava/lang/String;

    const-string v0, "gcm_id"

    invoke-static {v0, v12}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mGcmId:Ljava/lang/String;

    const-string v0, "profile_sync"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsProfileSync:Z

    const-string v0, "is_message_support"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsMessageSupport:Z

    const-string v0, "is_anonymous"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsAnonymous:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppSecret:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Some of mandatory parameters are invalid. AppId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AppSecret = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsAnonymous:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mCid:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mSppId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mGcmId:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Some of mandatory parameters are invalid. cId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sppId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mSppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gcmId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mGcmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getServiceId(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mServiceId:I

    :try_start_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppId:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mAppSecret:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsAnonymous:Z

    iget v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mServiceId:I

    iget-object v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mCid:Ljava/lang/String;

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mSppId:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mGcmId:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsProfileSync:Z

    iget-boolean v10, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mIsMessageSupport:Z

    const/4 v11, 0x0

    invoke-direct/range {v0 .. v11}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$1;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->access$002(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->access$000()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security  exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v12

    goto/16 :goto_0
.end method

.method public enableEnhancedModule()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;
    .locals 2

    const-string v0, "em_feature_class"

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures$Builder;->mUsingClass:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p0
.end method
