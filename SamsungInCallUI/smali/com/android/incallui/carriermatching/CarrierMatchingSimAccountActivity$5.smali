.class Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$000(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCancel()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity$5;->this$0:Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;

    invoke-static {v0}, Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;->access$300(Lcom/android/incallui/carriermatching/CarrierMatchingSimAccountActivity;)V

    return-void
.end method
