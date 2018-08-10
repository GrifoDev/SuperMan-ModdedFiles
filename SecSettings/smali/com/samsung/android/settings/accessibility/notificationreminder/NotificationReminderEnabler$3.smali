.class Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;
.super Ljava/lang/Object;
.source "NotificationReminderEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->showConfirmPopUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get3(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0383

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$3;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0385

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method
