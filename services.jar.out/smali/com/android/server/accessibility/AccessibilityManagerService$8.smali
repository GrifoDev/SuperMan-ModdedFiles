.class Lcom/android/server/accessibility/AccessibilityManagerService$8;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->semOnLightNotification(Ljava/lang/String;)Z
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

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-wrap31(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get0()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-set1(Z)Z

    const-string/jumbo v0, "AccessibilityManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Screen blinked, bIsScreenOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get4()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
