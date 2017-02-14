.class public Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.super Lcom/android/settings/InstrumentedFragment;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;,
        Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$2;,
        Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    }
.end annotation


# instance fields
.field private mDone:Z

.field private mEnrolling:Z

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

.field private final mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToken:[B

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mDone:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private startEnrollment()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;IILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    return-void
.end method


# virtual methods
.method cancelEnrollment()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method

.method public getEnrollmentRemaining()I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I

    return v0
.end method

.method public getEnrollmentSteps()I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf5

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onAttach(Landroid/app/Activity;)V

    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mToken:[B

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.extra.USER_ID"

    const/16 v2, -0x2710

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setRetainInstance(Z)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStart()V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrolling:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->startEnrollment()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onStop()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    return-void
.end method
