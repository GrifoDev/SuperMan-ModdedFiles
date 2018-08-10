.class public Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;
    }
.end annotation


# static fields
.field private static mInstalledState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecentsPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;


# instance fields
.field mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .locals 2

    const-class v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->sRecentsPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->sRecentsPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    sget-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->sRecentsPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->sRecentsPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    return-object v1
.end method

.method private initilize(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 2

    new-instance v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;)V

    iput p3, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    iput-object p2, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    return-void
.end method

.method public static isInstalled(Ljava/lang/String;)Z
    .locals 2

    sget-object v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateInstalledState(Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mInstalledState:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    const/4 v6, 0x0

    invoke-virtual {v3, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RecentsPackageMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateInstalledState: NameNotFoundException is occurred pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    iget-object v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_2

    iget-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_1
    iput-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :cond_2
    iget v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    if-ltz v3, :cond_4

    iget-boolean v3, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    if-eqz v3, :cond_3

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    if-lt v3, v6, :cond_3

    move v5, v4

    :cond_3
    iput-boolean v5, v1, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto :goto_1
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->onPackageModified(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->updateInstalledState(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/recents/events/activity/PackagesChangedEvent;-><init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public register(Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.MULTI_WINDOW_SETTING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "com.android.settings"

    invoke-direct {p0, v4, v2, v6}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Landroid/content/Intent;I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x30200000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "helphub:item"

    const-string/jumbo v5, "popup_opening"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "multi_window"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub"

    invoke-direct {p0, v4, v1, v6}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Landroid/content/Intent;I)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    const-string/jumbo v5, "voc://view/contactUs"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v4, "packageName"

    const-string/jumbo v5, "com.android.systemui.recents"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "appId"

    const-string/jumbo v5, "53e5c21oy8"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "appName"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f120a20

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "feedbackType"

    const-string/jumbo v5, "ask"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.voc"

    const v5, 0xa220268

    invoke-direct {p0, v4, v3, v5}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->initilize(Ljava/lang/String;Landroid/content/Intent;I)V

    :try_start_0
    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x1

    invoke-virtual {p0, p1, v4, v5, v6}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregister()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
