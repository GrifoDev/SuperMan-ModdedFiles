.class public final Lcom/android/launcher2/MenuWidgetsFragment;
.super Landroid/app/Fragment;
.source "MenuWidgetsFragment.java"

# interfaces
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$PackageNotifications;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;


# static fields
.field private static final INVALID_SOFTINPUT_PARAMS:I = -0x1

.field private static final TAG:Ljava/lang/String; = "MenuWidgetsFragment"

.field private static final WIDGET_HAS_UNINSTALLABLE:Ljava/lang/String; = "WIDGET_HAS_UNINSTALLABLE"

.field private static final WIDGET_SAVED_STATE:Ljava/lang/String; = "WIDGET_SAVED_STATE"

.field private static final WIDGET_STATE_BUNDLE:Ljava/lang/String; = "WIDGET_STATE_BUNDLE"

.field private static cpuBooster:Lcom/samsung/android/os/SemDvfsManager;


# instance fields
.field private mBackupSoftInputParams:I

.field private mHomeKeyPressed:Z

.field private mIsPaused:Z

.field private mNotiTextView:Landroid/widget/TextView;

.field private mPendingPackageUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

.field private mWidgetStateBundle:Landroid/os/Bundle;

.field private mWidgets:Lcom/android/launcher2/MenuWidgets;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/MenuWidgetsFragment;->cpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mHomeKeyPressed:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mBackupSoftInputParams:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/MenuWidgetsFragment;Lcom/android/launcher2/MenuWidgets$WidgetState;)Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuWidgetsFragment;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/MenuWidgetsFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method private setupSearchNotiView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v1, 0x7f1000c5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgetsFragment$2;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment$2;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private updatePinchListener()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/mainmenu/PinchLayerView;->setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V

    goto :goto_0
.end method


# virtual methods
.method public applyInvertColor(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_1

    const v5, 0x7f0b0061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d002d

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    return-void

    :cond_1
    const v5, 0x7f0b0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d0001

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method public changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportRotate()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v1, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    sget v1, Lcom/android/launcher2/Launcher;->sActivityOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setPageZoom(F)V

    :cond_1
    :goto_0
    if-eq p1, v0, :cond_2

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setSearchString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuWidgets;->handleWidgetStateChange(Lcom/android/launcher2/MenuWidgets$WidgetState;Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_2
    return-void

    :cond_3
    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->setPageZoom(F)V

    goto :goto_0
.end method

.method public closeFolders()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_0
    return-void
.end method

.method public getMenuWidgets()Lcom/android/launcher2/MenuWidgets;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method public getTabHost()Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v1

    sget-object v3, Lcom/android/launcher2/MenuWidgetsFragment$3;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    iget-object v4, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :goto_1
    move v0, v2

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    goto :goto_1

    :pswitch_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuWidgets;->hasSearchString()Z

    move-result v0

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const v2, 0x7f030036

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v3, 0x7f1000c4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuWidgets;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->setupSearchNotiView()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherApplication;->acquireTouchBooster(I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, p0}, Lcom/android/launcher2/MenuWidgets;->setMenuWidgetsFragment(Lcom/android/launcher2/MenuWidgetsFragment;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v3, "onCreateView"

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets;->updatePackages(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_5

    const-string v2, "WIDGET_SAVED_STATE"

    invoke-virtual {p3, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v4, v1, :cond_4

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    :goto_0
    const-string v2, "WIDGET_STATE_BUNDLE"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->restore(Landroid/os/Bundle;)V

    :cond_1
    const-string v2, "WIDGET_HAS_UNINSTALLABLE"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/MenuWidgets;->setHasUninstallableWidgets(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->updatePinchListener()V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuWidgetsFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v2

    :cond_4
    invoke-static {}, Lcom/android/launcher2/MenuWidgets$WidgetState;->values()[Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const-string v1, "onDestroyView"

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->cleanupCache(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    return-void
.end method

.method public onExitAllApps()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_4

    const-string v0, "MenuWidgetsFragment"

    const-string v1, "exit widget menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher2/MenuWidgets;->adjPageMemory(IZ)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->NORMAL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MenuWidgetsFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resotre softinputparam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mBackupSoftInputParams:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/android/launcher2/MenuWidgetsFragment;->setSoftInputParam(Z)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->removeFocusChangeListener()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->clearAccessibilityFocus()V

    :cond_4
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 0

    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/AddAppsWidgetToastPopUp;->dismiss(Landroid/app/FragmentManager;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mHomeKeyPressed:Z

    return v1
.end method

.method public onOptionSelectedSearch(Lcom/android/launcher2/MenuView;)V
    .locals 7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "WGSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    return-void
.end method

.method public onOptionSelectedUninstall(Lcom/android/launcher2/MenuView;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuWidgetsFragment;->changeWidgetState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->SEARCH:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->setExtraClear()V

    :cond_1
    return-void
.end method

.method public onPinch()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6, v8}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mHomeKeyPressed:Z

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x800

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eq v6, v7, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->getWidgetSearchBar()Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v1, v3

    check-cast v1, Landroid/widget/SearchView;

    :try_start_0
    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mVoiceButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setColorFilter(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v4, 0x1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher2/MenuWidgetsFragment;->setSoftInputParam(Z)V

    :cond_4
    iget-boolean v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mHomeKeyPressed:Z

    if-eqz v6, :cond_5

    iput-boolean v8, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mHomeKeyPressed:Z

    :cond_5
    iget-boolean v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v6, :cond_6

    iput-boolean v8, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    iget-object v6, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/MenuWidgets;->packagesChanged(Ljava/lang/String;)V

    :cond_6
    return-void

    :catch_0
    move-exception v0

    const-string v6, "SearchView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v6, "SearchView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-eqz v0, :cond_0

    const-string v0, "WIDGET_SAVED_STATE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    const-string v0, "WIDGET_HAS_UNINSTALLABLE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->getObj(Lcom/android/launcher2/MenuWidgets;)Lcom/android/launcher2/MenuWidgets$WidgetStateObj;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets$WidgetStateObj;->save(Landroid/os/Bundle;)V

    const-string v0, "WIDGET_STATE_BUNDLE"

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuWidgetsFragment$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/MenuWidgetsFragment$1;-><init>(Lcom/android/launcher2/MenuWidgetsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetFolder()Lcom/android/launcher2/WidgetFolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuWidgets;->closeFolder(Z)Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->onStop()V

    return-void
.end method

.method public packagesChanged(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mIsPaused:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mPendingPackageUpdate:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->packagesChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshWidgetStateModel()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateModel(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_0
    return-void
.end method

.method public refreshWidgetStateView()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgetState:Lcom/android/launcher2/MenuWidgets$WidgetState;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuWidgets;->refreshWidgetStateView(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_0
    return-void
.end method

.method public saveSoftInputParam()V
    .locals 2

    iget v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mBackupSoftInputParams:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mBackupSoftInputParams:I

    :cond_0
    return-void
.end method

.method public setSoftInputParam(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->saveSoftInputParam()V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mBackupSoftInputParams:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuWidgets;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method

.method public setVisibilityOfSearchNoti(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher2/MenuWidgetsFragment;->saveSoftInputParam()V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    or-int/lit8 v2, v0, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    and-int/lit8 v2, v0, -0x21

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuWidgetsFragment;->mNotiTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
