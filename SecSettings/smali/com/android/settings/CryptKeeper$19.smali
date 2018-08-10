.class Lcom/android/settings/CryptKeeper$19;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->preparePasswordEntry(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get13(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get11(Lcom/android/settings/CryptKeeper;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get14(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f0803fb

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get13(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v2

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->-set4(Lcom/android/settings/CryptKeeper;Z)Z

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get13(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get14(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageButton;

    move-result-object v2

    const v3, 0x7f0803fc

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get13(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/settings/CryptKeeper;->-set4(Lcom/android/settings/CryptKeeper;Z)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    goto :goto_1
.end method
