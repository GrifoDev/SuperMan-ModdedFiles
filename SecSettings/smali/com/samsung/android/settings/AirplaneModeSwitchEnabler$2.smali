.class Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneModeSwitchEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler$2;->this$0:Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;->-wrap0(Lcom/samsung/android/settings/AirplaneModeSwitchEnabler;)V

    return-void
.end method
