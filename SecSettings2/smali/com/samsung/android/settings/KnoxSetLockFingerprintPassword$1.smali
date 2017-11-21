.class Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get1(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0708

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$1;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v0}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get2(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
