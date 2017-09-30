.class Lcom/android/incallui/InVideoCallMenu$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InVideoCallMenu;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InVideoCallMenu;

.field final synthetic val$mDialogCheckbox:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/incallui/InVideoCallMenu;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InVideoCallMenu$2;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iput-object p2, p0, Lcom/android/incallui/InVideoCallMenu$2;->val$mDialogCheckbox:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$2;->this$0:Lcom/android/incallui/InVideoCallMenu;

    iget-object v0, v0, Lcom/android/incallui/InVideoCallMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "videoAlertShowNeverAgain"

    iget-object v0, p0, Lcom/android/incallui/InVideoCallMenu$2;->val$mDialogCheckbox:Landroid/view/View;

    check-cast v0, Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
