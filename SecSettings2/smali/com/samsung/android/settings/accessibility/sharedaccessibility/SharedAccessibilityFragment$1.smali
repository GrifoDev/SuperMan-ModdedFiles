.class Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SharedAccessibilityFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isExternalMemoryAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment$1;->this$0:Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/sharedaccessibility/SharedAccessibilityFragment;)V

    goto :goto_0
.end method
