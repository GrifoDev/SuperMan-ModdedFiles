.class public final Lcom/android/launcher2/MenuAppsGridFragment;
.super Landroid/app/Fragment;
.source "MenuAppsGridFragment.java"

# interfaces
.implements Lcom/android/launcher2/MenuView$AppModelNotifications;
.implements Lcom/android/launcher2/Launcher$HardwareKeys;
.implements Lcom/android/launcher2/MenuView$NeedsTabHost;
.implements Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
.implements Lcom/android/launcher2/PagedView$PageSwitchListener;


# static fields
.field private static final APP_GRID_SAVED_STATE:Ljava/lang/String; = "MENU_APP_GRID_SAVED_STATE"

.field private static final DELAY_TIME_TO_HIDE_DISAPPEARING_FOLDER:I = 0x1f4

.field public static final DONT_CHG_STATE_ON_PREDRAW:Ljava/lang/String; = "DONT_CHG_STATE_ON_PREDRAW"

.field private static final FOLDER_STATE_BUNDLE:Ljava/lang/String; = "folderStateBundle"

.field private static final TAG:Ljava/lang/String; = "MenuAppsGridFragment"


# instance fields
.field private mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

.field private mFolderBundle:Landroid/os/Bundle;

.field private mIsPaused:Z

.field private mIsStoped:Z

.field public mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mPendingModelUpdate:Z

.field private mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

.field private mState:Lcom/android/launcher2/MenuAppsGrid$State;

.field private mTabHost:Lcom/android/launcher2/MenuView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsStoped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/MenuAppsGridFragment;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/MenuAppsGridFragment;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/MenuAppsGridFragment;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method private cancelAppFolderRemoveDialog()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    return-void
.end method

.method private closeDialog()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/launcher2/AppFolderRemoveDialog;->dismiss(Landroid/app/FragmentTransaction;Landroid/app/FragmentManager;)V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "editCancelDialog"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "AddAppsWidgetToastPopUp"

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Landroid/app/DialogFragment;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/DialogFragment;->dismiss()V

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v1, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    return-void
.end method


# virtual methods
.method public appBadgeUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->appBadgeUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public appModelLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->appModelUpdated()V

    :cond_0
    return-void
.end method

.method public appModelUpdated()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsStoped:Z

    if-eqz v0, :cond_0

    const-string v0, "MenuAppsGridFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appModelUpdated onStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_0
.end method

