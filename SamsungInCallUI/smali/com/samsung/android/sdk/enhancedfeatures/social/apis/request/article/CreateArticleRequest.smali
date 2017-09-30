.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;
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
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->app_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->sid:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->permission_set_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$400(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$500(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->push_notification:Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$600(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->group_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$700(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;->access$800(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaCounter()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->meta_counter:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;

    return-object v0
.end method

.method public getMetaData()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->meta_data:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaDataRequest;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->permission_set_id:I

    return v0
.end method

.method public getPushNotification()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->push_notification:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;->sid:I

    return v0
.end method
