.class Lcom/android/settings/SimPersoLockSettings$1;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SimPersoLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Unexpected msg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v3, v3, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v3, v3, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/android/settings/SimPersoLockSettings;->-wrap1(Lcom/android/settings/SimPersoLockSettings;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v3, v3, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v3, v3, Lcom/android/settings/SimPersoLockSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->hide()V

    :cond_2
    iget-object v3, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    :goto_2
    invoke-static {v3, v1}, Lcom/android/settings/SimPersoLockSettings;->-wrap2(Lcom/android/settings/SimPersoLockSettings;Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_2

    :pswitch_2
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "Exception Occured!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v1, :cond_5

    const-string/jumbo v1, "SimPersoLockSettings"

    const-string/jumbo v2, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/SimPersoLockSettings$1;->this$0:Lcom/android/settings/SimPersoLockSettings;

    invoke-virtual {v1}, Lcom/android/settings/SimPersoLockSettings;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
