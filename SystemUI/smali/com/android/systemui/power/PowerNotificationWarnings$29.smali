.class Lcom/android/systemui/power/PowerNotificationWarnings$29;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showUnintentionalLcdOnPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

.field final synthetic val$component:Landroid/content/ComponentName;

.field final synthetic val$wmService:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/view/IWindowManager;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iput-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$wmService:Landroid/view/IWindowManager;

    iput-object p3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$component:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get10(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get10(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/SemStatusBarManager;->disable(I)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$wmService:Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$wmService:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->val$component:Landroid/content/ComponentName;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$29;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1, v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set10(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PowerUI.Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestSystemKeyEvent - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
