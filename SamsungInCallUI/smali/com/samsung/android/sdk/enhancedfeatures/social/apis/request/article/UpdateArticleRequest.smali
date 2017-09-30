.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;
    }
.end annotation


# instance fields
.field private article_id:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private group_id:Ljava/lang/String;

.field private permission_set_id:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->article_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->permission_set_id:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->description:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->group_id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionSetId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;->permission_set_id:I

    return v0
.end method
