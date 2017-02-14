.class Lcom/android/server/accessibility/AccessibilityManagerService$2;
.super Landroid/content/pm/IKnoxModeChangeObserver$Stub;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerKnoxModeChangeObserver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Landroid/content/pm/IKnoxModeChangeObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onKnoxModeChange(I)V
    .locals 4

    const-string/jumbo v1, "AccessibilityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onKnoxModeChange personaId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x64

    if-lt p1, v1, :cond_1

    const-string/jumbo v1, "AccessibilityManagerService"

    const-string/jumbo v2, "Current application is running in KNOX mode."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set4(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->checkUniversalSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v2, "KNOX_MODE_ENABLED_BROADCAST"

    invoke-virtual {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->sendKnoxModeEnabledBroadCast(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$2;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set4(Lcom/android/server/accessibility/AccessibilityManagerService;Z)Z

    goto :goto_0
.end method
