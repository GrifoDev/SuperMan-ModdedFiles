.class Lcom/samsung/android/settings/ModePreviewTablet$9;
.super Ljava/lang/Object;
.source "ModePreviewTablet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/ModePreviewTablet$9;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet$9;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet$9;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v1}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/ModePreviewTablet$9;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-static {v1}, Lcom/samsung/android/settings/ModePreviewTablet;->-get0(Lcom/samsung/android/settings/ModePreviewTablet;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/ModePreviewTablet$9;->this$0:Lcom/samsung/android/settings/ModePreviewTablet;

    invoke-virtual {v2}, Lcom/samsung/android/settings/ModePreviewTablet;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_mode_setting"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method
