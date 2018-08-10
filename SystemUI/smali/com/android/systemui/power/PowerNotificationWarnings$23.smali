.class Lcom/android/systemui/power/PowerNotificationWarnings$23;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set11(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get8(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get8(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get11(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$23;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get11(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    return-void
.end method
