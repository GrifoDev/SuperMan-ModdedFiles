.class Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$700(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$4;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$100(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setFocusable(Z)V

    :cond_0
    return-void
.end method
