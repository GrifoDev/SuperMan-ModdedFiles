.class public Lcom/android/incallui/SelectPhoneSimAccountActivity;
.super Landroid/app/Activity;
.source "SelectPhoneSimAccountActivity.java"


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity$1;-><init>(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/SelectPhoneSimAccountActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V

    return-void
.end method

.method private attemptFinish()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->semIsResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/bike/BikeModeUtils;->setIsBMOutCallHandled(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    :cond_0
    return-void
.end method

.method private requestSystemKeyEvent(IZ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v0, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0xbb

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v0, 0x3e9

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const-string v2, "window"

    invoke-virtual {p0, v2}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/incallui/SelectPhoneSimAccountActivity;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getTelecomCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->show(Landroid/app/FragmentManager;)V

    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x1a

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/4 v2, 0x3

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0xbb

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    const/16 v2, 0x3e9

    invoke-direct {p0, v2, v3}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->requestSystemKeyEvent(IZ)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/SelectPhoneSimAccountActivity;->attemptFinish()V

    goto :goto_0
.end method
