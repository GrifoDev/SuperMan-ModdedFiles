.class Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->-get2(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/DisplayTemperatureSettings$1;->this$0:Lcom/samsung/android/settings/display/DisplayTemperatureSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSettings;->-wrap0(Lcom/samsung/android/settings/display/DisplayTemperatureSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_red"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/DisplayTemperatureSeekBarPreferenceRed;->setProgress(I)V

    return-void
.end method
