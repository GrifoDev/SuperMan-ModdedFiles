.class Lcom/samsung/android/settings/SoftwareUpdateSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;->createBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$7;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "Software Update date is updated"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings$7;->this$0:Lcom/samsung/android/settings/SoftwareUpdateSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->-wrap7(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    return-void
.end method
