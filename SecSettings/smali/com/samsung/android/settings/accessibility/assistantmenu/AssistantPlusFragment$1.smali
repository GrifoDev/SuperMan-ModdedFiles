.class Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.action.AMSERVICE_STOP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    :cond_1
    return-void
.end method
