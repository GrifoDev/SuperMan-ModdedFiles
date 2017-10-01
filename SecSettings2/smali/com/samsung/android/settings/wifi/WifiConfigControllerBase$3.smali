.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 9

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v6, 0xd

    if-le v2, v6, :cond_2

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_3

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_6

    :cond_0
    const/16 v6, 0xd

    if-le v2, v6, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    const/16 v6, 0x1a

    if-le v2, v6, :cond_5

    if-eqz v1, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0c88

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0c88

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    const/16 v4, 0xc8

    :goto_2
    if-le v2, v4, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const v7, 0x7f0b0c88

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d020d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x40

    goto :goto_2

    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v6, v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v7, v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0113

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1
.end method
