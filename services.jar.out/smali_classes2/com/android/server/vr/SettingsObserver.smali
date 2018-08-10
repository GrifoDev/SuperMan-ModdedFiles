.class public Lcom/android/server/vr/SettingsObserver;
.super Ljava/lang/Object;
.source "SettingsObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/SettingsObserver$SettingChangeListener;
    }
.end annotation


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private final mSecureSettingName:Ljava/lang/String;

.field private final mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/server/vr/SettingsObserver$SettingChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/vr/SettingsObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/vr/SettingsObserver;->sendSettingChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver;->sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    iput-object p4, p0, Lcom/android/server/vr/SettingsObserver;->mSecureSettingName:Ljava/lang/String;

    new-instance v1, Lcom/android/server/vr/SettingsObserver$1;

    invoke-direct {v1, p0, p4}, Lcom/android/server/vr/SettingsObserver$1;-><init>(Lcom/android/server/vr/SettingsObserver;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mSettingRestoreReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/vr/SettingsObserver$2;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/server/vr/SettingsObserver$2;-><init>(Lcom/android/server/vr/SettingsObserver;Landroid/os/Handler;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/vr/SettingsObserver;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, p3, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public static build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)Lcom/android/server/vr/SettingsObserver;
    .locals 2

    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/SettingsObserver;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/vr/SettingsObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v1
.end method

.method private sendSettingChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    invoke-interface {v0}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/vr/SettingsObserver$SettingChangeListener;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/android/server/vr/SettingsObserver$SettingChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/vr/SettingsObserver;->mSettingsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
