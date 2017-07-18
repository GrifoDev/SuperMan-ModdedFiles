.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenameTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8

    const/16 v7, 0x20

    const/4 v4, 0x0

    const-string/jumbo v5, "DeviceProfilesSettings"

    const-string/jumbo v6, "afterTextChanged ::"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get1(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v7, :cond_3

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v6

    if-lez v6, :cond_2

    if-eq v2, v3, :cond_2

    iget-object v6, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v6}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get5(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    :goto_1
    invoke-static {v5, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get9(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v5}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get9(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string/jumbo v0, "DeviceProfilesSettings"

    const-string/jumbo v1, "beforeTextChanged ::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    const-string/jumbo v1, "DeviceProfilesSettings"

    const-string/jumbo v2, "onTextChanged ::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get10(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1, v4}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-set2(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Z)Z

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, v1, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v2, v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d020d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0e2e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get6(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0113

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$RenameTextWatcher;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->-get7(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
