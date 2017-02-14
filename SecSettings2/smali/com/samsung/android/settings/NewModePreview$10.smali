.class Lcom/samsung/android/settings/NewModePreview$10;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/NewModePreview$10;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview$10;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v3}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview$10;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v3}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview$10;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-static {v3}, Lcom/samsung/android/settings/NewModePreview;->-get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview$10;->this$0:Lcom/samsung/android/settings/NewModePreview;

    invoke-virtual {v4}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_mode_setting"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1
.end method
