.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    const/16 v6, 0x20

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-le v5, v6, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-gt v5, v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0x20

    add-int v6, p2, p4

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v5, v6

    add-int v5, p2, p4

    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int v6, p2, p4

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_3

    move v0, p2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v3, :cond_0

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v5, v0, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v1, v5

    goto :goto_0

    :cond_0
    if-le v0, p2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v7, p2, p4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0b0e39

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    :goto_3
    return-void

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    add-int v6, p2, v3

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v7, p2, p4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_3
.end method
