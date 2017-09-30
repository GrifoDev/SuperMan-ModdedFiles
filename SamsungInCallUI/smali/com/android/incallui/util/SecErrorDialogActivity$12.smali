.class Lcom/android/incallui/util/SecErrorDialogActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/SecErrorDialogActivity;->showOnWeakWifiDuringEpdgDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/SecErrorDialogActivity;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/SecErrorDialogActivity$12;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    iput-object p2, p0, Lcom/android/incallui/util/SecErrorDialogActivity$12;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$12;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$12;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onWeakWifiDuringEpdgShowNeverAgain"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/util/SecErrorDialogActivity$12;->this$0:Lcom/android/incallui/util/SecErrorDialogActivity;

    invoke-virtual {v0}, Lcom/android/incallui/util/SecErrorDialogActivity;->finish()V

    return-void
.end method
