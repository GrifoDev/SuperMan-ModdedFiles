.class public Lcom/samsung/android/settings/face/FaceAuthenticateDialog;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;,
        Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;
    }
.end annotation


# static fields
.field private static final synthetic -com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I


# instance fields
.field private final alphaAnimationDuration:I

.field private mAlert:Landroid/app/AlertDialog;

.field private mAltPassword:Landroid/widget/EditText;

.field private mAltPasswordBox:Landroid/widget/LinearLayout;

.field private mAltPasswordEditBox:Landroid/widget/FrameLayout;

.field private mAltPasswordError:Landroid/widget/TextView;

.field private mAltPasswordGuide:Landroid/widget/TextView;

.field private mAnimationBox:Landroid/widget/RelativeLayout;

.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mBackButtonContainer:Landroid/widget/LinearLayout;

.field private mBackupButton:Landroid/widget/Button;

.field private mBackupCancelButton:Landroid/widget/Button;

.field private mBackupOkButton:Landroid/widget/Button;

.field private mBackupPasswordStatusDB:I

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field protected mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDialogLogoIconView:Landroid/widget/ImageView;

.field private mDialogTitleTextView:Landroid/widget/TextView;

.field private mDialogView:Landroid/view/View;

.field private mEditTextWatcher:Landroid/text/TextWatcher;

.field private mErrClearRunnable:Ljava/lang/Runnable;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mHandler:Landroid/os/Handler;

.field private mInfoBox:Landroid/widget/RelativeLayout;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mInfoText:Landroid/widget/TextView;

.field private mInsecureBiometricsMessage:Landroid/widget/TextView;

.field private mPasswordTextRunnable:Ljava/lang/Runnable;

.field mResultValue:I

.field private mSIPRunnable:Ljava/lang/Runnable;

.field private mTimeoutTitle:Landroid/widget/TextView;

.field private mTitleArea:Landroid/widget/FrameLayout;

.field private mWindowManager:Landroid/view/WindowManager;

