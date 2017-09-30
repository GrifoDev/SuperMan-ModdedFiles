.class public Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;


# instance fields
.field private mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-void
.end method

.method private getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;
    .locals 3

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    const-string v0, "EnhancedFeatures instance null"

    sget-object v2, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/util/MateLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getEnhancedFeatures()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;)V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->sInstance:Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V
    .locals 2

    const-string v0, "Device was not authenticated."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/util/MateLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->post(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public deregisterAccessory(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/DeregisterAccessoryTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/DeregisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/DeregisterAccessoryListener;)V

    goto :goto_0
.end method

.method public getAccessory(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;)V

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetContentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetContentRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->mEnhancedFeatures:Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getInitialContent(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetInitialContentTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetInitialContentRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetContentListener;)V

    goto :goto_0
.end method

.method public getResourceToken(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetResourceTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetResourceTokenTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/GetResourceTokenRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetResourceTokenListener;)V

    goto :goto_0
.end method

.method public isValidAccessory(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/IsValidAccessoryTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/ValidAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/ValidAccessoryListener;)V

    goto :goto_0
.end method

.method public registerAccessory(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/RegisterAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;)V

    goto :goto_0
.end method

.method public updateAccessory(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->postAuthErrors(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/MateListener;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/UpdateAccessoryTransaction;->start(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/EnhancedMate;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/UpdateAccessoryRequest;Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/UpdateAccessoryListener;)V

    goto :goto_0
.end method
