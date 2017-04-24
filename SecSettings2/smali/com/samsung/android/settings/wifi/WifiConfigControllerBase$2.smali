.class Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->-set0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x20

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const-string/jumbo v5, "inputType=PredictionOff;disableEmoticonInput=true"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->-get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->-get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v6, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->-get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v6, :cond_0

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    sub-int v5, v0, v2

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const-string/jumbo v5, "inputType=PredictionOff;disableEmoticonInput=true;defaultInputmode=english"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    const v5, 0x7f0b0c6f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d020d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->-get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v4, v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;

    iget-object v5, v5, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0113

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method
