.class public Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;
.super Landroid/app/DialogFragment;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;
    }
.end annotation


# instance fields
.field private listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeviceNameScrollView:Landroid/widget/ScrollView;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorTextView:Landroid/widget/TextView;

.field private mResetTextAction:Z

.field private mTempName:Ljava/lang/String;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/ScrollView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mErrorTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mResetTextAction:Z

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mResetTextAction:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mTempName:Ljava/lang/String;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mTempName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mResetTextAction:Z

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_name"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "new_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mTempName:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    const v6, 0x7f1102aa

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ScrollView;

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mDeviceNameScrollView:Landroid/widget/ScrollView;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    const v6, 0x7f1102ad

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mErrorTextView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mErrorTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    const v6, 0x7f1102ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-array v6, v9, [Landroid/text/InputFilter;

    new-instance v7, Lcom/android/settings/Utils$EmojiInputFilter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->selectAll()V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$2;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v6, "disableAutoReplacement=true"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    const-string/jumbo v6, "disableEmoticonInput=true"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->getInputExtras(Z)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "maxLength"

    const/16 v6, 0x20

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->showInputMethod()V

    return-void

    :cond_2
    move-object v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "DeviceNameSettings"

    const-string/jumbo v6, "Caught Exception setSelection"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static newInstance(I)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;
    .locals 3

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static newInstance(ILjava/lang/String;)Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;
    .locals 3

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "new_name"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private showInputMethod()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$3;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$4;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->saveToDb()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.settings.DEVICE_NAME_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;->onPositiveClick()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;->onNegativeClick()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0f02ca

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400c8

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->initView(Landroid/view/View;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0424

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$1;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    const-string/jumbo v1, "DeviceNameSettings"

    const-string/jumbo v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    invoke-interface {v1}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;->onDismiss()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->showInputMethod()V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$5;-><init>(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method saveToDb()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public setConfirmationDialogFragmentListener(Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings;->listener:Lcom/samsung/android/settings/deviceinfo/DeviceNameSettings$ConfirmationDialogFragmentListener;

    return-void
.end method
