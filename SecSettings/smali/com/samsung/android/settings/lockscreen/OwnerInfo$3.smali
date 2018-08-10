.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v2, 0x20

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0
.end method
