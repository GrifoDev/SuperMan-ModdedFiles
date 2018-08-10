.class Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;
.super Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UcmMonitor"
.end annotation


# instance fields
.field private final UCM_SERVICE_NAME:Ljava/lang/String;

.field private mUCMVendor:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback$Stub;-><init>()V

    const-string/jumbo v0, "com.samsung.ucs.ucsservice"

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->UCM_SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->registerCallback()V

    return-void
.end method

.method private registerCallback()V
    .locals 4

    const-string/jumbo v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to get UCM System service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v1, p0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->registerSystemUICallback(Lcom/samsung/android/knox/ucm/core/ICredentialManagerServiceSystemUICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "KnoxStateMonitor"

    const-string/jumbo v3, "UcmMonitor failed to be registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getUCMVendor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-object v0
.end method

.method public setUCMKeyguardVendor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$UcmMonitor;->mUCMVendor:Ljava/lang/String;

    return-void
.end method
