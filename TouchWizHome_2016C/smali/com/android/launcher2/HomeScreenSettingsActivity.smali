.class public Lcom/android/launcher2/HomeScreenSettingsActivity;
.super Landroid/app/Activity;
.source "HomeScreenSettingsActivity.java"


# static fields
.field public static final BADGE_MANAGER_FRAGMENT:I = 0x2

.field public static final HOME_SETTINGS_FRAGMENT:I = 0x0

.field public static final HOME_SETTINGS_MODE_FRAGMENT:I = 0x1

.field public static TAG:Ljava/lang/String; = null

.field private static final VISIBLE_FRAGMENT:Ljava/lang/String; = "visible_fragment"

.field private static gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;


# instance fields
.field private mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

.field private mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

.field private mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

.field private mVisibleFragment:I

.field mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

.field private mlocale:Ljava/util/Locale;

.field private vDeleteDropLayout:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenSettingsActivity"

    sput-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mlocale:Ljava/util/Locale;

    return-void
.end method

.method public static instance()Lcom/android/launcher2/HomeScreenSettingsActivity;
    .locals 1

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    const/4 v5, 0x0

    sget-object v3, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v4, "onBackPressed()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    if-nez v3, :cond_7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportDefaultHomeOnlyMode()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeScreenOptionMenu;->getScreenGridSelectMenu()Lcom/android/launcher2/HomeScreenGridSelectMenu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->isActive()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->hideScreenGridMenu(Z)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/launcher2/HomeScreenOptionMenu;->setVisibility(I)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-interface {v3}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->getDeleteDropLayout()Lcom/android/launcher2/QuickViewDragBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->vDeleteDropLayout:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->vDeleteDropLayout:Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mWsQVProvider:Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/launcher2/QuickViewWorkspace$WorkspaceQuickViewInfoProvider;->isIncludeItem(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->isLastPage()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->vDeleteDropLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    invoke-virtual {v2}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->vDeleteDropLayout:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    if-eqz v3, :cond_8

    iget v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeScreenModeSettingsFragment;->setCheckedSelectModeButton()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v3}, Lcom/android/launcher2/BadgeSettingsFragment;->startDatabaseLoader()V

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged. locale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mlocale:Ljava/util/Locale;

    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f040048

    invoke-virtual {p0, v2}, Lcom/android/launcher2/HomeScreenSettingsActivity;->setContentView(I)V

    sput-object p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1100fe

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeScreenSettingsFragment;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f1100ff

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f110100

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BadgeSettingsFragment;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    if-eqz p1, :cond_4

    const-string v2, "visible_fragment"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mlocale:Ljava/util/Locale;

    return-void

    :cond_2
    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showHomeScreenModeSettings()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showBadgeManagerSettings()V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v3, "onCreate: showHomeScreenSettings"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->showHomeScreenSettings()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->gInstance:Lcom/android/launcher2/HomeScreenSettingsActivity;

    :cond_0
    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->onBackPressed()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "visible_fragment"

    iget v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    sget-object v0, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showBadgeManagerSettings()V
    .locals 4

    sget-object v2, Lcom/android/launcher2/HomeScreenSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showBadgeManagerSettings: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->updateList()V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v1, 0x7f090030

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenSettingsActivity;->setTitle(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showHomeScreenModeSettings()V
    .locals 2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v1, 0x7f090065

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenSettingsActivity;->setTitle(I)V

    return-void
.end method

.method public showHomeScreenSettings()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mVisibleFragment:I

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeModeSettingsFragment:Lcom/android/launcher2/HomeScreenModeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mBadgeSettingsFragment:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenSettingsActivity;->mHomeSettingsFragment:Lcom/android/launcher2/HomeScreenSettingsFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v1, 0x7f09006a

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenSettingsActivity;->setTitle(I)V

    return-void
.end method
