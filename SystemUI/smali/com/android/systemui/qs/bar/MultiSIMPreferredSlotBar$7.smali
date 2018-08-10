.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;
.super Landroid/os/Handler;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const-string/jumbo v3, "MultiSIMPreferredSlotBar"

    const-string/jumbo v4, "MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
