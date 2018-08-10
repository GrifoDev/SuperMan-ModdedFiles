.class Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu_eam_enable"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-set2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;->this$0:Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    return-void
.end method
