.class Lcom/android/server/usb/UsbHostRestrictor$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbHostRestrictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostRestrictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostRestrictor;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostRestrictor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver Receiver onReceive"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "com.samsung.android.knox.intent.action.UPDATE_ALLOW_USB_HOST_STORAGE_STATE_INTERNAL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "reason"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver : reason - ALLOW"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/server/usb/UsbHostRestrictor;->-set0(Z)Z

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap1(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap0(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap2(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "OFF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver USB is already UNBLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap2(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ON_ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap10(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap0(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-ne v2, v8, :cond_7

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver : reason - DISALLOW"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/android/server/usb/UsbHostRestrictor;->-set0(Z)Z

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap1(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap0(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap2(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ON_ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "ON_HOST_MDM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver BLOCK USB HOST"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap10(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver Cannot write for USB HOST DISABLE"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver : reason - INIT"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-get1(Lcom/android/server/usb/UsbHostRestrictor;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "enterprise_policy_new"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v7}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->-get0()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "mUsbHostRestrictionReceiver : reason - INIT - UNBLOCK USB HOST"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/server/usb/UsbHostRestrictor;->-set0(Z)Z

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap1(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap0(Lcom/android/server/usb/UsbHostRestrictor;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap2(Lcom/android/server/usb/UsbHostRestrictor;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ON_ALL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver USB ALL is already BLOCKED"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "OFF"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver UNBLOCK USB HOST"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/usb/UsbHostRestrictor$2;->this$0:Lcom/android/server/usb/UsbHostRestrictor;

    invoke-static {v5, v4}, Lcom/android/server/usb/UsbHostRestrictor;->-wrap10(Lcom/android/server/usb/UsbHostRestrictor;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver Cannot write for USB HOST ENABLE"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver : reason - INIT - Ignore bacuese of Multi admin policy or same value as previos"

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "UsbHostRestrictor"

    const-string/jumbo v6, "UsbHostRestrictionReceiver reason is unknown."

    invoke-static {v5, v6}, Lcom/android/server/utils/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
