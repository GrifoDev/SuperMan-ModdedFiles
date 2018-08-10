.class Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;
.super Ljava/lang/Object;
.source "NotificationReminderEnabler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0383

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0387

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler$1;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;->-get1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderEnabler;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
