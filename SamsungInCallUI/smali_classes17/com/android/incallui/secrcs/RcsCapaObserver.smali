.class public Lcom/android/incallui/secrcs/RcsCapaObserver;
.super Landroid/database/ContentObserver;
.source "RcsCapaObserver.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsOwnFtCapable:Z

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mRegistered:Z

.field private number:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/incallui/secrcs/RcsCapaObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "phoneNum"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 24
    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mIsOwnFtCapable:Z

    .line 30
    sget-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver()::"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iput-boolean v2, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRegistered:Z

    .line 32
    iput-object p2, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    .line 33
    iput-object p3, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->number:Ljava/lang/String;

    .line 34
    new-instance v0, Lcom/android/incallui/secrcs/RcsCapaObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/secrcs/RcsCapaObserver$1;-><init>(Lcom/android/incallui/secrcs/RcsCapaObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    .line 41
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 70
    sget-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver::onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez p1, :cond_0

    .line 72
    sget-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver::calling update option menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/secrcs/RcsCapaObserver;->updateUI()V

    .line 75
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 76
    return-void
.end method

.method public registerSelfAsObserver(Landroid/content/ContentResolver;)V
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v5, 0x1

    .line 55
    sget-object v3, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RcsCapaObserver::registerSelfAsObserver()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-boolean v3, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRegistered:Z

    if-nez v3, :cond_0

    .line 57
    iput-boolean v5, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRegistered:Z

    .line 58
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->number:Ljava/lang/String;

    .line 59
    .local v1, "telNum":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 60
    move-object v2, v1

    .line 61
    .local v2, "telNumUri":Ljava/lang/String;
    sget-object v3, Lcom/android/incallui/secrcs/RcsTransferConstants;->SIP_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 62
    .local v0, "queryUri":Landroid/net/Uri;
    invoke-virtual {p1, v0, v5, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    sget-object v3, Lcom/android/incallui/secrcs/RcsTransferConstants;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 66
    .end local v0    # "queryUri":Landroid/net/Uri;
    .end local v1    # "telNum":Ljava/lang/String;
    .end local v2    # "telNumUri":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public unregisterSelfAsObseverAndCloseCursor()V
    .locals 3

    .prologue
    .line 44
    sget-object v1, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v2, "RcsCapaObserver::unregisterSelfAsObseverAndCloseCursor()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-boolean v1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRegistered:Z

    .line 48
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 50
    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsCapaObserver;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 52
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_0
    return-void
.end method

.method public updateUI()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/android/incallui/secrcs/RcsCapaObserver;->LOG_TAG:Ljava/lang/String;

    const-string v1, "RcsCapaObserver::updateUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method
