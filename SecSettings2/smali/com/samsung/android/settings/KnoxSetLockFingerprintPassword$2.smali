.class Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get3(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-wrap0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b0708

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$2;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-wrap2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
