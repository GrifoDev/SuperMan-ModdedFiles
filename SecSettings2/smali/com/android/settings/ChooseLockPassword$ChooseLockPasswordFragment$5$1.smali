.class Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get4(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get6(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get4(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/inputmethodservice/KeyboardView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/inputmethodservice/KeyboardView;->setKeepScreenOn(Z)V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5$1;->this$2:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;

    iget-object v2, v2, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$5;->this$1:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->-get5(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChooseLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registe::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
