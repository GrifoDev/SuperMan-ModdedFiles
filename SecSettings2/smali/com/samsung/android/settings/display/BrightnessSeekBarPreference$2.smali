.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;
.super Landroid/database/ContentObserver;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-set1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPersonalAutoBrightness()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-get0(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$2;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->onBrightnessChanged()V

    goto :goto_0
.end method
