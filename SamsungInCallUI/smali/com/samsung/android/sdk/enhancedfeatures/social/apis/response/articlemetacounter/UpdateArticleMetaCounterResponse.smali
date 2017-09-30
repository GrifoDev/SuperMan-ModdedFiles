.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;


# instance fields
.field protected article_id:Ljava/lang/String;

.field protected meta_key:Ljava/lang/String;

.field protected updated_at:Ljava/lang/Long;

.field protected value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/BaseResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->article_id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->updated_at:Ljava/lang/Long;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->value:I

    return v0
.end method

.method public setArticleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->article_id:Ljava/lang/String;

    return-void
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/Long;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->updated_at:Ljava/lang/Long;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/UpdateArticleMetaCounterResponse;->value:I

    return-void
.end method
