.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
    }
.end annotation


# instance fields
.field private article_id:Ljava/lang/String;

.field private meta_key:Ljava/lang/String;

.field private only_once:Z

.field private value:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->article_id:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->meta_key:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->value:I

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->only_once:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->only_once:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;->value:I

    return v0
.end method
