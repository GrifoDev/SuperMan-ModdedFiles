.class public abstract Lcom/yulore/android/common/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"

# interfaces
.implements Lcom/yulore/android/common/job/AsyncJobListener;


# instance fields
.field private activityState:Lcom/yulore/android/common/State;

.field protected context:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 34
    new-instance v0, Lcom/yulore/android/common/BaseFragmentActivity$1;

    invoke-direct {v0, p0}, Lcom/yulore/android/common/BaseFragmentActivity$1;-><init>(Lcom/yulore/android/common/BaseFragmentActivity;)V

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initView(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseFragmentActivity;->loadActivityLayoutRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yulore/android/common/BaseFragmentActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseFragmentActivity;->findViewById()V

    .line 56
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseFragmentActivity;->setListener()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/yulore/android/common/BaseFragmentActivity;->processLogic(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract findViewById()V
.end method

.method public getActivityState()Lcom/yulore/android/common/State;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    return-object v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    invoke-virtual {v0}, Lcom/yulore/android/common/State;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    invoke-virtual {v0}, Lcom/yulore/android/common/State;->getIndex()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract loadActivityLayoutRes()I
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->context:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/yulore/android/common/pool/ThreadManager;->getInstance()Lcom/yulore/android/common/pool/ThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;

    .line 47
    sget-object v0, Lcom/yulore/android/common/State;->CREATE:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 49
    invoke-direct {p0, p1}, Lcom/yulore/android/common/BaseFragmentActivity;->initView(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/yulore/android/common/State;->DESTROY:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 159
    return-void
.end method

.method protected abstract onEventMainThread(ILcom/yulore/android/common/job/AsyncJob;)V
.end method

.method protected onMessageMainThread(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/yulore/android/common/State;->PAUSE:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 146
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 147
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/yulore/android/common/State;->RESTART:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 134
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onRestart()V

    .line 135
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/yulore/android/common/State;->RESUME:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 140
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 141
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/yulore/android/common/State;->START:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 128
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    .line 129
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/yulore/android/common/State;->STOP:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->activityState:Lcom/yulore/android/common/State;

    .line 152
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 153
    return-void
.end method

.method protected abstract processLogic(Landroid/os/Bundle;)V
.end method

.method protected abstract setListener()V
.end method

.method protected showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method

.method protected showToast(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "shortToast"    # Z

    .prologue
    .line 121
    iget-object v1, p0, Lcom/yulore/android/common/BaseFragmentActivity;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulore/android/common/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    const-string v1, "YuloreIVRCommon"

    invoke-static {v1, v0}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public update(ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 2
    .param p1, "event"    # I
    .param p2, "req"    # Lcom/yulore/android/common/job/AsyncJob;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yulore/android/common/BaseFragmentActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yulore/android/common/BaseFragmentActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yulore/android/common/BaseFragmentActivity$2;-><init>(Lcom/yulore/android/common/BaseFragmentActivity;ILcom/yulore/android/common/job/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
