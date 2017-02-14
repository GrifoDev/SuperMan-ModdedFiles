.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->setPasswordLayout()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$4;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v1, v1, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
