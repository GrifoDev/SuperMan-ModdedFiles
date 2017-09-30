.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private article_id:Ljava/lang/String;

.field private meta_key:Ljava/lang/String;

.field private only_once:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->value:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->only_once:Z

    return v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$1;)V

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->article_id:Ljava/lang/String;

    return-object p0
.end method

.method public setMetaKey(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->meta_key:Ljava/lang/String;

    return-object p0
.end method

.method public setOnlyOnce(Z)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->only_once:Z

    return-object p0
.end method

.method public setValue(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest$Builder;->value:I

    return-object p0
.end method
