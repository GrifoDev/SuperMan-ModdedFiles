.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
    }
.end annotation


# instance fields
.field private app_id:Ljava/lang/String;

.field private articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;",
            ">;"
        }
    .end annotation
.end field

.field private group_id:Ljava/lang/String;

.field private sid:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->app_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->sid:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->group_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->articles:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->articles:Ljava/util/List;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;->sid:I

    return v0
.end method
