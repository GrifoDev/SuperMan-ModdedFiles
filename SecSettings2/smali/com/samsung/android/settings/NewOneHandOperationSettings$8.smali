.class Lcom/samsung/android/settings/NewOneHandOperationSettings$8;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "any_screen_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-get3(Lcom/samsung/android/settings/NewOneHandOperationSettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "any_screen_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/samsung/android/settings/NewOneHandOperationSettings;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewOneHandOperationSettings;->-wrap1(Lcom/samsung/android/settings/NewOneHandOperationSettings;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
