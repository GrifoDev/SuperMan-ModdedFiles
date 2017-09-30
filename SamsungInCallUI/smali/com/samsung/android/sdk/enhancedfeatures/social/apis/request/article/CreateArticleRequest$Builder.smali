.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private app_id:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

.field private meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

.field private name:Ljava/lang/String;

.field private permission_set_id:I

.field private push_notification:Ljava/lang/Boolean;

.field private sid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->sid:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->permission_set_id:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->group_id:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-object p0
.end method

.method public setMetaData(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public setPermissionSetId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->permission_set_id:I

    return-object p0
.end method

.method public setPushNotification(Ljava/lang/Boolean;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->push_notification:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->sid:I

    return-object p0
.end method