.method public appModelUpdated(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MenuAppsGridFragment"

    const-string v1, "appModelUpdated: isHomeOnlyModeEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsStoped:Z

    if-eqz v0, :cond_1

    const-string v0, "MenuAppsGridFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appModelUpdated onStop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V

    return-void
.end method

.method public changeState(Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 4

    const-string v1, "MenuAppsGridFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState: (new)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(old)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(force)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuAppsGrid;->handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V

    :cond_2
    return-void
.end method

.method public closeFolders()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_0
    return-void
.end method

.method public getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    return-object v0
.end method

.method public getTabHost()Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/Folder;->isSearchAppListShown()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/Folder;->hideSearchAppList(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getIsFolderOpenWithEdit()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v4, v4}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_4
    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    sput-boolean v4, Lcom/android/launcher2/MenuAppsGrid;->mIsFinishCancelAtoZ:Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/MenuAppsGrid;->setAlphabeticalAppsList(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_2
    sget-boolean v2, Lcom/android/launcher2/HomeView;->sIsDragState:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, -0x1

    const-string v2, "MenuAppsGridFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateView. savedInstanceState: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p3, :cond_4

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    const v2, 0x7f10008b

    invoke-virtual {v1, v2}, Lcom/android/launcher2/mainmenu/PinchLayerView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid;->setPageSwitchListener(Lcom/android/launcher2/PagedView$PageSwitchListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, p0}, Lcom/android/launcher2/MenuAppsGrid;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    invoke-static {p0}, Lcom/android/launcher2/FolderIconView;->setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz p3, :cond_1

    const-string v1, "MENU_APP_GRID_SAVED_STATE"

    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v4, v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/MenuAppsGrid$State;->values()[Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->restore(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "folderStateBundle"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppsGridFragment;->onShowTab(Lcom/android/launcher2/MenuView;)V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->cancelAppFolderRemoveDialog()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    return-object v1

    :cond_4
    const-string v1, "not null"

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    iput-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    goto :goto_1
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "MenuAppsGridFragment"

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->onHideTab(Lcom/android/launcher2/MenuView;)V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPinchLayer:Lcom/android/launcher2/mainmenu/PinchLayerView;

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    return-void
.end method

.method public onExitAllApps()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onExitAllApps()V

    :cond_0
    return-void
.end method

.method public onHideTab(Lcom/android/launcher2/MenuView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mFolderBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->saveOpenFolderState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getComingPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setCurrentPage(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->leaveCurrentState()V

    :cond_0
    return-void
.end method

.method public onHomePressed(Z)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getFolderManager()Lcom/android/launcher2/Folder$FolderManager;

    move-result-object v7

    instance-of v7, v7, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getFolder()Lcom/android/launcher2/Folder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Folder;->getFolderManager()Lcom/android/launcher2/Folder$FolderManager;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid$MenuAppsGridFolderMgr;->setCloseFolderWithAppsExit()V

    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7, v9, v8}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_2

    move v7, v8

    :goto_0
    return v7

    :cond_2
    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v10, 0x800

    invoke-virtual {v7, v10}, Landroid/view/Window;->addFlags(I)V

    const-string v7, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v3, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuAppsGridFragment$2;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v10

    aget v7, v7, v10

    packed-switch v7, :pswitch_data_0

    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7, v2}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutMenu;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutMenu;->showDragItem()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->isDragInProgress()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v9

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->closeDialog()V

    goto :goto_1

    :cond_5
    move v7, v8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionSelectedAtoZ(Lcom/android/launcher2/MenuView;)V
    .locals 2

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAtoZUndo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setAlphabeticalAppsList(Z)V

    :cond_0
    return-void
.end method

.method public onOptionSelectedEdit(Lcom/android/launcher2/MenuView;)V
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppsGridFragment;->changeState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    return-void
.end method

.method public onPageSwitch(Landroid/view/View;IZ)V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>SCREEN_LOADED_APP_MENU_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GATE"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-eq v1, v2, :cond_1

    const-string v1, "MenuAppsGridFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPageSwitch - newPageIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v4, v4}, Lcom/android/launcher2/MenuAppsGrid;->closeFolder(ZZ)Z

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->onPause()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onPinch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const-string v2, "MenuAppsGridFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsPaused:Z

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    const-string v2, "MenuAppsGridFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stateObj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onResume()V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->onResume()V

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    if-eqz v2, :cond_2

    const-string v2, "MenuAppsGridFragment"

    const-string v3, "onResume mPendingModelUpdate is true, so we need to load apps"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->appModelUpdated()V

    iput-boolean v5, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "MenuAppsGridFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume  no mPendingModelUpdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->isDragInProgress()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " this:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v1, v2, :cond_0

    const-string v1, "MENU_APP_GRID_SAVED_STATE"

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mState:Lcom/android/launcher2/MenuAppsGrid$State;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid$State;->getObj(Lcom/android/launcher2/MenuAppsGrid;)Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->save(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "folderStateBundle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onShowTab(Lcom/android/launcher2/MenuView;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->isCurrentTabAppGrid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->isOptionMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsGridFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->closePopupMenu()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/launcher2/MenuAppsGridFragment$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsGridFragment$1;-><init>(Lcom/android/launcher2/MenuAppsGridFragment;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    const-string v0, "MenuAppsGridFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsStoped:Z

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    const-string v1, "MenuAppsGridFragment"

    const-string v2, "onStop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mIsStoped:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->onStop()V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getStateObj()Lcom/android/launcher2/MenuAppsGrid$StateObj;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid$StateObj;->onStop()V

    :cond_0
    return-void
.end method

.method public setPendingModelUpdate(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mPendingModelUpdate:Z

    return-void
.end method

.method public setTabHost(Lcom/android/launcher2/MenuView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsGridFragment;->mAppsGrid:Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/MenuAppsGrid;->setTabHost(Lcom/android/launcher2/MenuView;)V

    :cond_0
    return-void
.end method
