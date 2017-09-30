.class public Lcom/android/incallui/remotecall/RemoteCallIntentService;
.super Landroid/app/IntentService;


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static PULL_REMOTE:Ljava/lang/String;

.field private static sIsTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "RemoteCallIntentService"

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    const-string v0, "pull_remote"

    sput-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "RemoteCallIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static isTest()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    return v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isTest"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTest = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "num"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/remotecall/RemoteCallIntentService;->PULL_REMOTE:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    sget-boolean v3, Lcom/android/incallui/remotecall/RemoteCallIntentService;->sIsTest:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->init()V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->setSelfTest(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    if-eqz v2, :cond_1

    sget-object v0, Lcom/android/incallui/remotecall/RemoteCallIntentService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "receive pull_remote"

    invoke-static {v0, v1}, Lcom/android/incallui/remotecall/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->requestPulling()Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->getInstance()Lcom/android/incallui/remotecall/RemoteCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/remotecall/RemoteCallPresenter;->init()V

    goto :goto_0
.end method
