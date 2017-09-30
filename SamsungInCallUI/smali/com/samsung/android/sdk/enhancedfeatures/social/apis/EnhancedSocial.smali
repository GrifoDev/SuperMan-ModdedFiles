.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;


# instance fields
.field private enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;

    return-object v0
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EnhancedSocial is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/util/SocialLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V
    .locals 2

    const-string v0, "Device was not authenticated."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPushListener(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/EnhancedSocialPushListener;

    return-void
.end method

.method public createArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateArticleTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateArticleListener;)V

    goto :goto_0
.end method

.method public createArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/CreateArticleMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/CreateArticleMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/CreateArticleMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/CreateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public createArticleMetaData(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetadata/CreateArticleMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/CreateArticleMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/CreateArticleMetaDataTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/CreateArticleMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetadata/CreateArticleMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public createComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/CreateCommentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/CreateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/CreateCommentListener;)V

    goto :goto_0
.end method

.method public createCommentMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/CreateCommentMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/CreateCommentMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public createCommentMetaData(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/CreateCommentMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/CreateCommentMetaDataTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/CreateCommentMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/CreateCommentMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public createMultiple(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/CreateMultipleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;)V

    goto :goto_0
.end method

.method public deleteArticle(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/DeleteArticleTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/DeleteArticleTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/DeleteArticleTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public deleteArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/DeleteArticleMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/DeleteArticleMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/DeleteArticleMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public deleteArticleMetaData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/DeleteArticleMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public deleteComment(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/DeleteCommentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public deleteCommentMetaCounter(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/DeleteCommentMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/DeleteCommentMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/DeleteCommentMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public deleteCommentMetaData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/DeleteCommentMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/DeleteCommentMetaDataTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/DeleteCommentMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArticle(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;)V

    goto :goto_0
.end method

.method public getArticleMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/GetArticleMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/GetArticleMetaCounterListener;)V

    goto :goto_0
.end method

.method public getArticleMetaData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetadata/GetArticleMetaDataListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/GetArticleMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/GetArticleMetaDataTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/GetArticleMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetadata/GetArticleMetaDataListener;)V

    goto :goto_0
.end method

.method public getComment(Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;)V

    goto :goto_0
.end method

.method public getCommentMetaCounter(Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;)V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;)V

    goto :goto_0
.end method

.method public getCommentMetaData(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetadata/GetCommentMetaDataListener;)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/GetCommentMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/GetCommentMetaDataTransaction;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/GetCommentMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetadata/GetCommentMetaDataListener;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getNotification(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/GetNotificationTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/BaseRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/notification/GetNotificationListener;)V

    goto :goto_0
.end method

.method public searchSocial(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/search/SocialSearchRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;)V

    goto :goto_0
.end method

.method public updateArticle(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/UpdateArticleTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/article/UpdateArticleRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/UpdateArticleListener;)V

    goto :goto_0
.end method

.method public updateArticleMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetacounter/UpdateArticleMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetacounter/UpdateArticleMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/articlemetacounter/UpdateArticleMetaCounterListener;)V

    goto :goto_0
.end method

.method public updateArticleMetaData(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetadata/UpdateArticleMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/UpdateArticleMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/UpdateArticleMetaDataTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/articlemetadata/UpdateArticleMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/articlemetadata/UpdateArticleMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public updateComment(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/UpdateCommentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/comment/UpdateCommentRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/UpdateCommentListener;)V

    goto :goto_0
.end method

.method public updateCommentMetaCounter(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetacounter/UpdateCommentMetaCounterRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;)V

    goto :goto_0
.end method

.method public updateCommentMetaData(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetadata/UpdateCommentMetaDataTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/commentmetadata/UpdateCommentMetaDataRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method

.method public updateNotification(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->postError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/notification/UpdateNotificationTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/EnhancedSocial;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/notification/UpdateNotificationRequest;Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/SocialCommonListener;)V

    goto :goto_0
.end method
