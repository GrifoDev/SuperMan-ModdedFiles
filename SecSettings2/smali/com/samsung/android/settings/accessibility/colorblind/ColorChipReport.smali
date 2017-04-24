.class public Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ColorChipReport.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$6;,
        Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$7;
    }
.end annotation


# instance fields
.field private isSwitch:Z

.field private mCVDSeverity:F

.field private mCVDType:I

.field private final mColorBlindObserver:Landroid/database/ContentObserver;

.field private mColourAdjustment:Landroid/widget/TextView;

.field private mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

.field private final mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

.field private mGreyscaleDialog:Landroid/app/AlertDialog;

.field private final mGreyscaleObserver:Landroid/database/ContentObserver;

.field private final mNegColorObserver:Landroid/database/ContentObserver;

.field private mNegativeColorDialog:Landroid/app/AlertDialog;

.field private mResultText:Landroid/widget/TextView;

.field private mRetestDialog:Landroid/app/AlertDialog;

.field private mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTestCheck:I

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUserParameter:F

.field private rel:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$1;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$2;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$4;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method private CheckSwitch()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "color_blind"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "ColorChipReport"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CheckSwitch state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private CheckTestRecord()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-ne v0, v1, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "color_blind"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v5, 0x3f19999a    # 0.6f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v2, v1

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v0, v2, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_1
.end method

.method private CreateGreyscaleAndNegativeColorDialog()V
    .locals 7

    const v6, 0x7f0b029b

    const v5, 0x7f0b01f5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b021e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$14;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b150a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$15;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$16;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private CreateGreyscaleDialog()V
    .locals 6

    const v5, 0x7f0b01f5

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b01e9

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0x7f0b01ea

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$11;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$11;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b150a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$12;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$13;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$13;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private CreateNegativeColorDialog()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b021c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b021d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$8;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const v2, 0x7f0b150a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$9;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$10;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private InitControls()V
    .locals 6

    const/16 v5, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "color_blind_test"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a4

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    const v3, 0x7f1101a1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0218

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "color_blind"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void

    :cond_0
    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0219

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v3, 0x7f0b0e47

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private RetestOperate()V
    .locals 4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind_test"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "toStartActivity"

    const-string/jumbo v2, "fromSwitchOn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.colorblind"

    const-string/jumbo v3, "com.samsung.android.app.colorblind.ColorChipStart"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private SetSwitchOnOff(Z)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleAndNegativeColorDialog()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateNegativeColorDialog()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CreateGreyscaleDialog()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckTestRecord()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    iput-boolean v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "color_blind"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v4, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_contrast"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "greyscale_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    iget v6, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v7, 0x3f19999a    # 0.6f

    cmpg-float v6, v6, v7

    if-gez v6, :cond_7

    :goto_3
    iget v3, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v4, v5, v2, v3}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    goto :goto_2

    :cond_7
    move v2, v3

    goto :goto_3
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->onInstallSwitchBarToggleSwitch()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    return-void
.end method

.method private removeSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public static setColorBlind(Landroid/content/Context;ZZF)V
    .locals 3

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p0, p2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->setColorWeaknessMode(Landroid/content/Context;Z)V

    const-string/jumbo v1, "accessibility"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "color_blind_user_parameter"

    invoke-static {v1, v2, p3}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ReadjustLayout()V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->UpdatePrefCVDSettingValue()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind_test"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mTestCheck:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0218

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0219

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mResultText:Landroid/widget/TextView;

    const v1, 0x7f0b0e47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustment:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColourAdjustmentSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public checkColorBlindState()V
    .locals 5

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->ReadjustLayout()V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isSwitch:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    const v4, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    move v1, v2

    :goto_0
    iget v4, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-static {v3, v2, v1, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setColorBlind(Landroid/content/Context;ZZF)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public isOptionsMenuEnable()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "color_blind"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->installSwitchBarToggleSwitch()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onCheckedChanged() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x1

    const v1, 0x7f0b01d8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    const v0, 0x7f040060

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    new-instance v0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getCVDseverity()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;->getUserParameter()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate : mCVDType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCVDSeverity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mCVDSeverity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->InitControls()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->rel:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSettingValue:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipSettingValue;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mRetestDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    :cond_4
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->removeSwitchBarToggleSwitch()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDetach()V

    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$5;-><init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->CheckSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->RetestOperate()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "ColorChipReport"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Click actionbar home icon : mUserParameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mUserParameter:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ColorChipReport"

    const-string/jumbo v1, "onResume() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->isOptionsMenuEnable()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mColorBlindObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->removeDialogsOnResumeActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    return-void
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public removeDialogsOnResumeActivity()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_9

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_6
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleAndNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_8
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mNegativeColorDialog:Landroid/app/AlertDialog;

    goto :goto_2

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->SetSwitchOnOff(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    :cond_a
    iput-object v5, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->mGreyscaleDialog:Landroid/app/AlertDialog;

    goto :goto_2
.end method
