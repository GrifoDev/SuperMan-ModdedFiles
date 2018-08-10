.class Lcom/samsung/android/settings/AssistantMenuEnabler$1;
.super Ljava/lang/Object;
.source "AssistantMenuEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuEnabler;->showAccFeatureConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuEnabler;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get0(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu_do_not_show_confirm_popup"

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get0(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-wrap1(Lcom/samsung/android/settings/AssistantMenuEnabler;Landroid/content/Context;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
