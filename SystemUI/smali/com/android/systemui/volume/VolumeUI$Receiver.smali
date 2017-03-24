.class final Lcom/android/systemui/volume/VolumeUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/VolumeUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeUI;Lcom/android/systemui/volume/VolumeUI$Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeUI$Receiver;-><init>(Lcom/android/systemui/volume/VolumeUI;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "com.android.systemui.PREF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "key"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "value"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/systemui/Prefs;->remove(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v5, v3, v6}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v3, v6}, Lcom/android/systemui/Prefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v5, v5, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v3, v6, v7}, Lcom/android/systemui/Prefs;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "component"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ServiceMonitor;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    const-string/jumbo v5, "com.android.systemui.vui.ENABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_5

    if-nez v2, :cond_5

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5, v1}, Lcom/android/systemui/volume/VolumeUI;->-wrap3(Lcom/android/systemui/volume/VolumeUI;Landroid/content/ComponentName;)V

    :cond_5
    const-string/jumbo v5, "com.android.systemui.vui.DISABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v5}, Lcom/android/systemui/volume/VolumeUI;->-get4(Lcom/android/systemui/volume/VolumeUI;)Lcom/android/systemui/statusbar/ServiceMonitor;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/ServiceMonitor;->setComponent(Landroid/content/ComponentName;)V

    :cond_6
    return-void

    :cond_7
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public start()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.android.systemui.vui.ENABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.vui.DISABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.android.systemui.PREF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    iget-object v1, v1, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/volume/VolumeUI$Receiver;->this$0:Lcom/android/systemui/volume/VolumeUI;

    invoke-static {v2}, Lcom/android/systemui/volume/VolumeUI;->-get1(Lcom/android/systemui/volume/VolumeUI;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
