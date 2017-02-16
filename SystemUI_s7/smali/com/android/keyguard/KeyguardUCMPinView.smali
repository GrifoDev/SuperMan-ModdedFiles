.class public Lcom/android/keyguard/KeyguardUCMPinView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;,
        Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;,
        Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;,
        Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    }
.end annotation


# static fields
.field private static sVendorName:Ljava/lang/String;

.field private static syncObj:Ljava/lang/Object;


# instance fields
.field private mAgentID:Ljava/lang/String;

.field private mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

.field private mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

.field private mError:I

.field private mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

.field private mMISCInfo:Ljava/lang/String;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPinText:Ljava/lang/String;

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private mPukSupported:Z

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

.field private mStatus:I

.field private mUCMAgent:Landroid/widget/TextView;

.field private mUCMMiscTagValue:Landroid/widget/TextView;

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardUCMPinView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get7()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPin()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardUCMPinView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPuk()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->stopProgress()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUKandUnlock()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPIN(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getRemainingCount(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->checkPassword(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getAgentInfoAndUpdateStatus()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/keyguard/KeyguardUCMPinView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->startProgress(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardUCMPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getVendorID()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordTextViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/PasswordTextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    :cond_0
    return-void
.end method

.method private checkPassword(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$3;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$3;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private checkPin()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private checkPuk()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    const/4 v0, 0x1

    return v0
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    const/4 v1, 0x0

    if-nez v2, :cond_0

    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get UCM service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "none"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    :goto_1
    if-nez v4, :cond_2

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    return-object v6
.end method

.method public static generatePassword()Landroid/os/Bundle;
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "generatePassword called"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.ucs.ucsservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v1, v3, v2, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v5

    :cond_0
    const-string/jumbo v3, "KeyguardUCMPinView"

    const-string/jumbo v4, "mUcmBinder == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getAgentInfoAndUpdateStatus()V
    .locals 11

    const/16 v10, 0xe

    monitor-enter p0

    :try_start_0
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "getAgentInfoAndUpdateStatus called"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "com.samsung.ucs.ucsservice"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get UCM service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get getStatus"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v10, :cond_2

    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "Boot init condition"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    const/4 v4, 0x0

    :goto_0
    const/16 v7, 0xa

    if-ge v4, v7, :cond_2

    invoke-interface {v5, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v10, :cond_3

    :cond_2
    :goto_1
    const-string/jumbo v7, "state"

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string/jumbo v7, "miscInfo"

    const-string/jumbo v8, ""

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    const-string/jumbo v7, "minPinLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    const-string/jumbo v7, "maxPinLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    const-string/jumbo v7, "minPukLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    const-string/jumbo v7, "maxPukLength"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    const-string/jumbo v7, "remainCnt"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string/jumbo v7, "errorresponse"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pin puk "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMinLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinMaxLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMinLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukMaxLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "misc : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pin remain : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mError:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v8, 0x3e8

    :try_start_4
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    :try_start_5
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get getStatus"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/android/keyguard/KeyguardUCMPinView;->sVendorName:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KeyguardUCMPinView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCSUri returns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$plurals;->kg_attempt_left:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatusAndShowingDialog()V
    .locals 5

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "getStatusAndShowingDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/keyguard/KeyguardUCMPinView;->syncObj:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUCMPinView$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    const-string/jumbo v1, "com.samsung.ucs.ucsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "failed to get UCM service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 3

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "getUnlockProgressDialog called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_loading:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->kg_ucm_unlocking:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p1

    goto :goto_0
.end method

.method private startProgress(Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private stopProgress()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)[I
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "verifyPIN called"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    new-array v3, v6, [I

    aput v8, v3, v9

    aput v8, v3, v10

    aput v8, v3, v11

    const-string/jumbo v6, "com.samsung.ucs.ucsservice"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v4

    if-nez v4, :cond_0

    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "failed to get UCM service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v4, v6, v5, p1, v7}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v6, "state"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string/jumbo v6, "remainCnt"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string/jumbo v6, "errorresponse"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "state : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "remainCnt : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "KeyguardUCMPinView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "errorCode : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v7, 0x83

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "PIN verfication succeed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/4 v7, 0x0

    aput v6, v3, v7

    iget v6, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const/4 v7, 0x1

    aput v6, v3, v7

    const/4 v6, 0x2

    aput v2, v3, v6

    return-object v3

    :cond_1
    const-string/jumbo v6, "KeyguardUCMPinView"

    const-string/jumbo v7, "PIN verfication failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v3
.end method

.method private verifyPINandUnlock(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPINandUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$1;

    invoke-direct {v0, p0, p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;->start()V

    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 11

    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "verifyPUK called"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x3

    new-array v3, v8, [I

    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    const/4 v8, -0x1

    const/4 v9, 0x1

    aput v8, v3, v9

    const/4 v8, -0x1

    const/4 v9, 0x2

    aput v8, v3, v9

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    :cond_0
    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    return-object v3

    :cond_1
    const-string/jumbo v8, "com.samsung.ucs.ucsservice"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "failed to get UCM service"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, -0x1

    const/4 v9, 0x0

    aput v8, v3, v9

    return-object v3

    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v8, "state"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const-string/jumbo v8, "remainCnt"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const-string/jumbo v8, "errorresponse"

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "state : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "remainCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "KeyguardUCMPinView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "errorCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v9, 0x84

    if-ne v8, v9, :cond_3

    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication succeed : LOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/4 v9, 0x0

    aput v8, v3, v9

    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mRemainingAttempts:I

    const/4 v9, 0x1

    aput v8, v3, v9

    const/4 v8, 0x2

    aput v2, v3, v8

    :goto_1
    return-object v3

    :cond_3
    iget v8, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStatus:I

    const/16 v9, 0x83

    if-ne v8, v9, :cond_4

    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication succeed : UNLOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    const-string/jumbo v8, "KeyguardUCMPinView"

    const-string/jumbo v9, "PUK verfication failed : BLOCKED"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private verifyPUKandUnlock()V
    .locals 3

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUKandUnlock called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMPinView$2;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public confirmPin()Z
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "confirmPin called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPinText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    sget v0, Lcom/android/keyguard/R$id;->ucmPinEntry:I

    return v0
.end method

.method protected getPromptReasonStringRes(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getVendorID()V
    .locals 6

    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "getVendorID() called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "com.samsung.ucs.ucsservice"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get UCM service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->getCSUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v4, "KeyguardUCMPinView"

    const-string/jumbo v5, "failed to get agentInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v4, "id"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    const-string/jumbo v4, "isPUKSupported"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPukSupported:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onDetachedFromWindow()V

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onDetachedFromWindow called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->ucm_misctag:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMMiscTagValue:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->ucm_csname:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const-string/jumbo v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFinishInflate() called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mAgentID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "setTimeout called : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/16 v1, 0x2710

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setTimeout(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "KeyguardUCMPinView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPasswordChecked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->lockscreen_smartcard_wrong_card:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "onPause called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetState()V

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "resetState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMPinView;->getStatusAndShowingDialog()V

    return-void
.end method

.method protected shouldLockout(J)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public startAppearAnimation()V
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startAppearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "startDisappearAnimation called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "verifyPasswordAndUnlock overrided called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/PasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINandUnlock(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView;->mStateMachine:Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->verifyPUKandUpdateUI()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "unknown status nothings to do"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_2
        0x83 -> :sswitch_0
        0x84 -> :sswitch_0
        0x85 -> :sswitch_1
    .end sparse-switch
.end method
