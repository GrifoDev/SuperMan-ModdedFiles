.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->setPasswordLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    iget-object v1, v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$5;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get1(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
