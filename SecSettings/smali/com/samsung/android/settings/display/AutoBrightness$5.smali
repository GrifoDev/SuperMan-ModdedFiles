.class Lcom/samsung/android/settings/display/AutoBrightness$5;
.super Ljava/lang/Object;
.source "AutoBrightness.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/AutoBrightness;->showResetPatternDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$5;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$5;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/AutoBrightness$5;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/AutoBrightness;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$5;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->-get2(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->resetPersonalAutoBrightnessData()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.action.RESET_BRIGHTNESS_USAGE_PATTERN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$5;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
