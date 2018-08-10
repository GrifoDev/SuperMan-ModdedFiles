.class Lcom/samsung/android/settings/AirplaneModeSettings$4;
.super Ljava/lang/Object;
.source "AirplaneModeSettings.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AirplaneModeSettings;->getImsManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AirplaneModeSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AirplaneModeSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSettings$4;->this$0:Lcom/samsung/android/settings/AirplaneModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 2

    const-string/jumbo v0, "AirplaneModeSettings"

    const-string/jumbo v1, "register IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSettings$4;->this$0:Lcom/samsung/android/settings/AirplaneModeSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/AirplaneModeSettings;->-set0(Lcom/samsung/android/settings/AirplaneModeSettings;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;

    const-string/jumbo v0, "AirplaneModeSettings"

    const-string/jumbo v1, "Deregister IMS Listener:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
