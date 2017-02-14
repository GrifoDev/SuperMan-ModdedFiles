.class public Lcom/samsung/android/settings/easymode/EasyModeApp;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/easymode/EasyModeApp$1;,
        Lcom/samsung/android/settings/easymode/EasyModeApp$2;,
        Lcom/samsung/android/settings/easymode/EasyModeApp$3;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAm:Landroid/app/ActivityManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mEasyModeClickListener:Landroid/view/View$OnClickListener;

.field private mEasyModeLayout:Landroid/widget/LinearLayout;

.field private mEasyModeRadio:Landroid/widget/RadioButton;

.field private mEasyTextView:Landroid/widget/TextView;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

.field private mHasEasyLauncher:Z

.field private mHeaderView:Landroid/view/View;

.field private mHelpTextView:Landroid/widget/TextView;

.field private mIsCustomActionbarCreated:Z

.field private mIsEnabledShowBtnBg:Z

.field private mIsSharedDevice:Z

.field private mList:Landroid/widget/ListView;

.field private mModeRadioGroup:Landroid/widget/LinearLayout;

.field private mModeState:I

.field private mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPreviewImage:Landroid/graphics/drawable/Drawable;

.field private mPreviewImageView:Landroid/widget/ImageView;

.field private mSaveButton:Landroid/widget/Button;

.field private mStandardModeClickListener:Landroid/view/View$OnClickListener;

.field private mStandardModeLayout:Landroid/widget/LinearLayout;

.field private mStandardModeRadio:Landroid/widget/RadioButton;

.field private mStdTextView:Landroid/widget/TextView;

