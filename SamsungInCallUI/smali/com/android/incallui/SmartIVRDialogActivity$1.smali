.class Lcom/android/incallui/SmartIVRDialogActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SmartIVRDialogActivity;->onSave(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SmartIVRDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SmartIVRDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SmartIVRDialogActivity$1;->this$0:Lcom/android/incallui/SmartIVRDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to remove item no clicked in the dialog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity$1;->this$0:Lcom/android/incallui/SmartIVRDialogActivity;

    iget-object v2, v2, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity$1;->this$0:Lcom/android/incallui/SmartIVRDialogActivity;

    invoke-virtual {v0, p3}, Lcom/android/incallui/SmartIVRDialogActivity;->removeSelected(I)V

    return-void
.end method
