.class public Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
.super Ljava/lang/Object;


# static fields
.field public static final API_VERSION_1:I = 0x1

.field public static final API_VERSION_2:I = 0x2

.field private static final HTTP_STATUS_CODE_SUCCESS:I = 0xc8

.field private static final TAG:Ljava/lang/String;

.field private static final TOKEN_SET_ME_PRIVACY:I = 0x1

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;


# instance fields
.field private enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

.field private mContext:Landroid/content/Context;

.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

.field private mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

.field private mSsfClient:Lcom/samsung/android/sdk/ssf/SsfClient;

.field private mSyncTaskArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->init(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->enhancedFeatureInterface:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->registerFeature(ILcom/samsung/android/sdk/enhancedfeatures/internal/common/EnhancedFeatureInterface;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->postErrorDetails(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    return-void
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v2, "EnhancedProfile is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    :cond_2
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;I)Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    .locals 4

    const/4 v0, 0x0

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v2, "EnhancedFeatures instance null"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
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

    const-string v2, "EnhancedProfile is not available for anonymous type"

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->setApiVersion(I)V

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static isContactServiceEnabled(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method private postErrorDetails(Lcom/samsung/android/sdk/ssf/SsfResult;)Ljava/lang/String;
    .locals 2

    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2af8

    if-ne v0, v1, :cond_0

    const-string v0, "Network Error"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2af9

    if-ne v0, v1, :cond_1

    const-string v0, "Network Timeout"

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2afa

    if-ne v0, v1, :cond_2

    const-string v0, "Network No Connection"

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2afb

    if-ne v0, v1, :cond_3

    const-string v0, "Network IO Error"

    goto :goto_0

    :cond_3
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee0

    if-ne v0, v1, :cond_4

    const-string v0, "Server Errors"

    goto :goto_0

    :cond_4
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee1

    if-ne v0, v1, :cond_5

    const-string v0, "Server Bad Access Token"

    goto :goto_0

    :cond_5
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x2ee2

    if-ne v0, v1, :cond_6

    const-string v0, "Server Invalid Response"

    goto :goto_0

    :cond_6
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x7531

    if-ne v0, v1, :cond_7

    const-string v0, "Main Thread Not Allowed"

    goto :goto_0

    :cond_7
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x7532

    if-ne v0, v1, :cond_8

    const-string v0, "Contact Bad Access Token"

    goto :goto_0

    :cond_8
    iget v0, p1, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x753a

    if-ne v0, v1, :cond_9

    const-string v0, "Contact No Contents"

    goto :goto_0

    :cond_9
    const-string v0, "Undefined error"

    goto :goto_0
.end method

.method private sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$11;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "startContactSync() context is null - return"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;

    invoke-direct {v0, p1, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mSyncTaskArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/SyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startProfileSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v0, "startProfileSync() context is null - return"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;

    invoke-direct {v0, p1, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/ProfileSyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public addProfilePushListener(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mPushListener:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/EnhancedProfilePushListener;

    return-void
.end method

.method public clearDB()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->clearAllPreference()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->clearLocalDB(Landroid/content/Context;)V

    const-string v0, "Cleared local Data files"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public downLoadProfileImage(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->downloadProfileImageBlocking(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/Object;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->httpStatusCode:I

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuntimeException ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ssf/file/io/DownloadFileResponse;->getResponse()[B

    move-result-object v0

    goto/16 :goto_1
.end method

.method public getBuddyInfo(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBuddyInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "data1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/NumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mimetype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->readContactList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public getContacts(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Get contact details from server."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_get_contact"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_get_polling"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public getGroupProfileInfo(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;ILcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;)V
    .locals 4

    const/16 v3, 0x753c

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;->getDuidList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;->getDuidList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "GetGroupProfileReq cannot be null "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "GetGroupProfileReq cannot be null"

    invoke-direct {p0, p3, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;->setType(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/GroupProfileRequest;->getDuidList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;->setDuidList(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetGroupProfileListner;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-static {v2, v0, p2, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForGroup(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetGroupProfileReqInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getProfile4Call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfile4CallTransation;->start()V

    return-void
.end method

.method public getProfileAndCapability(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "phoneNumber is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileAndCapabilityListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/transaction/GetProfileAndCapabilityTransaction;->start()V

    return-void
.end method

.method public getProfileImageByDuid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProfileImageByMsisdn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByMSISDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImage(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProfileImageNumberByDuid(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileImageNumberByMsisdn(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByMSISDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageNumber(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProfileImageUrlByDuid(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByDUID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getProfileImageUrl(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getServiceProfileInfo(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/ServiceProfileRequest;ILcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetServiceProfileListner;)V
    .locals 4

    const/16 v3, 0x753c

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/ServiceProfileRequest;->getMsisdnList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/ServiceProfileRequest;->getMsisdnList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_0
    const-string v0, "ServiceProfileRequest cannot be null "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "ServiceProfileRequest cannot be null"

    invoke-direct {p0, p3, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/request/ServiceProfileRequest;->getMsisdnList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;->setMsisdnList(Ljava/util/ArrayList;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$5;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$5;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetServiceProfileListner;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    invoke-static {v2, v0, p2, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfileForService(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/GetServiceProfileRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public getUserProfile(Ljava/lang/String;ILcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;)V
    .locals 3

    const/16 v2, 0x753c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "msisdn cannot be Empty "

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const-string v0, "msisdn cannot be null"

    invoke-direct {p0, p3, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/GetProfileListner;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    invoke-static {v1, p1, p2, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->getProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertContactImageUrl(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "contact_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data1"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mimetype"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "data3"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string v2, "sync_data"

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isAppUser(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByMSISDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v2, v7

    const-string v3, "contact_id = ? AND mimetype = ? AND data1 = ? "

    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    aput-object v0, v4, v7

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    const/4 v0, 0x2

    aput-object p2, v4, v0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "sync_data"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v6

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method public isCoreAppsUser(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/AgentQueryHelper;->getCoreAppsContactRawIdByMSISDN(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public readAgentContactTable([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "contacts"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public readContactList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;-><init>(Landroid/content/Context;)V

    const-string v1, "sync_data"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/db/CAgentProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readContactList - cursor count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "readContactList - cursor is null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public searchContact(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V
    .locals 8

    const/16 v7, 0x753b

    const/16 v6, 0x753c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p3, :cond_1

    const-string v0, "Duid or keyword cannot be empty"

    invoke-direct {p0, p3, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$6;

    invoke-direct {v5, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$6;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$7;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$7;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTimeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getContactToken(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v4, 0x1

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->searchContact(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v6, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public searchProfile(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V
    .locals 6

    const/16 v5, 0x753b

    const/16 v4, 0x753c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const-string v0, "Keyword cannot be empty"

    invoke-direct {p0, p2, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$8;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$9;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SearchResponseListner;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->getContactToken(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3, v0}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->searchProfile(Lcom/samsung/android/sdk/ssf/SsfClient;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/samsung/android/sdk/ssf/contact/ContactsManager;->getContactToken(Lcom/samsung/android/sdk/ssf/SsfClient;IILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setContacts(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 3

    const-string v0, "Sync native contacts to server."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_set_contact"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public setMeProfileNumber(Ljava/lang/String;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$10;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$10;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V

    new-instance v1, Lcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;

    invoke-direct {v1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;->setMsisdn(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;->setDuidList(Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v0, v4}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->changeMeProfileNumber(Lcom/samsung/android/sdk/ssf/SsfClient;ILcom/samsung/android/sdk/ssf/contact/io/ProfileNumberRequest;Lcom/samsung/android/sdk/ssf/SsfListener;Lcom/samsung/android/sdk/ssf/common/ConnectTimeout;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, 0x753c

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setProfileSetting(ZZZZ)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eqz p1, :cond_4

    move v4, v0

    :goto_0
    if-eqz p4, :cond_5

    move v3, v0

    :goto_1
    if-eqz p2, :cond_6

    move v2, v0

    :goto_2
    if-eqz p3, :cond_7

    :goto_3
    if-eq v4, v1, :cond_0

    const-string v5, "email_checking"

    invoke-static {v5, v4}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_0
    if-eq v3, v1, :cond_1

    const-string v4, "organisation_checking"

    invoke-static {v4, v3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_1
    if-eq v2, v1, :cond_2

    const-string v3, "address_checking"

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_2
    if-eq v0, v1, :cond_3

    const-string v1, "date_checking"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentIndividualItemsEnabled(Ljava/lang/String;I)V

    :cond_3
    return-void

    :cond_4
    move v4, v1

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_1

    :cond_6
    move v2, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public setUserPrivacy(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;Ljava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x753c

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v1

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v0

    if-ne v1, v0, :cond_2

    :cond_0
    if-nez p2, :cond_2

    const-string v0, "selectedMembers cannot be null for \'Selected\' or \'Favourites\' privacy level"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    const-string v0, "selectedMembers cannot be null for \'Selected\' or \'Favourites\' privacy level"

    invoke-direct {p0, p3, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->getIsSupportedSamsungDevice()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CPref;->setContactAgentPrivacySettings(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_FAVORITES:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->PRIVACY_SELECTED:Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/PrivacyConstants;->getValue()I

    move-result v0

    if-ne v1, v0, :cond_5

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v4, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;-><init>()V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/ssf/contact/io/ContactRequestInfo;->setPhoneNumber(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;

    invoke-direct {v1, p0, p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/SetPrivacyListener;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;)V

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v1}, Lcom/samsung/android/sdk/ssf/contact/ProfileManager;->updatePrivacy(Lcom/samsung/android/sdk/ssf/SsfClient;Lcom/samsung/android/sdk/ssf/contact/io/PrivacyRequestInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v1, 0x753b

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->sendProfileErrorResponse(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/BaseListener;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public syncContactSinceLastSync(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Sync contacts - syncContactsSinceLastSync"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_manual_contact_sync"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_get_polling"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public syncLocalContact(Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 2

    const-string v0, "Sync contacts - syncLocalContacts"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startContactSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public syncLocalContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Sync contacts - syncLocalContacts"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_manual_contact_sync"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_get_contact_from_server"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "extra_get_polling"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->syncLocalContact(Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/DownloadImageListener;)V

    return-void
.end method

.method public syncProfile(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V
    .locals 3

    const-string v0, "Sync Profile - Profile Sync"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/util/CLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_action_upload_profile_on"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/EnhancedProfile;->startProfileSync(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ProfileSyncListener;)V

    return-void
.end method