.field private mTempState:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get3()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/easymode/EasyModeApp;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/easymode/EasyModeApp;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isEasyLauncher()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->disableEasyMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->enableEasyMode()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->goToPersonal()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->showPinWindowToast()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$1;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$2;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/easymode/EasyModeApp$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$3;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private applyDisplayDensity(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1, v3, v3}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->getCurrentResolution(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setSelectedScreenResolution(Landroid/content/Context;IZI)V

    goto :goto_0
.end method

.method private disableEasyMode()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setStandardFont()V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private enableEasyMode()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "EasyModeApp"

    const-string/jumbo v1, "can\'t enable easy mode due to mobile keyboard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyLauncher(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setEasyMode(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v0}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setEasyFont()V

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->applyDisplayDensity(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->startLauncher()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private getHomeComponentSet()[Landroid/content/ComponentName;
    .locals 10

    const/4 v7, 0x2

    const/4 v9, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v3, v6, [Landroid/content/ComponentName;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v6, v7, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v3, v7, [Landroid/content/ComponentName;

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.easylauncher"

    const-string/jumbo v8, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    aput-object v6, v3, v7

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    const-string/jumbo v8, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v9

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    const-string/jumbo v7, "com.sec.android.app.launcher"

    const-string/jumbo v8, "com.android.launcher2.Launcher"

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v9

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v3, v4

    const-string/jumbo v6, "EasyModeApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "make homeComponentSet ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getNewHomeComponent(Z)Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    const-string/jumbo v2, "com.sec.android.app.launcher.activities.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.launcher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sec.android.app.easylauncher"

    const-string/jumbo v2, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v2, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.nttdocomo.android.dhome"

    const-string/jumbo v2, "com.nttdocomo.android.dhome.HomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isZeroLauncher(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    const-string/jumbo v2, "com.android.launcher2.Launcher"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private goToPersonal()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->isKnoxMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->launchPersonaHome(I)Z

    const-string/jumbo v1, "EasyModeApp"

    const-string/jumbo v2, "Current mode is knox. Go out to personal to change launcher"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private initSwitchBtn()V
    .locals 4

    new-instance v2, Landroid/widget/Switch;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const v3, 0x7f040097

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f11021c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v2, 0x7f0200d8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    const v2, 0x7f11021d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    const v2, 0x7f11021e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initSwitchBtn()V

    const/4 v0, 0x0

    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x7f0400e1

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->rebuildLayout(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    return-void

    :cond_0
    const v1, 0x7f0400e0

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method private isEasyLauncher()Z
    .locals 5

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    const-string/jumbo v4, "com.sec.android.app.easylauncher.Launcher"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private isKnoxMode()Z
    .locals 6

    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v4, "com.android.internal.app"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    return v5
.end method

.method private isMobileKeyboardCovered()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v6, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b05dd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0b0593

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v6

    :cond_0
    return v7
.end method

.method private requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V
    .locals 6

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChangeEasyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChangeEasyMode)containerView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", radioBtn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mIsCustomActionbarCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v5, "No"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestChangeEasyMode)radioBtn.isChecked()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v5, "No"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "EasyMode"

    const-string/jumbo v3, "Mode"

    const-string/jumbo v4, "Valid"

    const-string/jumbo v5, "Yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    return-void
.end method

.method private setEasyLauncher(Z)V
    .locals 6

    const-string/jumbo v3, "EasyModeApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setEasyLauncher isEasyLauncherEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.HOME"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getHomeComponentSet()[Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getNewHomeComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x100000

    invoke-virtual {v3, v1, v4, v0, v2}, Landroid/content/pm/PackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    return-void
.end method

.method private setEasyMode(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "easy_mode_switch"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v4, "easymode"

    const-string/jumbo v5, "enable easy mode"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "easymode"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "easymode"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "easymode_from"

    const-string/jumbo v4, "settings"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v4, "easymode"

    const-string/jumbo v5, "return standard mode not easy mode"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private showPinWindowToast()V
    .locals 8

    const-string/jumbo v4, "accessibility"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "tw_lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast_accessible"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "lock_to_app_toast"

    const-string/jumbo v6, "string"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    return-void
.end method

.method private startLauncher()V
    .locals 3

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 3

    sget-object v1, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "EasyModeApply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "StandardModeApply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->requestChangeEasyMode(Landroid/view/View;Landroid/widget/RadioButton;)V

    goto :goto_0
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 0

    return-void
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    const/16 v5, 0xff

    const/16 v4, 0x80

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f11033e

    if-ne v0, v1, :cond_2

    iput v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    iput v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    :cond_1
    const-string/jumbo v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged mModeState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iput v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    iput v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mTempState:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string/jumbo v2, "EasyModeApp"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPm:Landroid/content/pm/PackageManager;

    new-instance v2, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v3, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    new-instance v2, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v2, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.sec.android.app.easylauncher"

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "has easy launcher:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHasEasyLauncher:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    const v2, 0x7f08006c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->addPreferencesFromResource(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->setHasOptionsMenu(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    invoke-virtual {v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->initFontSettings()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mAm:Landroid/app/ActivityManager;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const v5, 0x7f02050a

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/easymode/EasyModeApp$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$4;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    const v3, 0x7f0b0419

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    new-instance v3, Lcom/samsung/android/settings/easymode/EasyModeApp$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/easymode/EasyModeApp$5;-><init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsEnabledShowBtnBg:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SharedDevice: disableButton "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsCustomActionbarCreated:Z

    :cond_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mCurConfig:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/easymode/EasyModeApp;->initView(Landroid/view/LayoutInflater;Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_mode_switch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "EasyModeApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettingsState mEasyModeState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_0

    iput v5, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-object v1

    :cond_0
    iput v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeState:I

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v2, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "EasyMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "EasyMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public rebuildLayout(Landroid/view/View;)V
    .locals 4

    const v1, 0x7f110343

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHeaderView:Landroid/view/View;

    const v0, 0x7f1102d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mModeRadioGroup:Landroid/widget/LinearLayout;

    const v0, 0x7f11033d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f110340

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f11033e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    const v0, 0x7f110341

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    const v0, 0x7f110344

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mHelpTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mPreviewImage:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f11033f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    const v0, 0x7f110342

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mFontSettingsInEasyMode:Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStdTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/easymode/FontSettingsInEasyMode;->setFontSizeIfNeeded(Landroid/widget/TextView;Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mStandardModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeRadio:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEasyModeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const-string/jumbo v0, "EasyModeApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SharedDevice: disableButton "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mIsSharedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x7d0

    const/4 v1, 0x2

    const-string/jumbo v0, "EasyModeApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "StandardModeApply"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/easymode/EasyModeApp;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-void
.end method
