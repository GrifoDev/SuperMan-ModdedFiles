.class public Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;,
        Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

.field private static mIsSharedDevice:Z


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field helpText:Landroid/widget/TextView;

.field private final mAnimatePattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mChallenge:J

.field private mChallenge_2nd:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field protected mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCurrentPattern:Ljava/lang/String;

.field private mFooterLeftButton:Landroid/widget/TextView;

.field private mFooterRightButton:Landroid/widget/TextView;

.field protected mFooterText:Landroid/widget/TextView;

.field private mHasChallenge:Z

.field protected mHeaderText:Landroid/widget/TextView;

.field private mHideDrawer:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

.field private mScrollView:Landroid/widget/ScrollView;

.field mSharedPreferences:Landroid/content/SharedPreferences;

.field private mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    return-object v0
.end method

.method private static synthetic -getcom-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    sput-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-com-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1

    :catch_6
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge_2nd:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/widget/LockPatternView$Cell;

    invoke-static {v2, v2}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v2, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v4, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$1;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    new-instance v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$2;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private saveForAppLock()V
    .locals 9

    const/4 v8, 0x1

    const-string/jumbo v0, "applock_locktype_iris"

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v5}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v5}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v5

    if-nez v5, :cond_5

    if-eqz v3, :cond_1

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V

    :cond_1
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get1()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setAppLockFingerPrintLockscreen(ZI)V

    const-string/jumbo v5, "applock_locktype_iris"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "applock_lock_type"

    const/16 v7, 0x9

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/app/Activity;->setResult(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "applock_lock_type"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "ChooseLockPattern"

    const-string/jumbo v6, "Pattern setup is done, will call additional pin setup screen"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "AppLockPatternOwnAdditionalPin"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "AppLockPatternSaved"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "from_applock"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get5()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "forAppLockBackupKey"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v5, "for_fingerprint"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get2()Z

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v5, 0x2000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method private saveForPrivateMode()V
    .locals 10

    const/4 v9, 0x1

    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v4}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v9, v4}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    sget-object v6, Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SEC_PRIVATE_MODE_TYPE;I)V

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "personal_mode_lock_type"

    const/4 v6, 0x6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/app/Activity;->setResult(I)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "ChooseLockPattern"

    const-string/jumbo v5, "Pattern setup is done, will call additional pin setup screen"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "PersonalPagePatternOwnAdditionalPin"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "PersonalPagePatternSaved"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "forPrivateBackupKey"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "from_personal"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get6()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "for_fingerprint"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get2()Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x2000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private startSaveAndFinish()V
    .locals 13

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ChooseLockPattern"

    const-string/jumbo v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v11, :cond_1

    invoke-virtual {v11}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v12

    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/samsung/android/camera/iris/SemIrisManager;->preEnroll()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge_2nd:J

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/UCMHelpUtils;->resetUcmKeyguardSettings()Z

    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    new-instance v0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    invoke-direct {v0, v3}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    const-string/jumbo v3, "save_and_finish_worker"

    invoke-virtual {v0, v1, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_require_password"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    iget-wide v4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    iget-wide v6, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge_2nd:J

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v10, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/util/List;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1d

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    iget v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleLeftButton()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Retry:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Cancel:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get7()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ChooseLockPattern;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ChooseLockPattern;->-wrap1(Lcom/android/settings/ChooseLockPattern;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1001aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "left footer button pressed, but stage of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " doesn\'t make sense"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public handleRightButton()V
    .locals 15

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->FirstChoiceValid:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected ui stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceConfirmed:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when button is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "lockscreen.biometric_weak_fallback"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "Block"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get6()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->saveForPrivateMode()V

    return-void

    :cond_5
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get5()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get1()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->saveForAppLock()V

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v7, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_8

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get8()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    const/4 v11, 0x4

    const/16 v10, 0x8

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v0, "com.android.settings.SetupChooseLockPattern$SetupChooseLockPatternFragment"

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "SetupWizardLock"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_9
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get8()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "isFromKnoxFinger"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_a
    const-string/jumbo v0, "lockscreen.password_min"

    const/4 v1, 0x4

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "lockscreen.password_max"

    const/16 v1, 0x8

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "for_fingerprint"

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get2()Z

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_require_password"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    const-string/jumbo v0, "extra_require_password"

    invoke-virtual {v6, v0, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "password"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v12, 0x10000

    const-string/jumbo v0, "lockscreen.password_type"

    invoke-virtual {v6, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "firstlock"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x2000000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "has_challenge"

    const/4 v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "challenge"

    iget-wide v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_c
    if-eqz v5, :cond_10

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v2, 0x10

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setSmartUnlockEnabled(ZI)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "db_lockscreen_is_smart_lock"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v9, :cond_d

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_2
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.samsung.settings.SECURITY_WARNING_CLEAR"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    sget-boolean v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    :cond_e
    const-string/jumbo v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Inside Return, mIsSharedDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mIsSharedDevice:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_10
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startSaveAndFinish()V

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iget-object v0, v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->HelpScreen:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Help screen is only mode with ok button, but stage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_1
    sget-object v0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get2()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get3()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->handleLeftButton()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->handleRightButton()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const-wide/16 v4, 0x0

    const/4 v13, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/ChooseLockPattern;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Fragment contained in wrong activity"

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    const-string/jumbo v1, "for_cred_req_boot"

    invoke-virtual {v11, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;-><init>(Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "extra_require_password"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v1, "password"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v13}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->setBlocking(Z)V

    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iget v10, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    move-wide v6, v4

    invoke-virtual/range {v0 .. v10}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJJLjava/util/List;Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHideDrawer:Z

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v4, "set_lock_warning_toast"

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "set_lock_warning_toast"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f0b08b9

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->edit:Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "set_lock_warning_toast"

    invoke-interface {v1, v4, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get3()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f1001d8

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v4, "fromKnoxKeyguard"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Lcom/android/settings/ChooseLockPattern;->-set0(Z)Z

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get7()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ChooseLockPattern;

    invoke-static {v1, v3}, Lcom/android/settings/ChooseLockPattern;->-wrap0(Lcom/android/settings/ChooseLockPattern;Z)V

    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f04006c

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f04006b

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, v1}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;->setListener(Lcom/android/settings/SaveChosenLockWorkerBase$Listener;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "uiStage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chosenPattern"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "currentPattern"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v8, 0x7f1101a5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v8, 0x7f1101c6

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ScrollView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mScrollView:Landroid/widget/ScrollView;

    const v8, 0x7f1101c7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/internal/widget/LockPatternView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v9}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v9, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;

    invoke-direct {v9, p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$3;-><init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v8, 0x7f1101c8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const v8, 0x7f1101c9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const v8, 0x7f1101ca

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "show_button_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const v9, 0x7f02033b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    const v9, 0x7f02033b

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get5()Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    :goto_2
    const v8, 0x7f1101c5

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "confirm_credentials"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "password"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    const-string/jumbo v8, "has_challenge"

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHasChallenge:Z

    const-string/jumbo v8, "challenge"

    const-wide/16 v10, 0x0

    invoke-virtual {v1, v8, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    const-string/jumbo v8, "ChooseLockPattern"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "challenge : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChallenge:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_9

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get6()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get4()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get1()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get5()Z

    move-result v8

    :goto_3
    if-nez v8, :cond_8

    if-eqz v0, :cond_7

    sget-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const v9, 0x7f0b117b

    invoke-virtual {p0, v9}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x37

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v9, v11}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    :cond_2
    :goto_4
    return-void

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get6()Z

    move-result v8

    if-nez v8, :cond_1

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    const/16 v9, 0x64

    if-ge v8, v9, :cond_1

    const v8, 0x7f1101c3

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->helpText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b08bc

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const v11, 0x7f0b1184

    invoke-virtual {p0, v11}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto/16 :goto_2

    :cond_6
    const/4 v8, 0x1

    goto :goto_3

    :cond_7
    sget-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_4

    :cond_8
    sget-object v8, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v8, "chosenPattern"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_a

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mChosenPattern:Ljava/util/List;

    :cond_a
    iget-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    if-nez v8, :cond_b

    const-string/jumbo v8, "currentPattern"

    invoke-virtual {p2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mCurrentPattern:Ljava/lang/String;

    :cond_b
    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->values()[Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v8

    const-string/jumbo v9, "uiStage"

    invoke-virtual {p2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    aget-object v8, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string/jumbo v9, "save_and_finish_worker"

    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    iput-object v8, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mSaveAndFinishWorker:Lcom/android/settings/ChooseLockPattern$SaveAndFinishWorker;

    goto/16 :goto_4
.end method

.method protected setRightButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method protected setRightButtonText(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterRightButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    sget-object v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ChoiceTooShort:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    sget-object v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->Gone:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-object v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget v2, v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonText(I)V

    iget-object v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->rightMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    iget-boolean v2, v2, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->setRightButtonEnabled(Z)V

    iget-boolean v2, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->patternEnabled:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    :goto_3
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-getcom-android-settings-ChooseLockPattern$ChooseLockPatternFragment$StageSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mUiStage:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_4
    :pswitch_0
    if-ne v1, p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get6()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->privateModeHeaderMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/ChooseLockPattern;->-get5()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    const v3, 0x7f0b14c6

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mHeaderText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->headerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterText:Landroid/widget/TextView;

    iget v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->footerMessage:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget v3, v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->text:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mFooterLeftButton:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->leftMode:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;

    iget-boolean v3, v3, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$LeftButtonMode;->enabled:Z

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->disableInput()V

    goto :goto_3

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iget-object v4, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mAnimatePattern:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    goto :goto_4

    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    const/4 v0, 0x1

    goto :goto_4

    :pswitch_4
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    goto/16 :goto_4

    :pswitch_5
    iget-object v2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v3, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    invoke-direct {p0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->postClearPatternRunnable()V

    const/4 v0, 0x1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method
