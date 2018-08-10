.class Lcom/samsung/android/settings/NewModePreview$15;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/NewModePreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewModePreview;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-get6(Lcom/samsung/android/settings/NewModePreview;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sec_display_temperature_blue"

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int/lit8 v2, v2, -0xb

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewModePreview;->-set1(Lcom/samsung/android/settings/NewModePreview;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/settings/NewModePreview;->-set1(Lcom/samsung/android/settings/NewModePreview;Z)Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v0, v1, -0xb

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_blue"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b042f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/NewModePreview;->-set4(I)I

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$15;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/settings/NewModePreview;->-get12()I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method
