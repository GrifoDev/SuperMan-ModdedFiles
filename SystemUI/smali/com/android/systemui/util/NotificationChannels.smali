.class public Lcom/android/systemui/util/NotificationChannels;
.super Lcom/android/systemui/SystemUI;
.source "NotificationChannels.java"


# static fields
.field public static ALERTS:Ljava/lang/String;

.field public static GENERAL:Ljava/lang/String;

.field public static ONGOING:Ljava/lang/String;

.field public static SCREENSHOTS:Ljava/lang/String;

.field public static STORAGE:Ljava/lang/String;

.field public static TVPIP:Ljava/lang/String;


# instance fields
.field private mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ALR"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const-string/jumbo v0, "SCN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    const-string/jumbo v0, "GEN"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const-string/jumbo v0, "DSK"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const-string/jumbo v0, "TPP"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const-string/jumbo v0, "ONGOING"

    sput-object v0, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static createAll(Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v2, 0x3

    const/4 v7, 0x1

    const/4 v3, 0x2

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-array v4, v9, [Landroid/app/NotificationChannel;

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->ALERTS:Ljava/lang/String;

    const v6, 0x7f120807

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS:Ljava/lang/String;

    const v6, 0x7f12080e

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v4, v7

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v5, Lcom/android/systemui/util/NotificationChannels;->GENERAL:Ljava/lang/String;

    const v6, 0x7f12080c

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v4, v3

    new-instance v5, Landroid/app/NotificationChannel;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->STORAGE:Ljava/lang/String;

    const v1, 0x7f12080f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {v5, v6, v7, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v5, v4, v2

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    const v5, 0x7f12080d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    aput-object v1, v4, v8

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    invoke-static {p0}, Lcom/android/systemui/util/NotificationChannels;->isTv(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/app/NotificationChannel;

    sget-object v2, Lcom/android/systemui/util/NotificationChannels;->TVPIP:Ljava/lang/String;

    const v3, 0x7f120811

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method private static isTv(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method protected declared-synchronized onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/NotificationChannels;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mLocale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/NotificationChannels;->createAll(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/NotificationChannels;->mLocale:Ljava/util/Locale;

    return-void
.end method
