.class Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;
.super Ljava/lang/Object;
.source "SmartBondingSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateReceived()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    iget-object v2, v2, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings$2;->this$0:Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;->-get0(Lcom/samsung/android/settings/smartbonding/SmartBondingSettings;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
