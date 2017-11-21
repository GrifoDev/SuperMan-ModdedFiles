.class Lcom/android/settings/fingerprint/FingerprintUiHelper$1;
.super Ljava/lang/Object;
.source "FingerprintUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintUiHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->-get0(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintUiHelper$1;->this$0:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->-get1(Lcom/android/settings/fingerprint/FingerprintUiHelper;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
