.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
.super Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder",
        "<",
        "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;",
        ">;"
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->sid:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->group_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->articles:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$1;)V

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->app_id:Ljava/lang/String;

    return-object p0
.end method

.method public setArticles(Ljava/util/List;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;",
            ">;)",
            "Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->articles:Ljava/util/List;

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->group_id:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceId(I)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest$Builder;->sid:I

    return-object p0
.end method
