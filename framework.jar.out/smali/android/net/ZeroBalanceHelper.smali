.class public final Landroid/net/ZeroBalanceHelper;
.super Ljava/lang/Object;
.source "ZeroBalanceHelper.java"


# static fields
.field public static final BACKGROUND_DATA_BROADCAST:Ljava/lang/String; = "org.codeaurora.background.data"

.field public static final BACKGROUND_DATA_PROPERTY:Ljava/lang/String; = "sys.background.data.disable"

.field public static final TAG:Ljava/lang/String; = "ZeroBalance"

.field private static sRedirectCount:I

.field private static sRedirectMaxCount:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput v0, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    .line 50
    const/4 v0, 0x3

    sput v0, Landroid/net/ZeroBalanceHelper;->sRedirectMaxCount:I

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    .line 55
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private getConfiguredRedirectURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    iget-object v1, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    const v2, 0x1040078

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "redirectURL":Ljava/lang/String;
    const-string/jumbo v1, "ZeroBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Returning the configured redirect URL   :   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-object v0
.end method


# virtual methods
.method public getBgDataProperty()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string/jumbo v1, "sys.background.data.disable"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "isBgDataPropertySet":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x0

    sput v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    .line 70
    :cond_0
    return-object v0
.end method

.method public getFeatureConfigValue()Z
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public setBgDataProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "enabled"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "org.codeaurora.background.data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    iget-object v1, p0, Landroid/net/ZeroBalanceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 58
    return-void
.end method

.method public declared-synchronized setHttpRedirectCount(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-direct {p0}, Landroid/net/ZeroBalanceHelper;->getConfiguredRedirectURL()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "redirectUrl":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    sget v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    .line 85
    const-string/jumbo v1, "ZeroBalance"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http:sRedirectCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I

    sget v2, Landroid/net/ZeroBalanceHelper;->sRedirectMaxCount:I

    if-lt v1, v2, :cond_0

    .line 87
    const-string/jumbo v1, "ZeroBalance"

    const-string/jumbo v2, "http:Background Data will be disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v1, "true"

    invoke-virtual {p0, v1}, Landroid/net/ZeroBalanceHelper;->setBgDataProperty(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x0

    sput v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 81
    return-void

    .line 92
    :cond_1
    :try_start_1
    const-string/jumbo v1, "ZeroBalance"

    const-string/jumbo v2, "http: resetting the counter "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v1, 0x0

    sput v1, Landroid/net/ZeroBalanceHelper;->sRedirectCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "redirectUrl":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
