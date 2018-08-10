.class Lcom/android/systemui/power/PowerNotificationWarnings$4;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
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

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$4;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get7(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    return-void
.end method
