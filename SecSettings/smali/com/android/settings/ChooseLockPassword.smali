.class public Lcom/android/settings/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/ChooseLockPassword$SaveAndFinishWorker;
    }
.end annotation


# static fields
.field private static LOCKSCREEN_PASSWORD_PIN_BUTTON:I

.field public static isChangePwdRequired:Z

.field private static mAppLockBackupKey:Ljava/lang/String;

.field private static mAppLock_isPin:Z

.field private static mForAppLockBackupKey:Z

.field private static mForFace:Z

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mForSmartScan:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mFromScreenLockBio:Z

.field private static mFromScreenLockType:Z

.field private static mFromSettingsBio:Z

.field private static mFromSetupWizard:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxTwoStep:Z

.field private static mIsPin:Z

.field private static mIsRecovery:Z

.field private static mKnoxEnforcePassword:Z

.field private static mKnoxUserId:I

.field private static mNeedSetupCredential:Z

.field private static mPersonalPage_isPin:Z

.field private static mRQuality:I


# instance fields
.field private mAllowHomeAndBack:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockBio:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockType:Z

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromSettingsBio:Z

    return v0
.end method

.method static synthetic -get14()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromSetupWizard:Z

    return v0
.end method

.method static synthetic -get15()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get17()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    return v0
.end method

.method static synthetic -get18()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    return v0
.end method

.method static synthetic -get19()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic -get20()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    return v0
.end method

.method static synthetic -get21()I
    .locals 1

    sget v0, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    return v0
.end method

.method static synthetic -get22()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mNeedSetupCredential:Z

    return v0
.end method

.method static synthetic -get23()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForSmartScan:Z

    return v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/settings/ChooseLockPassword;->LOCKSCREEN_PASSWORD_PIN_BUTTON:I

    return p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return p0
.end method

.method static synthetic -set3(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 0

    sput-object p0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return p0
.end method

.method static synthetic -set5(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0

    sput p0, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPassword;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForSmartScan:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromSetupWizard:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockType:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockBio:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromSettingsBio:Z

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    sput v0, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mNeedSetupCredential:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    return-void
.end method

.method private allowHomeAndBack(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez p1, :cond_0

    const-string/jumbo v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0xbb

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static createIntent(Landroid/content/Context;IIIZJLjava/lang/String;I)Landroid/content/Intent;
    .locals 11

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v2, "has_challenge"

    const/4 v3, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "challenge"

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "password"

    move-object/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v9
.end method

.method public static createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v0, "password"

    invoke-virtual {v6, v0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v6
.end method

.method public static createIntent(Landroid/content/Context;IIIZLjava/lang/String;I)Landroid/content/Intent;
    .locals 2

    invoke-static/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;
    .locals 3

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/settings/ChooseLockPassword;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.password_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_min"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "lockscreen.password_max"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "confirm_credentials"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;IIIZZI)Landroid/content/Intent;
    .locals 2

    invoke-static/range {p0 .. p5}, Lcom/android/settings/ChooseLockPassword;->createIntent(Landroid/content/Context;IIIZZ)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method private sendIntentToMDMFW(I)V
    .locals 0

    return-void
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v1, ":settings:show_fragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getFragmentClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    const-class v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    sget v1, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get1()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get9(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    sget v1, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get10(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-wrap1(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;II)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v7, -0x80000000

    invoke-virtual {v4, v7}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "lockscreen.password_type"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    sget v4, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v7, 0x20000

    if-eq v7, v4, :cond_4

    sget v4, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v7, 0x30000

    if-ne v7, v4, :cond_5

    move v4, v5

    :goto_0
    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "from_personal"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "from_applock"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "personal_mQuality"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "applock_mQuality"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "fromSetupWizard"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "fromScreenLock"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockType:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "screen_lock_bio"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromScreenLockBio:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "settings_bio"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromSettingsBio:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "for_fingerprint"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "for_iris"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "for_face"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForFace:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "for_smartscan"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForSmartScan:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "knoxEnforcePassword"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "fromKnoxKeyguard"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "forPrivateBackupKey"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "forAppLockBackupKey"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v4, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v4, :cond_6

    move v4, v5

    :goto_1
    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v7, "is_knox_two_step"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxTwoStep:Z

    sget v4, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPwdChangeRequested()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    :cond_1
    sget v4, Lcom/android/settings/ChooseLockPassword;->mKnoxUserId:I

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->needSetupCredential()Z

    move-result v4

    if-eqz v4, :cond_2

    sput-boolean v5, Lcom/android/settings/ChooseLockPassword;->mNeedSetupCredential:Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "isRecovery"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    const-string/jumbo v0, ""

    sget-boolean v4, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    if-eqz v4, :cond_8

    :cond_3
    sget-boolean v4, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    if-eqz v4, :cond_7

    const v4, 0x7f12144d

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    move v4, v5

    goto/16 :goto_0

    :cond_5
    move v4, v6

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto/16 :goto_1

    :cond_7
    const v4, 0x7f121449

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_8
    sget-boolean v4, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    if-eqz v4, :cond_9

    const v4, 0x7f121026

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_9
    const v4, 0x7f121024

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_5

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_1
    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get1()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get11(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v1, v2, :cond_2

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get11(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get7(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get1()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mH:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    const-string/jumbo v1, "ChooseLockPassword"

    const-string/jumbo v2, "activity in Focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "ChooseLockPassword"

    const-string/jumbo v2, "activity out of Focus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
