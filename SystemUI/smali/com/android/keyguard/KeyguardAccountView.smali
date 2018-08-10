.class public Lcom/android/keyguard/KeyguardAccountView;
.super Landroid/widget/LinearLayout;
.source "KeyguardAccountView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardAccountView$SACallback;
    }
.end annotation


# instance fields
.field private final MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

.field private final SAMSUNG_ACCOUNT_PKG_NAME:Ljava/lang/String;

.field cm:Landroid/net/ConnectivityManager;

.field private final countryCodeChina:Ljava/lang/String;

.field private final countryCodeIndia:Ljava/lang/String;

.field private isNetworkConnected:Z

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCheckingDialog:Landroid/app/ProgressDialog;

.field private mISaService:Lcom/msc/sa/aidl/ISAService;

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputContainer:Landroid/view/ViewGroup;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLogin:Landroid/widget/EditText;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mRegisterCode:Ljava/lang/String;

.field private mRequestID:I

.field private mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

.field private mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field private mShowImeAtScreenOn:Z


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardAccountView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/SecurityMessageDisplay;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/KeyguardAccountView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/KeyguardAccountView;)Lcom/msc/sa/aidl/ISAService;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/KeyguardAccountView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/KeyguardAccountView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegisterCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/KeyguardAccountView;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRequestID:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/KeyguardAccountView;)Lcom/android/keyguard/KeyguardAccountView$SACallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/KeyguardAccountView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/KeyguardAccountView;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/KeyguardAccountView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegisterCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/KeyguardAccountView;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mRequestID:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->destroySAConnect()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/KeyguardAccountView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardAccountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string/jumbo v0, "com.osp.app.signin"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->SAMSUNG_ACCOUNT_PKG_NAME:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardAccountView;->isNetworkConnected:Z

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegisterCode:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardAccountView;->MINIMUM_PASSWORD_LENGTH_BEFORE_REPORT:I

    const-string/jumbo v0, "86"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->countryCodeChina:Ljava/lang/String;

    const-string/jumbo v0, "91"

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->countryCodeIndia:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mInputContainer:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method

.method private asyncCheckSAPassword()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    const-string/jumbo v5, "com.osp.app.signin"

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardAccountView;->findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v4, "KeyguardAccountView"

    const-string/jumbo v5, "asyncCheckPassword account == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8}, Lcom/android/keyguard/KeyguardAccountView;->postOnCheckPasswordResult(Z)V

    return-void

    :cond_0
    array-length v4, v1

    if-lez v4, :cond_1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/content/ComponentName;

    const-string/jumbo v5, "com.osp.app.signin"

    const-string/jumbo v6, "com.msc.sa.service.RequestService"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Lcom/android/keyguard/KeyguardAccountView$2;

    invoke-direct {v4, p0}, Lcom/android/keyguard/KeyguardAccountView$2;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    iput-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v7, 0x1

    invoke-virtual {v4, v2, v5, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    :cond_1
    return-void
.end method

.method private destroySAConnect()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mRegisterCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mISaService:Lcom/msc/sa/aidl/ISAService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private dismissProgressDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method private findIntendedAccount(Ljava/lang/String;)Landroid/accounts/Account;
    .locals 13

    iget-object v9, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    const-string/jumbo v10, "com.osp.app.signin"

    new-instance v11, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v12

    invoke-direct {v11, v12}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v10, v11}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v2

    const-string/jumbo v9, "KeyguardAccountView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "findIntendedAccount(), accounts.length = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v9, 0x0

    array-length v10, v2

    :goto_0
    if-ge v9, v10, :cond_8

    aget-object v0, v2, v9

    const/4 v6, 0x0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x4

    :cond_0
    :goto_1
    if-le v6, v4, :cond_7

    move-object v3, v0

    move v4, v6

    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardAccountView;->isStringDouble(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "KeyguardAccountView"

    const-string/jumbo v12, "Id is number case"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "86"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "91"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_3
    const/4 v6, 0x4

    goto :goto_1

    :cond_4
    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v6, 0x3

    goto :goto_1

    :cond_5
    const/16 v11, 0x40

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-gez v11, :cond_0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v12, 0x40

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v11, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v6, 0x2

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_7
    if-ne v6, v4, :cond_1

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    return-object v3
.end method

.method private getProgressDialog()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    const v2, 0x7f12057a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCheckingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic lambda$-com_android_keyguard_KeyguardAccountView_4685(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$-com_android_keyguard_KeyguardAccountView_4974(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private postOnCheckPasswordResult(Z)V
    .locals 4

    const-string/jumbo v1, "KeyguardAccountView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postOnCheckPasswordResult success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dismissProgressDialog()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v2, Lcom/android/keyguard/KeyguardAccountView$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardAccountView$1;-><init>(Lcom/android/keyguard/KeyguardAccountView;ZI)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLayout()V
    .locals 4

    const v3, 0x7f070263

    const v2, 0x7f070228

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mInputContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mInputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mInputContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070267

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public isStringDouble(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method synthetic lambda$-com_android_keyguard_KeyguardAccountView_6627()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mShowImeAtScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public needsInput()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->cm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-ge v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f12057c

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->getProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const-string/jumbo v1, "KeyguardAccountView"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->asyncCheckSAPassword()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const v2, 0x7f1207f7

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dismissProgressDialog()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/16 v3, 0x1000

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Lcom/android/keyguard/KeyguardAccountView$SACallback;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardAccountView$SACallback;-><init>(Lcom/android/keyguard/KeyguardAccountView;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSACallback:Lcom/android/keyguard/KeyguardAccountView$SACallback;

    const v0, 0x7f0a031a

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI;

    invoke-direct {v1}, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a03c4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v2}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI$1;

    invoke-direct {v1}, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const v0, 0x7f0a03b6

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mOk:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/SecurityMessageDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    const v0, 0x7f0a0238

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mInputContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->updateLayout()V

    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardAccountView;->dismissProgressDialog()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->reset()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAccountView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mPassword:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mLogin:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/-$Lambda$vrHxe2AAyaoAchv7dXZK3gUpOpI$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardAccountView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p2}, Lcom/android/keyguard/SecurityMessageDisplay;->setNextMessageColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAccountView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v0, p1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPromptReason(I)V
    .locals 0

    return-void
.end method

.method public startAppearAnimation()V
    .locals 0

    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
