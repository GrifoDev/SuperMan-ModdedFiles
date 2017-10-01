.class public Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PersonalPageLockTypeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private fromBackupKey:Z

.field getRequestCodeValue:I

.field private guideView:Landroid/view/View;

.field private mFingerCategory:Landroid/preference/PreferenceCategory;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockTypeCategory:Landroid/preference/Preference;

.field private mLockTypeFinger:Landroid/preference/SwitchPreference;

.field private mLockTypePassword:Landroid/preference/Preference;

.field private mLockTypePattern:Landroid/preference/Preference;

.field private mLockTypePin:Landroid/preference/Preference;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    return-void
.end method

.method private StartChooseLockPassword(I)V
    .locals 10

    const/high16 v9, 0x20000

    const/4 v5, 0x4

    const-string/jumbo v6, "device_policy"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v4

    if-ge v4, v5, :cond_0

    const/4 v4, 0x4

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v3

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-class v8, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "lockscreen.password_type"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_min"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "lockscreen.password_max"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v6, "confirm_credentials"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v6, "from_personal"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne p1, v9, :cond_2

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v6, "personal_mQuality"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-ne p1, v9, :cond_1

    const/4 v5, 0x3

    :cond_1
    invoke-virtual {p0, v1, v5}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private confirmFingerprintPassword(I)Z
    .locals 10

    const v5, 0x7f0b0a15

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x5

    if-le v0, v3, :cond_0

    const/16 v3, 0x9

    if-ge v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_1

    return v8

    :pswitch_0
    const-string/jumbo v3, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1198

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1194

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "button_name"

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b1196

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    :cond_2
    return v8

    :cond_3
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private confirmPassword(III)Z
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/ConfirmLockPassword;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x20000

    if-ne p2, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v2, "personal_mQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "from_personal"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v5

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmPattern(I)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/ConfirmLockPattern;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "from_personal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return v4
.end method

.method private identifyFinger(Landroid/os/Bundle;)I
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$3;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v1, v2, v3, p1}, Lcom/samsung/android/fingerprint/FingerprintManager;->identifyWithDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method private switchChangedFingerprint(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private verifySecuredLock()V
    .locals 7

    const/high16 v6, 0x40000

    const/high16 v5, 0x20000

    const/4 v4, 0x0

    const/16 v3, 0xb

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v5, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v6, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPattern(I)Z

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->fromBackupKey:Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmFingerprintPassword(I)Z

    goto :goto_1

    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    invoke-direct {p0, v0, v5, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v0, v6, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->confirmPassword(III)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public initPref()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "personalpage_inline_help"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v1, "locktype_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    const-string/jumbo v1, "personalpage_locktype_pattern"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    const-string/jumbo v1, "personalpage_locktype_pin"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    const-string/jumbo v1, "personalpage_locktype_password"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    const-string/jumbo v1, "peraonlpage_finger_category"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "personalpage_locktype_fingerprint"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    const v2, 0x7f0b0a0c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/UnclickablePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "firstStart"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mInlineHelp:Lcom/samsung/android/settings/UnclickablePreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeCategory:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x7f0401b6

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    const v4, 0x7f1104f9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0a1a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    invoke-virtual {v3, v4, v6, v5}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", received - resultCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    if-lez p2, :cond_0

    if-lt v0, v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    const/4 v5, 0x6

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :sswitch_1
    if-eqz p2, :cond_2

    if-lt v0, v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "personal_mode_lock_type"

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    const/4 v3, 0x7

    :goto_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_3
    const/4 v2, 0x1

    :cond_2
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :cond_3
    const/16 v3, 0x8

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_lock_type"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :sswitch_2
    const/4 v3, -0x1

    if-ne p2, v3, :cond_5

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    if-eqz p2, :cond_6

    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    const-string/jumbo v4, "CONFIRM_REQUEST_ENTER success"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    const-string/jumbo v4, "Failed to CONFIRM_REQUEST_ENTER"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v3, "PersonalPageLockTypeFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FOR_PRIVATE_MODE_BACKUP_KEY  Result Code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_7

    const/4 v2, 0x1

    :cond_7
    invoke-virtual {v1, p0, v2, v7}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_1
        0x5 -> :sswitch_2
        0xb -> :sswitch_3
        0x3ec -> :sswitch_4
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    const v0, 0x7f0800b8

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->verifySecuredLock()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->initPref()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0401b5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b09ff

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "PersonalPageLockTypeFragment"

    const-string/jumbo v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->switchChangedFingerprint(Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePattern:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ChooseLockPattern;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "from_personal"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "key_lock_method"

    const-string/jumbo v2, "pattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePin:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x20000

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypePassword:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x40000

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->StartChooseLockPassword(I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "PersonalPageLockTypeFragment"

    const-string/jumbo v2, "onResume() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-le v0, v5, :cond_1

    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getEnrolledFingers()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0a18

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_0
    :goto_1
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    return-void

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    if-ne v0, v5, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getRequestCodeValue:I

    const/16 v2, 0x64

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    const v2, 0x7f0b0a17

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->guideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageLockTypeFragment;->mLockTypeFinger:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_2
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onStop()V

    const-string/jumbo v0, "PersonalPageLockTypeFragment"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
