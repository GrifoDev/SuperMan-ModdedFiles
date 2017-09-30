.class public Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;
.super Lcom/samsung/android/sdk/ssf/SsfResult;


# instance fields
.field protected article_count:I

.field protected articles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getArticleCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->article_count:I

    return v0
.end method

.method public getArticles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->articles:Ljava/util/List;

    return-object v0
.end method

.method public setArticleCount(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->article_count:I

    return-void
.end method

.method public setArticles(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->articles:Ljava/util/List;

    return-void
.end method
