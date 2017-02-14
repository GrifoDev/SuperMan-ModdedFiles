.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->verifyPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v3, 0x291c

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-get0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$8;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-get0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
