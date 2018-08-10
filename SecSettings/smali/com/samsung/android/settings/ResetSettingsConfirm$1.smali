.class Lcom/samsung/android/settings/ResetSettingsConfirm$1;
.super Landroid/os/Handler;
.source "ResetSettingsConfirm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/ResetSettingsConfirm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ResetSettingsConfirm;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v3}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-get0(Lcom/samsung/android/settings/ResetSettingsConfirm;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iget-object v3, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    iput-object v4, v3, Lcom/samsung/android/settings/ResetSettingsConfirm;->progressDialog:Landroid/app/ProgressDialog;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-set0(Lcom/samsung/android/settings/ResetSettingsConfirm;Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/ResetSettingsConfirm$1;->this$0:Lcom/samsung/android/settings/ResetSettingsConfirm;

    invoke-static {v3}, Lcom/samsung/android/settings/ResetSettingsConfirm;->-get1(Lcom/samsung/android/settings/ResetSettingsConfirm;)Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/ResetSettingsConfirm$1$1;-><init>(Lcom/samsung/android/settings/ResetSettingsConfirm$1;Landroid/content/Context;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_2
    return-void
.end method
