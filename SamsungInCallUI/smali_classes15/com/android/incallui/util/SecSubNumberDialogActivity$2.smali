.class Lcom/android/incallui/util/SecSubNumberDialogActivity$2;
.super Ljava/lang/Object;
.source "SecSubNumberDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecSubNumberDialogActivity;->showItemDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecSubNumberDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "di"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 72
    # getter for: Lcom/android/incallui/util/SecSubNumberDialogActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInCallActivity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    # getter for: Lcom/android/incallui/util/SecSubNumberDialogActivity;->mSubIdList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->access$100(Lcom/android/incallui/util/SecSubNumberDialogActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    .local v1, "subId":I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    .line 75
    # getter for: Lcom/android/incallui/util/SecSubNumberDialogActivity;->mNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->access$200(Lcom/android/incallui/util/SecSubNumberDialogActivity;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 74
    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    if-lez v1, :cond_0

    .line 79
    const-string v2, "MultiSubCall"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v2, "subNumberId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    :cond_0
    const-string v2, "feature_multisim"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    const-string v2, "simSlot"

    iget-object v3, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    # getter for: Lcom/android/incallui/util/SecSubNumberDialogActivity;->mSimId:I
    invoke-static {v3}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->access$300(Lcom/android/incallui/util/SecSubNumberDialogActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-virtual {v2, v0}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->startActivity(Landroid/content/Intent;)V

    .line 86
    iget-object v2, p0, Lcom/android/incallui/util/SecSubNumberDialogActivity$2;->this$0:Lcom/android/incallui/util/SecSubNumberDialogActivity;

    invoke-virtual {v2}, Lcom/android/incallui/util/SecSubNumberDialogActivity;->finish()V

    .line 87
    return-void
.end method
