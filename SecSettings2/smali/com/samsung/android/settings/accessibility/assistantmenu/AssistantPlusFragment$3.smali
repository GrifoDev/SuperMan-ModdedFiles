.class Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;
.super Landroid/os/Handler;
.source "AssistantPlusFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set3(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get9(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    sget-object v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[c] Oncreate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "aplication status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get3(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get1(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-get3(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
