.class public Lcom/android/systemui/coloring/QSColoringServiceManager;
.super Ljava/lang/Object;
.source "QSColoringServiceManager.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/systemui/splugins/SPluginListener",
        "<",
        "Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

.field private mQSColoringBlurAmount:F

.field private mQSColoringBlurEffectEnabled:Z

.field private mQSColoringDimAmount:F

.field private mQSColoringDimEffectEnabled:Z

.field private mQSColoringEnabled:Z

.field private mQSColoringUserPreferOpenTheme:Z

.field private mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/coloring/QSColoringServiceManager;)Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/coloring/QSColoringServiceManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurAmount:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurEffectEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/coloring/QSColoringServiceManager;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimAmount:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimEffectEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringEnabled:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/coloring/QSColoringServiceManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringUserPreferOpenTheme:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->applyQSColoringResoucres()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/coloring/QSColoringServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateQSColoring()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/splugins/SPluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/splugins/SPluginManager;

    const-class v1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method private applyQSColoringBlurEffect()V
    .locals 2

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->applyQSColoringBlurEffect()V

    return-void
.end method

.method private applyQSColoringDimEffect()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateQSColoringDimEffect()V

    :cond_0
    return-void
.end method

.method private applyQSColoringResoucres()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQuickSettingPanel()V

    :cond_0
    return-void
.end method

.method private initResources()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurEffectEnabled:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimEffectEnabled:Z

    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimAmount:F

    return-void
.end method

.method private setPluginQSColoringCallback()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    new-instance v1, Lcom/android/systemui/coloring/QSColoringServiceManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/coloring/QSColoringServiceManager$1;-><init>(Lcom/android/systemui/coloring/QSColoringServiceManager;)V

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->setCallback(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring$Callback;)V

    :cond_0
    return-void
.end method

.method private updateAllQSColoringFunctions()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->applyQSColoringResoucres()V

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->applyQSColoringBlurEffect()V

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->applyQSColoringDimEffect()V

    return-void
.end method

.method private updateQSColoring()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringEnabled:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->initResources()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateAllQSColoringFunctions()V

    return-void
.end method


# virtual methods
.method public getQSColoringBlurAmount()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurAmount:F

    return v0
.end method

.method public getQSColoringColor(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringColor(I)I

    move-result v0

    return v0
.end method

.method public isQSColoringBlurEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurEffectEnabled:Z

    return v0
.end method

.method public isQSColoringDimEffectEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimEffectEnabled:Z

    return v0
.end method

.method public isQSColoringEnabled()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringUserPreferOpenTheme()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringEnabled:Z

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isQSColoringUserPreferOpenTheme()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringUserPreferOpenTheme:Z

    return v0
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;Landroid/content/Context;)V
    .locals 2

    const-string/jumbo v0, "QSColoringServiceManager"

    const-string/jumbo v1, "onPluginConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringBlurEffectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurEffectEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isQSColoringDimEffectEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimEffectEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringBlurEffectAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringBlurAmount:F

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->getQSColoringDimEffectAmount()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringDimAmount:F

    iget-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;->isUserPreferOpenTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mQSColoringUserPreferOpenTheme:Z

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->setPluginQSColoringCallback()V

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateAllQSColoringFunctions()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;)V
    .locals 0

    check-cast p1, Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-virtual {p0, p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;)V
    .locals 2

    const-string/jumbo v0, "QSColoringServiceManager"

    const-string/jumbo v1, "onPluginDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mPluginQSColoring:Lcom/samsung/systemui/splugins/coloring/PluginQSColoring;

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->initResources()V

    invoke-direct {p0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->updateAllQSColoringFunctions()V

    return-void
.end method

.method public setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setScrimController(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coloring/QSColoringServiceManager;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    return-void
.end method