.field private onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->values()[Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_NORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_TIME_OUT:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-virtual {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-com-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanUpLayoutResourcesBackup()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanUpLayoutResources()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->dismiss()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->releaseFaceManager()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateBackupLayout()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->verifyPassword()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->alphaAnimationDuration:I

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iput v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$1;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->initFailedFaceAttempts(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "biometrics_backup_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showFaceAuthenticationDialog()V

    return-void
.end method

.method private checkBackupValue(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkBackupPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private cleanEditBoxListener()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized cleanUpLayoutResources()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized cleanUpLayoutResourcesBackup()V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanEditBoxListener()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->releaseFaceManager()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->onFaceAuthenticateDialogEventListener:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;

    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    invoke-interface {v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$IFaceAuthenticateDialogEventListener;->FaceAuthenticateDialogEvent(I)V

    return-void
.end method

.method private getDialogBuiler(I)Landroid/app/AlertDialog$Builder;
    .locals 7

    const/4 v3, 0x0

    const v6, 0x7f120552

    const v5, 0x10302d2

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const v2, 0x7f0d00fe

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$11;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$11;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0d00fc

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$13;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$13;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$14;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    const v4, 0x7f1213b5

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$15;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$15;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private handleLockoutFace(IJ)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_ABNORMAL_FACE:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "CountdownTimer: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move-wide v2, p2

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;JJI)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$16;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->STAGE_LOCKOUT_BACKUP:Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V

    goto :goto_0
.end method

.method private releaseFaceManager()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    return-void
.end method

.method private setEditBoxListener()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$6;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$7;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$8;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mEditTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method private setLayoutMarginParams(IIIILandroid/view/View;)V
    .locals 7

    if-nez p5, :cond_0

    const-string/jumbo v5, "FcstFaceAuthenticateDialog"

    const-string/jumbo v6, "setLayoutMaringParams view is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p1, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p2, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p3, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-static {p4, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {v4, v1, v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {p5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setPasswordLayout()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setEditBoxListener()V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f120ab0

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    new-instance v0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    return-void
.end method

.method private showBackupDialog()Z
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->getDialogBuiler(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v3, "FcstFaceAuthenticateDialog"

    const-string/jumbo v4, "showBackupDialog : failed to get builder"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f0a0408

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordBox:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f0a0406

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f0a040a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f0a0409

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v4, 0x7f0a0407

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const v4, 0x7f120a96

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    iget-object v3, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_2

    new-instance v3, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$4;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$4;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "FcstFaceAuthenticateDialog"

    const-string/jumbo v4, "showBackupDialog : failed to show dialog"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5
.end method

.method private showDialog(I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    if-ne p1, v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showIdentifyDialog()Z

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    invoke-direct {p0, v4, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->startFaceAuthentication()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showBackupDialog()Z

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->updateBackupLayout()V

    goto :goto_0
.end method

.method private showFaceAuthenticationDialog()V
    .locals 2

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getFailedFaceAttempts()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->showDialog(I)V

    goto :goto_0
.end method

.method private showIdentifyDialog()Z
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->getDialogBuiler(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "FcstFaceAuthenticateDialog"

    const-string/jumbo v2, "showIdentifyDialog : failed to get builder"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a00c5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a040e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a040b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0411

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a08cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0412

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogView:Landroid/view/View;

    const v2, 0x7f0a0432

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackButtonContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f120a95

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$2;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "disable_insecure_biometrics"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f120a93

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    return v5

    :cond_7
    iget v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupPasswordStatusDB:I

    if-ne v1, v5, :cond_2

    const-string/jumbo v1, "JPN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f120aad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    new-instance v2, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$3;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f120ab8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f120aaf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private startFaceAuthentication()V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    const/4 v3, 0x0

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "mFaceManager in null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBackupLayout()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setPasswordLayout()V

    goto :goto_0
.end method

.method private updateStage(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;I)V
    .locals 15

    const-string/jumbo v1, "FcstFaceAuthenticateDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStage : stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-getcom-samsung-android-settings-face-FaceAuthenticateDialog$StageSwitchesValues()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Stage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "disable_insecure_biometrics"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const v2, 0x7f120a93

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const v2, 0x7f08016f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    const v1, 0x7f120552

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setText(I)V

    :cond_9
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->startFaceAuthentication()V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/16 v1, 0x3ec

    move/from16 v0, p2

    if-ne v0, v1, :cond_15

    const v14, 0x7f120aa5

    const v9, 0x7f120aa4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAnimationBox:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_d

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoBox:Landroid/widget/RelativeLayout;

    const/16 v2, 0x18

    const/16 v3, 0x12

    const/16 v4, 0x18

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    :cond_d
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    if-eqz p2, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_10

    iget-object v6, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTitleArea:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setLayoutMarginParams(IIIILandroid/view/View;)V

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogTitleTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p2, :cond_16

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mErrClearRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_14
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    const v1, 0x7f1213b5

    invoke-virtual {v11, v1}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_0

    :cond_15
    if-eqz p2, :cond_b

    const v14, 0x7f120aac

    const v9, 0x7f120ab9

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mTimeoutTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120aac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_18

    if-eqz v10, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v10, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_17
    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->cleanEditBoxListener()V

    :cond_18
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const v2, 0x7f120aac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupOkButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mBackupCancelButton:Landroid/widget/Button;

    const v2, 0x7f1213b5

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :cond_19
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordEditBox:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mDialogLogoIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1b
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInsecureBiometricsMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const/16 v2, 0x18

    invoke-static {v2, v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getDpValue(ILandroid/content/Context;)I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v13, v12, v1, v12, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginsRelative(IIII)V

    const/4 v1, -0x1

    iput v1, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120aba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private verifyPassword()V
    .locals 8

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->checkBackupValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->resetFailedFaceNBackupAttempts()V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$9;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mSIPRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->reportFailedFaceAttempts()V

    invoke-static {}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$Config;->getRemaingTimeToUnlock()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    const/4 v1, 0x2

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->handleLockoutFace(IJ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAltPasswordError:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120a97

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_6
    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$10;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V

    iput-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mPasswordTextRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x1388

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public forcedDismiss()V
    .locals 2

    const-string/jumbo v0, "FcstFaceAuthenticateDialog"

    const-string/jumbo v1, "forcedDismiss : Dismiss by external request."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    iput v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mResultValue:I

    invoke-direct {p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->dismiss()V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
