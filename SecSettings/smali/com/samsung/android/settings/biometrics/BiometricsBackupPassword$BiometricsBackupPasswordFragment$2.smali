.class Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;
.super Ljava/lang/Object;
.source "BiometricsBackupPassword.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->-get2(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->-get2(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->-get3(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->-get3(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f12105d

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment$2;->this$1:Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;->-get0(Lcom/samsung/android/settings/biometrics/BiometricsBackupPassword$BiometricsBackupPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-object v5
.end method
