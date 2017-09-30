.class public Lcom/android/incallui/secrcs/RcsContentObserver;
.super Landroid/database/ContentObserver;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver::onChange()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "calling update on buttons"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    :cond_1
    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver: calling update option menu"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver::registerSelfAsObserver()akul"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    sget-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 2

    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver::unregisterSelfAsObseverAndCloseCursor()akul"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
