.class public Lcom/android/keyguard/util/SettingsHelper;
.super Ljava/lang/Object;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/SettingsHelper$-void__init__android_content_Context_context_LambdaImpl0;,
        Lcom/android/keyguard/util/SettingsHelper$1;,
        Lcom/android/keyguard/util/SettingsHelper$Item;,
        Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/util/SettingsHelper;


# instance fields
.field private mCallbacks:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/util/SettingsHelper$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/util/SettingsHelper;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/util/SettingsHelper;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/util/SettingsHelper;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/util/SettingsHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/util/SettingsHelper;->broadcastChange(Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/keyguard/util/SettingsHelper$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/util/SettingsHelper$1;-><init>(Lcom/android/keyguard/util/SettingsHelper;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/keyguard/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/keyguard/util/SettingsHelper$-void__init__android_content_Context_context_LambdaImpl0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/util/SettingsHelper$-void__init__android_content_Context_context_LambdaImpl0;-><init>(Lcom/android/keyguard/util/SettingsHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private broadcastChange(Landroid/net/Uri;)V
    .locals 6

    const-string/jumbo v3, "SettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "*** broadcastChange for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;
    .locals 1

    sget-object v0, Lcom/android/keyguard/util/SettingsHelper;->sInstance:Lcom/android/keyguard/util/SettingsHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/SettingsHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/SettingsHelper;->sInstance:Lcom/android/keyguard/util/SettingsHelper;

    :cond_0
    sget-object v0, Lcom/android/keyguard/util/SettingsHelper;->sInstance:Lcom/android/keyguard/util/SettingsHelper;

    return-object v0
.end method

.method private readSettingsDB()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "readSettingsDB()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/util/SettingsHelper$Item;

    iget-object v5, p0, Lcom/android/keyguard/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readSettingsDB() elapsed= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerSettingsObserver()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "registerSettingsObserver()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper$Item;->registerObserver()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerSettingsObserver() elapsed= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setUpSettingsItem()V
    .locals 15

    const/4 v14, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x0

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "white_lockscreen_statusbar"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    const-string/jumbo v4, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "opne_theme_effect_lockscreen_wallpaper"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "dualclock_menu_settings"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "emergency_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "easy_mode_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "kids_home_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "ultra_powersaving_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "access_control_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "sidesync_source_connect"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "intelligent_sleep_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "powersaving_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "psm_switch"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "automatic_unlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "mdm_wallpaper_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "any_screen_running"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "set_shortcuts_mode"

    const-string/jumbo v11, "Int"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lockscreen_wallpaper_path"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_clock"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_numeric"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "theme_font_system"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "time_12_24"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "homecity_timezone"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_theme_package_open_theme"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_appicon_theme_package"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "current_sec_active_themepackage"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "airplane_mode_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "white_cover_wallpaper"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "low_power"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "lock_screen_show_notifications"

    const-string/jumbo v4, "Int"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "speak_password"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "high_text_contrast_enabled"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "auto_swipe_main_user"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "Secure"

    const-string/jumbo v10, "shared_device_status"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "phone1_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "phone2_on"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "lock_application_shortcut"

    const-string/jumbo v4, "String"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "Global"

    const-string/jumbo v10, "tap_to_icon"

    const-string/jumbo v11, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "lock_fmm_Message"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v9, "System"

    const-string/jumbo v10, "lock_fmm_phone"

    const-string/jumbo v11, "String"

    move-object v8, p0

    move-object v12, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "show_button_background"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "simple_status_bar"

    const-string/jumbo v4, "Int"

    const-string/jumbo v1, "On"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v8, "CscFeature_SystemUI_ConfigDefStatusSimpleStatusBar"

    const-string/jumbo v9, "On"

    invoke-virtual {v5, v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "sem_perfomance_mode"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "use_iris_firstlock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Secure"

    const-string/jumbo v3, "face_screen_lock"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "additional_information_val"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_music_control"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_today_schedule"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "add_info_steps"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "Global"

    const-string/jumbo v3, "lockscreen_aod_servicebox_page"

    const-string/jumbo v4, "String"

    move-object v1, p0

    move-object v5, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    const-string/jumbo v2, "System"

    const-string/jumbo v3, "data_usage_reminder"

    const-string/jumbo v4, "Int"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/util/SettingsHelper$Item;-><init>(Lcom/android/keyguard/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v1, v13

    goto/16 :goto_0
.end method


# virtual methods
.method synthetic -com_android_keyguard_util_SettingsHelper_lambda$1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/util/SettingsHelper;->setUpSettingsItem()V

    invoke-direct {p0}, Lcom/android/keyguard/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/keyguard/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper$Item;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public getActiveThemePackage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentOpenThemeXmlPackageName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMMessage()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFMMPhone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenWallpaperTransparent()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM1On()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getMultiSIMDeviceSIM2On()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getOpenThemeClockFont()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpenThemeNumericFont()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharedDeviceEnabled()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    return v0
.end method

.method public getShortcutAppList()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 7

    iget-object v5, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v6, 0x17

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const-string/jumbo v0, "12"

    iget-object v5, p0, Lcom/android/keyguard/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v1, v5, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v5, 0x1

    invoke-static {v5, v1}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v2

    instance-of v5, v2, Ljava/text/SimpleDateFormat;

    if-eqz v5, :cond_1

    move-object v4, v2

    check-cast v4, Ljava/text/SimpleDateFormat;

    invoke-virtual {v4}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x48

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_1

    const-string/jumbo v0, "24"

    :cond_1
    const-string/jumbo v5, "24"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    return v5
.end method

.method public isAccessControlEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isAutoWipeEnable()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutomaticUnlockEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataUsageReminderEnabled()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_DATA_USAGE_REMINDER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v3, 0x34

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isDualClock()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEasyModeOn()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledFaceRecognition()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledIrisOnFristScreen()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIconSquicleMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLiveWallpaperEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isMDMWallpaperEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormalInHighPerformanceMode()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPowerSavingMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisibleForMDM()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isShowButtonBackground()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowNotificationOnKeyguard()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSideSyncEnabled()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isSimpleStatusBarEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x2b

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartStayEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUltraPowerSavingMode()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteCoverWallpaper()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x1d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteKeyguardStatusBar()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isWhiteKeyguardWallpaper()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public istKidsHomeModeEnabled()Z
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0}, Lcom/android/keyguard/util/SettingsHelper$Item;->getIntValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserSwitched()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/keyguard/util/SettingsHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/keyguard/util/SettingsHelper;->readSettingsDB()V

    invoke-direct {p0}, Lcom/android/keyguard/util/SettingsHelper;->registerSettingsObserver()V

    return-void
.end method

.method public varargs registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string/jumbo v4, "SettingsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "*** register listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v2, p2

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SettingsHelper"

    const-string/jumbo v5, "Object tried to add another listener"

    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "Called by"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    aget-object v5, p2, v1

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_2
    monitor-exit p0

    return-void
.end method

.method public setHomeTimeZone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "homecity_timezone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setWhiteKeyguardStatusBar(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_statusbar"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public setWhiteKeyguardWallpaper(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "white_lockscreen_wallpaper"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/keyguard/util/SettingsHelper;->mItemLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/util/SettingsHelper$Item;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/util/SettingsHelper$Item;->setIntValue(I)V

    return-void
.end method

.method public unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V
    .locals 9

    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, "SettingsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "*** unregister listener for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v6, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1
    if-ltz v1, :cond_1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    iget-object v7, p0, Lcom/android/keyguard/util/SettingsHelper;->mCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
