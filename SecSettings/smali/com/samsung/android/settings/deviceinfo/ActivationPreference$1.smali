.class Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;
.super Landroid/text/style/ClickableSpan;
.source "ActivationPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->makeSummary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/ActivationPreference;

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/ActivationPreference;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;->this$0:Lcom/samsung/android/settings/deviceinfo/ActivationPreference;

    iput p2, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;->val$start:I

    iput p3, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;->val$end:I

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;->val$start:I

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/ActivationPreference$1;->val$end:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "https://support-cn.samsung.com/supportcn/Imei/default.aspx"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/ActivationPreference;->-get0()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
