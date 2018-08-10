.class public Lcom/android/server/policy/ReduceScreenManager;
.super Ljava/lang/Object;
.source "ReduceScreenManager.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ReduceScreenManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

.field private mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

.field private mHandler:Landroid/os/Handler;

.field private mPWM:Lcom/android/server/policy/PhoneWindowManager;

.field private mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/ReduceScreenManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/ReduceScreenManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iput-object p3, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- Reduce Screen Policy ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public isHomeTripleTapEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 2

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_0
    const-string/jumbo v0, "OneHandBG"

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "OneHandTouch"

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8ca -> :sswitch_0
        0x8ce -> :sswitch_1
    .end sparse-switch
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public screenTurnedOff()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v3, "ReduceScreenManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "screenTurnedOff(), enabled="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", mEasyOneHandController="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", mEasyOneHandHalder="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mSystemBooted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/ReduceScreenManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandController:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isEasyOneHandEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isTripleTapOnHomeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mEasyOneHandHalder:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ReduceScreenManager$1;-><init>(Lcom/android/server/policy/ReduceScreenManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method public startService(I)V
    .locals 3

    const-string/jumbo v0, "ReduceScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startService() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/ReduceScreenManager$2;-><init>(Lcom/android/server/policy/ReduceScreenManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopService(I)V
    .locals 3

    const-string/jumbo v0, "ReduceScreenManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopService() reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/ReduceScreenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/ReduceScreenManager$3;

    invoke-direct {v1, p0}, Lcom/android/server/policy/ReduceScreenManager$3;-><init>(Lcom/android/server/policy/ReduceScreenManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemBooted()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/ReduceScreenManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ReduceScreenManager"

    const-string/jumbo v1, "systemBooted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
