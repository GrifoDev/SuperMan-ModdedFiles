.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/UpdateArticleResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected updated_at:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/UpdateArticleResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/UpdateArticleResponse;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/UpdateArticleResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/UpdateArticleResponse;->updated_at:Ljava/lang/Long;

    return-void
.end method
