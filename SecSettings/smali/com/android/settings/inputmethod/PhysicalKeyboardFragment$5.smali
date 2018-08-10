.class Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;
.super Landroid/os/Handler;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-virtual {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-wrap3(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    const-string/jumbo v4, "PhysicalKeyboard"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$5;->this$0:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;

    invoke-static {v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->-get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
