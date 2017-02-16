.class public Lcom/android/incallui/secrcs/RcsContentObserver;
.super Landroid/database/ContentObserver;
.source "RcsContentObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/android/incallui/secrcs/RcsContentObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 29
    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    .line 31
    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 54
    sget-object v1, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsContentObserver::onChange()"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    if-nez p1, :cond_0

    .line 56
    sget-object v1, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "calling update on buttons"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/UiAdapter;->getCallButtonPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    .line 58
    .local v0, "buttonPresenter":Lcom/android/incallui/CallButtonPresenter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->onUiResume()V

    .line 63
    :cond_1
    sget-object v1, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsContentObserver: calling update option menu"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 66
    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x1

    .line 45
    sget-object v0, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsContentObserver::registerSelfAsObserver()akul"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 47
    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    .line 48
    sget-object v0, Lcom/android/incallui/secrcs/RcsTransferConstants;->INCALL_SERVICE_PRVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 3

    .prologue
    .line 35
    sget-object v1, Lcom/android/incallui/secrcs/RcsContentObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsContentObserver::unregisterSelfAsObseverAndCloseCursor()akul"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-boolean v1, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 38
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mRegistered:Z

    .line 39
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsContentObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 42
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method
