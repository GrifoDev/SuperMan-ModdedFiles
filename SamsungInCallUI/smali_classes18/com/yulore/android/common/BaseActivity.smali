.class public abstract Lcom/yulore/android/common/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

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
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/yulore/android/common/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/yulore/android/common/BaseActivity$1;-><init>(Lcom/yulore/android/common/BaseActivity;)V

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private initView(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseActivity;->loadActivityLayoutRes()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/yulore/android/common/BaseActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseActivity;->findViewById()V

    .line 56
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseActivity;->setListener()V

    .line 57
    invoke-virtual {p0, p1}, Lcom/yulore/android/common/BaseActivity;->processLogic(Landroid/os/Bundle;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected abstract findViewById()V
.end method

.method public getActivityState()Lcom/yulore/android/common/State;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    return-object v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    invoke-virtual {v0}, Lcom/yulore/android/common/State;->getIndex()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

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
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/yulore/android/common/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->context:Landroid/content/Context;

    .line 45
    invoke-static {}, Lcom/yulore/android/common/pool/ThreadManager;->getInstance()Lcom/yulore/android/common/pool/ThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->mThreadManager:Lcom/yulore/android/common/pool/ThreadManager;

    .line 47
    sget-object v0, Lcom/yulore/android/common/State;->CREATE:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 49
    invoke-direct {p0, p1}, Lcom/yulore/android/common/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/yulore/android/common/State;->DESTROY:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 160
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
    .line 146
    sget-object v0, Lcom/yulore/android/common/State;->PAUSE:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 147
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/yulore/android/common/State;->RESTART:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/yulore/android/common/State;->RESUME:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/yulore/android/common/State;->START:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 130
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/yulore/android/common/State;->STOP:Lcom/yulore/android/common/State;

    iput-object v0, p0, Lcom/yulore/android/common/BaseActivity;->activityState:Lcom/yulore/android/common/State;

    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 154
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
    .line 118
    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity;->context:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 119
    return-void
.end method

.method protected showToast(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "toast"    # Ljava/lang/String;
    .param p2, "shortToast"    # Z

    .prologue
    .line 122
    iget-object v1, p0, Lcom/yulore/android/common/BaseActivity;->context:Landroid/content/Context;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    return-void

    .line 122
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected startActivitySafely(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yulore/android/common/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
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
    iget-object v0, p0, Lcom/yulore/android/common/BaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/yulore/android/common/BaseActivity$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/yulore/android/common/BaseActivity$2;-><init>(Lcom/yulore/android/common/BaseActivity;ILcom/yulore/android/common/job/AsyncJob;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method
