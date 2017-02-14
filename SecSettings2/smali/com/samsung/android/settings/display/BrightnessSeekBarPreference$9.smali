.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->showBrightnessAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "shown_max_brightness_dialog"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v5}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-set0(Z)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-get7(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-get5(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-get6(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;)I

    move-result v4

    sub-int v0, v3, v4

    int-to-float v3, v0

    const/high16 v4, 0x42b40000    # 90.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$9;->this$0:Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;

    invoke-static {v3, v1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;->-wrap1(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;I)V

    return-void
.end method
