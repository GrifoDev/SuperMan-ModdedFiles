.class Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;
.super Landroid/os/Handler;
.source "DisplayTemperatureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/DisplayTemperatureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->restoreSettings(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->-get2(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->updateSeekbar()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->-get1(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceGreen;->updateSeekbar()V

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$5;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->-get0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceBlue;->updateSeekbar()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
