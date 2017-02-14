.class Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;
.super Ljava/lang/Object;
.source "KnoxSetLockFingerprintPassword.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get3(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get3(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-wrap0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-set0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Z)Z

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-get0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword$5;->this$0:Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;->-set0(Lcom/samsung/android/settings/KnoxSetLockFingerprintPassword;Z)Z

    goto :goto_0
.end method
