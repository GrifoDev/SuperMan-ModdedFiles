.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final WIFI_OFF:Z

.field private static final isGalaxyView:Z

.field private static mContext:Landroid/content/Context;

.field private static mIsWifiConnected:Z

.field public static final mProductName:Ljava/lang/String;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static useSprintNewSetupWizard:Z


# instance fields
.field FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private helpMenuCheck:Z

.field private isCurrentAPchecked:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isHelpMenuShow:Z

.field private mBottomButtonArea:Landroid/widget/RelativeLayout;

.field private mCountryIso:Ljava/lang/String;

.field private mEffectImageContainer:Landroid/view/ViewGroup;

.field private mEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mHasNavBar:Z

.field private mIsEnableFRP:Z

.field private mIsPopupMenu:Z

.field private mIsReactiveLockEnabled:Z

.field private mIsSupportFRP:Z

.field private mIsTablet:Z

.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field private mPreviousBtnArea:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardCheck:I

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiAdvanced:Landroid/widget/LinearLayout;

.field private mWifiDevice:Landroid/widget/ImageView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private menuButton:Landroid/widget/LinearLayout;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private popup:Landroid/widget/PopupMenu;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/PopupMenu;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;JZ)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->revealWifiEffectInfinite(JZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isGalaxyView:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->transX:F

    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    return-void
.end method

.method private allowToGoNext(ZZI)V
    .locals 7

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v4, v5

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on allowToGoNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private animateWifiEffect(IJ)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private checkWifiAgain()Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkWifiAgain -  CountryISO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    :cond_2
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Exception occured at checkWifiAgain(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception on CountryISO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    return v1
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-lez v3, :cond_0

    aget-object v3, v0, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v10, [Landroid/net/NetworkInfo;

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    :cond_2
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v11, [Landroid/net/NetworkInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v6, :cond_0

    :cond_4
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v4, :cond_a

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    :cond_8
    move v6, v8

    goto :goto_1

    :cond_9
    move v7, v8

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    if-eqz v4, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    goto :goto_3

    :cond_f
    move v7, v8

    goto :goto_4

    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f110803

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private isCaptivePortal()I
    .locals 13

    const/16 v12, 0x257

    const/16 v11, 0xc8

    const/16 v3, 0x257

    const/4 v7, 0x0

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v8, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCaptivePortal: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " headers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-ne v3, v11, :cond_2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-nez v8, :cond_2

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Empty 200 response interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v3, 0xcc

    :cond_2
    const/16 v8, 0x197

    if-ne v3, v8, :cond_4

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    const/16 v3, 0xcc

    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :goto_0
    const/4 v7, 0x0

    :cond_5
    if-ne v3, v12, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->checkWifiAgain()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v8, "http://www.amazon.com"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HttpClient statusCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v8, v11, :cond_b

    const/16 v3, 0xcc

    :cond_6
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_2
    return v3

    :catch_0
    move-exception v2

    :try_start_2
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Probably not a portal: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-ne v3, v12, :cond_9

    :cond_9
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v8

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v7, 0x0

    :cond_a
    throw v8

    :cond_b
    :try_start_3
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fail: Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_7

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Fail: IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isNetworkConnected()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    const-string/jumbo v4, "WifiSecSetupActivity"

    const-string/jumbo v5, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return v6

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    return v6

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3

    return v6

    :cond_3
    return v7
.end method

.method public static isSupportGoogleFRP(Landroid/content/Context;)Z
    .locals 6

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    if-ltz v0, :cond_2

    if-gt v0, v3, :cond_2

    if-ne v0, v3, :cond_0

    const-string/jumbo v3, "com.google"

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v2

    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private revealWifiEffectInfinite(JZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    :cond_1
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x400

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private startAnimation()V
    .locals 9

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x294

    const-wide/16 v4, 0x14a

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animTitleFromRight(Landroid/view/View;JJ)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animCommonFromRight(Landroid/view/View;JJ)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private updateLayoutComponent(Landroid/content/res/Configuration;)V
    .locals 14

    const v9, 0x7f040364

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    const v9, 0x7f1107f7

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a06a0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0a06a1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v9, 0x7f110608

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/SwitchBar;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_0

    new-instance v9, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9, v4, v5}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_0
    const v9, 0x7f1107df

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    const v9, 0x7f110801

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v9, 0x7f1107f8

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    const v9, 0x7f1107f9

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fa

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fb

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fc

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f1107fd

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v9, 0x7f110697

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    const v9, 0x7f110114

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    const v9, 0x7f110804

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v9, 0x7f110805

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const v9, 0x7f110806

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0c85

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v9, 0x7f110807

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f110808

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0437

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0228

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0437

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    const v9, 0x7f110809

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d020a

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    const/high16 v10, -0x1000000

    invoke-direct {v0, v10, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    const v9, 0x7f110608

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    const v9, 0x7f110802

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0c85

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0228

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020509

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020509

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_2
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_12

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v8, 0x1706

    invoke-virtual {v1, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : True !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_14

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_9
    :goto_5
    return-void

    :cond_a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_e

    new-instance v9, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const/4 v11, 0x5

    invoke-direct {v9, p0, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    :goto_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x0

    const v13, 0x7f0b1251

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    const v13, 0x7f0b1254

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const-string/jumbo v9, "KTT"

    sget-object v10, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    const v13, 0x7f0b1256

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const v13, 0x7f0b0c97

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    const v13, 0x7f0b1249

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    if-eqz v9, :cond_d

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.samsung.helphub"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v9, v9, 0xa

    const/4 v10, 0x2

    if-eq v9, v10, :cond_c

    iget v9, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v9, v9, 0xa

    const/4 v10, 0x3

    if-ne v9, v10, :cond_d

    :cond_c
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->helpMenuCheck:Z

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x0

    const v13, 0x7f0b188f

    invoke-interface {v9, v10, v11, v12, v13}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v9, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$8;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_e
    new-instance v9, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    const v11, 0x800005

    invoke-direct {v9, p0, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    goto/16 :goto_6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_7

    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020534

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020532

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_11
    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_12
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : False !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_14
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_19

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-nez v9, :cond_18

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_5

    :cond_18
    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    :cond_19
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    :goto_8
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    :cond_1a
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_8
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->menuButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->performClick()Z

    :cond_0
    return v2

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onAdvancedMenuPressed()V
    .locals 9

    const/4 v4, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v8, ""

    const-class v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, ""

    const/4 v3, 0x0

    const v5, 0x7f0b125a

    move-object v0, p0

    move v7, v4

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0b12a9

    const v2, 0x7f0b12a9

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f110804
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->onResume()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    const/4 v0, 0x0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    :cond_0
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsEnableFRP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useSprintNewSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "is_network_required"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsPopupMenu:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSetupWizardCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v2, v6, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v2, :cond_6

    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : not support FRP !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    :cond_7
    const v1, 0x7f0b0c73

    const v2, 0x7f0b0c73

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const-string/jumbo v2, "KTT"

    sget-object v3, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/4 v3, 0x5

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->popup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_6
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
