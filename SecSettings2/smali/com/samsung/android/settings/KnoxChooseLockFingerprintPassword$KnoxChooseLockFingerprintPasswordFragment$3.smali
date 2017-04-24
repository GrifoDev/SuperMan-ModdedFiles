.class Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;
.super Ljava/lang/Object;
.source "KnoxChooseLockFingerprintPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get6(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get8(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get2(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0b11b7

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v4}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get8(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment$3;->this$1:Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;->-get1(Lcom/samsung/android/settings/KnoxChooseLockFingerprintPassword$KnoxChooseLockFingerprintPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v6

    :cond_1
    const v1, 0x7f0b11b8

    goto :goto_0
.end method
