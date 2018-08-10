.class public Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "DeviceProvisionedControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;
    }
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceProvisionedUri:Landroid/net/Uri;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSettingsObserver:Landroid/database/ContentObserver;

.field private final mUserSetupUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifyProvisionedChanged()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifySetupChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;

    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_DeviceProvisionedControllerImpl_3609(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSwitched()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_DeviceProvisionedControllerImpl_3709(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_statusbar_policy_DeviceProvisionedControllerImpl_3819(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onDeviceProvisionedChanged()V

    return-void
.end method

.method private notifyProvisionedChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifySetupChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs$1;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs$1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyUserChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs$2;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$Xcc4v_hfUvGjMX1HT8K6N6H_zWs$2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private startListening(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->startTracking()V

    return-void
.end method

.method private stopListening()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->stopTracking()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->startListening(I)V

    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onUserSetupChanged()V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;->onDeviceProvisionedChanged()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method

.method public getCurrentUser()I
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    return v0
.end method

.method public isDeviceProvisioned()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isUserSetup(I)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onUserSwitched(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mDeviceProvisionedUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mUserSetupUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->notifyUserChanged()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->stopListening()V

    :cond_0
    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController$DeviceProvisionedListener;)V

    return-void
.end method
