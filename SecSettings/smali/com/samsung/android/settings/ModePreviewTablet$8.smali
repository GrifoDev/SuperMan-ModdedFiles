.class Lcom/samsung/android/settings/ModePreviewTablet$8;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/ModePreviewTablet;->showBluelightfilterDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/ModePreviewTablet;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/ModePreviewTablet;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "blue_light_filter"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v0, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x16

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_mode_automatic_setting"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v2}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/ModePreviewTablet;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v0}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_mode_setting"

    iget-object v3, p0, Lcom/samsung/android/settings/ModePreviewTablet$8;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v3}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
