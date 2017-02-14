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

.field private static mForFingerprint:Z

.field private static mForIris:Z

.field private static mForPrivateModeBackupKey:Z

.field private static mFromAppLock:Z

.field private static mFromPersonalPage:Z

.field private static mImm:Landroid/view/inputmethod/InputMethodManager;

.field private static mIsEnforcedMultifactorNReset:Z

.field private static mIsFromKnoxFinger:Z

.field private static mIsPin:Z

.field private static mIsRecovery:Z

.field private static mKnoxEnforcePassword:Z

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

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    return v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    return v0
.end method

.method static synthetic -get13()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    return v0
.end method

.method static synthetic -get14()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    return v0
.end method

.method static synthetic -get15()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    return v0
.end method

.method static synthetic -get8()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    return v0
.end method

.method static synthetic -get9()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
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

.method static synthetic -wrap0(Lcom/android/settings/ChooseLockPassword;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->allowHomeAndBack(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/ChooseLockPassword;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/ChooseLockPassword;I)V
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

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mImm:Landroid/view/inputmethod/InputMethodManager;

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    sput-boolean v0, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

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

.method private sendIntentToKnoxKeyguard(I)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.securefolder.keyguard.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.securefolder"

    const-string/jumbo v3, "com.samsung.knox.securefolder.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string/jumbo v1, "resetResult"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "first_lock_type"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "first_lock_type"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.knox.kss.PASSWORD_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.knox.kss"

    const-string/jumbo v3, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v4, 0x80000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "lockscreen.password_type"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    sget v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v4, 0x20000

    if-eq v4, v1, :cond_2

    sget v1, Lcom/android/settings/ChooseLockPassword;->mRQuality:I

    const/high16 v4, 0x30000

    if-ne v4, v1, :cond_3

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from_personal"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "from_applock"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromAppLock:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "personal_mQuality"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "applock_mQuality"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mAppLock_isPin:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "for_fingerprint"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForFingerprint:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "for_iris"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForIris:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "knoxEnforcePassword"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mKnoxEnforcePassword:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsEnforcedMultifactorNReset:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "forPrivateBackupKey"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "forAppLockBackupKey"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/ChooseLockPassword;->mAppLockBackupKey:Ljava/lang/String;

    if-eqz v1, :cond_4

    :goto_1
    sput-boolean v2, Lcom/android/settings/ChooseLockPassword;->mForAppLockBackupKey:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isFromKnoxFinger"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsFromKnoxFinger:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "isRecovery"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsRecovery:Z

    const-string/jumbo v0, ""

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mFromPersonalPage:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mForPrivateModeBackupKey:Z

    if-eqz v1, :cond_6

    :cond_1
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mPersonalPage_isPin:Z

    if-eqz v1, :cond_5

    const v1, 0x7f0b09e8

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    move v1, v2

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_0

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    const v1, 0x7f0b09ea

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->mIsPin:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0b138d

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2

    :cond_7
    const v1, 0x7f0b138b

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x64

    const/4 v3, 0x4

    const/4 v2, 0x0

    if-eq p1, v3, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ge v1, v4, :cond_1

    sget-boolean v1, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToMDMFW(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mAllowHomeAndBack:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-lt v1, v4, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->sendIntentToKnoxKeyguard(I)V

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_5
    if-ne p1, v3, :cond_7

    invoke-static {}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get0()Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v1, v2, :cond_6

    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get8(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get6(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    :cond_7
    const/4 v1, 0x1

    return v1
.end method
