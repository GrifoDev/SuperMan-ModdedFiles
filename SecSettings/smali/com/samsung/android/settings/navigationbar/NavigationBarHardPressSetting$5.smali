.class Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;
.super Landroid/content/BroadcastReceiver;
.source "NavigationBarHardPressSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "NavigationBarHardPressSetting"

    const-string/jumbo v1, "mScreenMirroringReceiver() onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting$5;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;

    invoke-static {v0, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;->-wrap3(Lcom/samsung/android/settings/navigationbar/NavigationBarHardPressSetting;Landroid/content/Intent;)V

    return-void
.end method
