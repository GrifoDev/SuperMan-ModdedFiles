.class Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set1(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v7, -0x1

    const/16 v6, 0x20

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get4(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    return-void

    :cond_0
    const-string/jumbo v1, ""

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, ""

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get3(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v6, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get3(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get3(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get1(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/ScrollView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1$1;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1, v4}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;->this$0:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->-get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method
