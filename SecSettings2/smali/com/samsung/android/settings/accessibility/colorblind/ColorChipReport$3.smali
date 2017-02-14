.class Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;
.super Landroid/database/ContentObserver;
.source "ColorChipReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-wrap0(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->-get3(Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->setHasOptionsMenu(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport$3;->this$0:Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/colorblind/ColorChipReport;->checkColorBlindState()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method
