.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
.super Landroid/os/ResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SelectPhoneAccountListener"
.end annotation


# static fields
.field static final EXTRA_SELECTED_ACCOUNT_HANDLE:Ljava/lang/String; = "extra_selected_account_handle"

.field static final EXTRA_SET_DEFAULT:Ljava/lang/String; = "extra_set_default"

.field static final RESULT_DISMISSED:I = 0x2

.field static final RESULT_SELECTED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onDialogDismissed()V
    .locals 0

    return-void
.end method

.method public onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 0

    return-void
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "extra_selected_account_handle"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    const-string v1, "extra_set_default"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onDialogDismissed()V

    goto :goto_0
.end method
