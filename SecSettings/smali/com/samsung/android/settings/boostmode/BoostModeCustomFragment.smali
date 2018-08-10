.class public Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BoostModeCustomFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;
    }
.end annotation


# instance fields
.field private final KEY_NEW_UHQ_UPSCALER:Ljava/lang/String;

.field private delta:I

.field private mAD:Landroid/app/AlertDialog;

.field private mApplyEventId:I

.field private mBoostMode:I

.field private mBrightnessEventId:I

.field private mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mCancelEventId:I

.field private mContext:Landroid/content/Context;

.field private mFromWhere:Ljava/lang/String;

.field private mGameLauncherEventId:I

.field private mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mGameToolsEventId:I

.field private mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mPreviousBoostMode:I

.field private mPreviousBrightnessStatus:I

.field private mPreviousGameLauncherStatus:I

.field private mPreviousGameToolsStatus:I

.field private mPreviousResolutionStatus:I

.field private mPreviousUHQupscalerStatus:I

.field private mPreviousVideoEnhancerStatus:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetButton:Landroid/widget/TextView;

.field private mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mResetEventId:I

.field private mResetTitle:Landroid/widget/TextView;

.field private mResolutionEventId:I

.field private mSaveButton:Landroid/widget/Button;

.field private mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenId:I

.field private mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

.field private mUHQUpscalerEventId:I

.field private mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mVideoEnhancerEventId:I

