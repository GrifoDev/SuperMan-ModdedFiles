.class Lcom/samsung/android/settings/NewModePreview$8;
.super Landroid/database/ContentObserver;
.source "NewModePreview.java"


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
.method constructor <init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$8;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview$8;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/NewModePreview;->-get2(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview$8;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v1}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sec_display_temperature_green"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method
