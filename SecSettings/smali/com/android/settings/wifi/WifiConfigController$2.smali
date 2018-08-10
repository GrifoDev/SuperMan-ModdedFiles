.class Lcom/android/settings/wifi/WifiConfigController$2;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

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

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get1(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const-string/jumbo v6, "[0-9A-Fa-f]*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/16 v6, 0xd

    if-le v2, v6, :cond_1

    const/16 v6, 0x1a

    if-ne v2, v6, :cond_2

    move v3, v1

    :goto_0
    if-eqz v3, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    const/16 v6, 0xd

    if-le v2, v6, :cond_3

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0xd

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get2(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f12110f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0602a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/16 v6, 0x1a

    if-le v2, v6, :cond_4

    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x1a

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get2(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f12110f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0602a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get2(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get2(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get1(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_7

    const/16 v4, 0xc8

    :goto_2
    if-le v2, v4, :cond_8

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const v7, 0x7f12110f

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->-get3(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0602a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x40

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get4(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v6}, Lcom/android/settings/wifi/WifiConfigController;->-get5(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController$2;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-static {v7}, Lcom/android/settings/wifi/WifiConfigController;->-get3(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0600b5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/16 :goto_1
.end method
