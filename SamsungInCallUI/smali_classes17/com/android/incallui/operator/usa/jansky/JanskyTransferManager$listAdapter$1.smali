.class Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;
.super Ljava/lang/Object;
.source "JanskyTransferManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iput p2, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$800(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    iget v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    if-ne v1, v4, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    iget-object v3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v3, v3, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v3, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->deviceId:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1302(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v3, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$000(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyDeviceEntryList;->msisdn:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1202(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    iget v3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->val$position:I

    invoke-static {v1, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1402(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;I)I

    :goto_2
    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$600(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v3, v3, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v3}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$700(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$500(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    return-void

    :cond_2
    const-string v1, "JanskyTransferManager"

    const-string v3, "listAdapter onClick mDeviceEntry size check"

    invoke-static {v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1302(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter$1;->this$1:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager$listAdapter;->this$0:Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;

    invoke-static {v1, v5}, Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;->access$1202(Lcom/android/incallui/operator/usa/jansky/JanskyTransferManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method
