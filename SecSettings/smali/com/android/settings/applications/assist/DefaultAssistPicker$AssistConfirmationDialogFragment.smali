.class public Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DefaultAssistPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/DefaultAssistPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AssistConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;
    .locals 3

    new-instance v1, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;

    invoke-direct {v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "extra_key"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "extra_message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "extra_title"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    return-object v1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x317

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/applications/assist/DefaultAssistPicker;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lcom/android/settings/applications/assist/DefaultAssistPicker;

    const-string/jumbo v3, "extra_key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->-wrap0(Lcom/android/settings/applications/assist/DefaultAssistPicker;Ljava/lang/String;)V

    check-cast v1, Lcom/android/settings/applications/assist/DefaultAssistPicker;

    invoke-virtual {v1}, Lcom/android/settings/applications/assist/DefaultAssistPicker;->sendSALogging()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v3, "extra_title"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "extra_message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120110

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment$1;-><init>(Lcom/android/settings/applications/assist/DefaultAssistPicker$AssistConfirmationDialogFragment;)V

    const v4, 0x7f12086a

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method
