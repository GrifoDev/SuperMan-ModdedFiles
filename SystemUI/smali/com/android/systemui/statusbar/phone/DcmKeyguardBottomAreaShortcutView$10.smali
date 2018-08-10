.class Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;
.super Landroid/content/BroadcastReceiver;
.source "DcmKeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x12cd

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "spcnt"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v3, v1}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap4(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DcmKeyguardBottomAreaShortcutView"

    const-string/jumbo v4, "KeyguardBottomAreaView.onReceive() : BOOT_COMPLETED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->-wrap1(Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;)V

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DcmKeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "recieve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " via BroadcastReceiver, update Shortcuts"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView$10;->this$0:Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/DcmKeyguardBottomAreaShortcutView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
