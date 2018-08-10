.class public Lcom/android/server/retaildemo/UserInactivityCountdownDialog;
.super Landroid/app/AlertDialog;
.source "UserInactivityCountdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;
    }
.end annotation


# instance fields
.field private mCountDownDuration:J

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

.field private mRefreshInterval:J


# direct methods
.method static synthetic -get0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownDuration:J

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mRefreshInterval:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method constructor <init>(Landroid/content/Context;JJ)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-wide p2, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownDuration:J

    iput-wide p4, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mRefreshInterval:J

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7da

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const v1, 0x1040291

    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x104028e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setOnCountDownExpiredListener(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->mOnCountDownExpiredListener:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    return-void
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040290

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;-><init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
