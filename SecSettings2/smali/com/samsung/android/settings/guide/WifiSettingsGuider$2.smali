.class Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$2;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method
