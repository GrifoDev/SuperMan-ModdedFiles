.class public Lcom/android/systemui/NotificationBlockManager;
.super Ljava/lang/Object;
.source "NotificationBlockManager.java"


# static fields
.field private static final APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;


# instance fields
.field private excludeKnoxApp:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/INotificationManager;

.field private mPackageBlockableArrayMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/NotificationBlockManager;->APP_NOTIFICATION_PREFS_CATEGORY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.knox.switchknoxI"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.switchknoxII"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.containeragent2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.switcher"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/NotificationBlockManager;->excludeKnoxApp:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/NotificationBlockManager;->mNotificationManager:Landroid/app/INotificationManager;

    return-void
.end method

.method private getSecNotiBlockableByMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.samsung.android.notification.blockable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v5
.end method

.method private isSecNotiBlockableHidePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/NotificationBlockManager;->excludeKnoxApp:[Ljava/lang/String;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_1

    aget-object v2, v5, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    return v8

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v5, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v3, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, v1, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    return v8

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v4
.end method


# virtual methods
.method public updateBlockable(Ljava/lang/String;ZLandroid/app/NotificationChannel;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    xor-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/NotificationBlockManager;->mPackageBlockableArrayMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/NotificationBlockManager;->isSecNotiBlockableHidePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/systemui/NotificationBlockManager;->getSecNotiBlockableByMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    const/16 v4, 0x40

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/NotificationBlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v1, v2}, Lcom/android/settingslib/Utils;->isSystemPackage(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_3

    return v5

    :catch_0
    move-exception v0

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->isBlockableSystem()Z

    move-result v3

    :cond_4
    return v3
.end method