.field private mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private setGLbyUs:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mAD:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mApplyEventId:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsEventId:I

    return v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetEventId:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResolutionEventId:I

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenId:I

    return v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/android/settings/widget/SecIntervalSeekbarPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQUpscalerEventId:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    return v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerEventId:I

    return v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setGLbyUs:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessEventId:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelEventId:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mFromWhere:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherEventId:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;)Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setGLbyUs:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->cancelCustomMode()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->enableResetButton(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onBrightnessSetText(I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onScreenResolutionSetText(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->resetEditValue()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setUhqUpscalerSummary(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const-string/jumbo v0, "pbm_uhq_upscaler_new"

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->KEY_NEW_UHQ_UPSCALER:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$1;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    iput-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setGLbyUs:Z

    const/16 v0, 0x5a

    iput v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->delta:I

    return-void
.end method

.method private cancelCustomMode()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x5a

    div-int/lit8 v1, v1, 0x5

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v1, v1, -0x5a

    div-int/lit8 v1, v1, 0x5

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onBrightnessSetText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v4, v4, -0x5a

    div-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousResolutionStatus:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousResolutionStatus:I

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onScreenResolutionSetText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousResolutionStatus:I

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousVideoEnhancerStatus:I

    if-eq v0, v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousVideoEnhancerStatus:I

    if-ne v1, v2, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_uhq_upscaler"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    if-eqz v1, :cond_9

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :cond_4
    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :goto_4
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameLauncherStatus:I

    if-eq v0, v1, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameLauncherStatus:I

    if-ne v1, v2, :cond_d

    move v1, v2

    :goto_5
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :goto_6
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameToolsStatus:I

    if-eq v0, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameToolsStatus:I

    if-ne v4, v2, :cond_f

    :goto_7
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->resetBoostModeValue(Landroid/content/Context;I)V

    return-void

    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    move v1, v3

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    if-eqz v1, :cond_b

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_3

    :cond_b
    move v1, v3

    goto :goto_8

    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    :cond_d
    move v1, v3

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    :cond_f
    move v2, v3

    goto :goto_7
.end method

.method private combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07060a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v4, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070608

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v1, v2, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

.method private enableResetButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method private initHeaderView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a08d1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerfModeTitle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetTitle:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    const v2, 0x7f0a06fd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/powersaving/PSMUtils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    const v3, 0x7f080785

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    new-instance v3, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$9;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->enableResetButton(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    new-instance v2, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$10;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setHeaderView(Lcom/android/settings/applications/LayoutPreference;)V

    return-void
.end method

.method private initPreference()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    const-string/jumbo v1, "pbm_video_enhancer"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$4;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$4;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_video_enhancer"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousVideoEnhancerStatus:I

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousVideoEnhancerStatus:I

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "pbm_uhq_upscaler_new"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    const-string/jumbo v1, "pbm_uhq_upscaler"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.sec.android.app.soundalive"

    const-string/jumbo v5, "com.sec.android.app.soundalive.UHQPBMSettingsListActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "mode"

    const-string/jumbo v4, "entertainment"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$5;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_uhq_upscaler"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_3
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isExistGameLauncherPackage(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string/jumbo v1, "pbm_game_launcher"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$7;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_game_launcher"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameLauncherStatus:I

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameLauncherStatus:I

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_5
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "pbm_game_tools"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$8;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_game_tools"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameToolsStatus:I

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousGameToolsStatus:I

    if-ne v4, v2, :cond_8

    :goto_6
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_7
    return-void

    :cond_0
    move v1, v3

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "pbm_uhq_upscaler"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v1, "pbm_uhq_upscaler_new"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    new-instance v4, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$6;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v1, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto/16 :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousUHQupscalerStatus:I

    if-eqz v1, :cond_4

    move v1, v2

    :goto_8
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_4
    move v1, v3

    goto :goto_8

    :cond_5
    const-string/jumbo v1, "pbm_video_enhancer"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "pbm_uhq_upscaler"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "pbm_uhq_upscaler_new"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    const-string/jumbo v1, "pbm_game_launcher"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_8
    move v2, v3

    goto :goto_6

    :cond_9
    const-string/jumbo v1, "pbm_game_tools"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    const-string/jumbo v1, "pbm_game_launcher"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "pbm_game_tools"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->removePreference(Ljava/lang/String;)V

    goto :goto_7
.end method

.method private onBrightnessSetText(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v3, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    mul-int/lit8 v1, p1, 0x5

    add-int/lit8 v1, v1, 0x5a

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->delta:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const-string/jumbo v1, " "

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onScreenResolutionSetText(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private resetEditValue()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onBrightnessSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_maximum_brightness"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const/16 v3, 0x64

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v0, v4, :cond_7

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onScreenResolutionSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_screen_resolution"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_video_enhancer"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_uhq_upscaler"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setUhqUpscalerLatestLevel(I)V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setUhqUpscalerSummary(I)V

    :cond_4
    iget v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v0, v4, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_game_launcher"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_game_tools"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v4}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    :cond_6
    return-void

    :cond_7
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->onScreenResolutionSetText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pbm_screen_resolution"

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1, v2, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setBoostModeValue(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_1
.end method

.method private setUhqUpscalerLatestLevel(I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, "content://com.sec.android.app.soundalive.compatibility.SAContentProvider"

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "PBM_UHQ_UPSCALER_LEVEL"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    return-void
.end method

.method private setUhqUpscalerSummary(I)V
    .locals 6

    const v5, 0x7f121c34

    const v4, 0x7f120510

    const v3, 0x7f12050f

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v0

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x34

    return v0
.end method

.method public initSeekbar()V
    .locals 14

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getPerformanceBoosterMode(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBoostMode:I

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "pbm_maximum_brightness"

    iget v11, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    const-string/jumbo v9, "pbm_maximum_brightness"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    iget v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    const/16 v10, 0x64

    if-ge v9, v10, :cond_0

    iget v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    const/16 v10, 0x5a

    if-gt v9, v10, :cond_3

    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const v10, 0x7f121c72

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v10, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->delta:I

    rsub-int/lit8 v10, v10, 0x64

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v10, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->delta:I

    rsub-int/lit8 v10, v10, 0x64

    invoke-static {v10}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v10, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBrightnessStatus:I

    add-int/lit8 v10, v10, -0x5a

    div-int/lit8 v10, v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    new-instance v10, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$2;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$2;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v9, "pbm_screen_resolution"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportMultiResolution()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "pbm_screen_resolution"

    iget v11, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v9, v10, v11}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousResolutionStatus:I

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setMax(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f121750

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f12174e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f121754

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getDisplayPxSize()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_5

    const-string/jumbo v9, "BoostModeCustomFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Current display px size x:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", y:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v5, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    div-float v6, v9, v10

    const v9, 0x3fe38e39

    cmpl-float v9, v6, v9

    if-lez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-static {v9}, Landroid/icu/text/NumberFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/NumberFormat;

    move-result-object v2

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/icu/text/NumberFormat;->setGroupingUsed(Z)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/powersaving/PSMUtils;->isHebrewLanguage()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->combineResolutionTopText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v11, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setTopText(ILandroid/text/SpannableString;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setBottomText(ILjava/lang/String;)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const v10, 0x7f121566

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setSummary(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    iget v10, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousResolutionStatus:I

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setProgress(I)V

    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    new-instance v10, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$3;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSecBrightness:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/widget/SecIntervalSeekbarPreference;->supportMediumText(ZZ)V

    goto/16 :goto_0

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-double v10, v10

    const-wide/high16 v12, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v10, v12

    double-to-int v10, v10

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v5, Landroid/graphics/Point;->y:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/graphics/Point;->x:I

    int-to-long v10, v10

    invoke-virtual {v2, v10, v11}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_5
    const v9, 0x7f121751

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v9, 0x7f12174f

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v9, 0x7f121755

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenSeekBar:Lcom/android/settings/widget/SecIntervalSeekbarPreference;

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto/16 :goto_2
.end method

.method initswitchBtn()V
    .locals 10

    const/4 v9, 0x0

    const v8, 0x7f080782

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d00a7

    invoke-virtual {v5, v6, v9, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v5, 0x10

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSetOpenTheme(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f0a01e3

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f080130

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    const v5, 0x7f0a0520

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$11;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$11;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0521

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/Button;)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    const v6, 0x7f1205f5

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    new-instance v6, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$12;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment$12;-><init>(Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_1
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v0, "BoostModeCustomFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult for GAME MODE requestCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getCurrentPowerSavingMode(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mAD:Landroid/app/AlertDialog;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    iget-boolean v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setGLbyUs:Z

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mFromWhere:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->showTurnOffPSM(Landroid/content/Context;Landroid/app/AlertDialog;IZLjava/lang/String;Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    iput-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mFromWhere:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->startAnimationActivity(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostUtils;->setPerformanceBoosterMode(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const v1, 0x7f080782

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isButtonBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    const v1, 0x7f080785

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mSaveButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetButtonBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setHasOptionsMenu(Z)V

    const v1, 0x7f150035

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "boost_mode"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const-string/jumbo v1, "fromWhere"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mFromWhere:Ljava/lang/String;

    const-string/jumbo v1, "BoostModeCustomFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "current mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResolutionEventId:I

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mVideoEnhancerEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQUpscalerEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameLauncherEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mGameToolsEventId:I

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initHeaderView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initSeekbar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initPreference()V

    new-instance v1, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mPreviousBoostMode:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResolutionEventId:I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mApplyEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mCancelEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResetEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessEventId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b03dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mResolutionEventId:I

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->initswitchBtn()V

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BoostModeCustomFragment"

    const-string/jumbo v1, "PBM onPause - brightness rollback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "BoostModeCustomFragment"

    const-string/jumbo v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBrightnessManager:Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;

    iget-object v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "pbm_maximum_brightness"

    iget v6, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v4, v5, v6}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;->setScreenBrightnessForPreview(I)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    new-array v4, v1, [Ljava/lang/Object;

    const v5, 0x7f120ccd

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f12013b

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->cancelCustomMode()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->finish()V

    :goto_0
    iget v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "pbm_uhq_upscaler"

    iget v5, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v3, v4, v5}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isSupportNewUhqUpscaler()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerNewPref:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mBoostMode:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->isCustomModeChangedValue(Landroid/content/Context;I)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->enableResetButton(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->setUhqUpscalerSummary(I)V

    :cond_1
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mScreenId:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mUHQscalerPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_5

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.BOOST_MODE_START"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.android.sm.POWER_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/boostmode/BoostModeCustomFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
