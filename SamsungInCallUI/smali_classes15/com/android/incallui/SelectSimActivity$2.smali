.class Lcom/android/incallui/SelectSimActivity$2;
.super Ljava/lang/Object;
.source "SelectSimActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectSimActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectSimActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectSimActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SelectSimActivity;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$2;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-static {p2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isBoltSIM(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->isNetworkRoaming(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/incallui/SelectSimActivity$2;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v1}, Lcom/android/incallui/SelectSimActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09059d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v1, 0x1

    # setter for: Lcom/android/incallui/SelectSimActivity;->mIsSelected:Z
    invoke-static {v1}, Lcom/android/incallui/SelectSimActivity;->access$102(Z)Z

    .line 93
    iget-object v1, p0, Lcom/android/incallui/SelectSimActivity$2;->this$0:Lcom/android/incallui/SelectSimActivity;

    # getter for: Lcom/android/incallui/SelectSimActivity;->mAccountHandles:Ljava/util/List;
    invoke-static {v1}, Lcom/android/incallui/SelectSimActivity;->access$200(Lcom/android/incallui/SelectSimActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 94
    .local v0, "selectedAccountHandle":Landroid/telecom/PhoneAccountHandle;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/android/incallui/InCallPresenter;->handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V

    goto :goto_0
.end method
