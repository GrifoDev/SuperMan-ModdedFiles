.class Lcom/samsung/android/settings/AssistantMenuEnabler$1;
.super Ljava/lang/Object;
.source "AssistantMenuEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/AssistantMenuEnabler;->showExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.assistantmenu"

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    iget-object v2, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v2}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get0(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/AssistantMenuEnabler;->option_flag:I

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/AssistantMenuEnabler;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-wrap0(Lcom/samsung/android/settings/AssistantMenuEnabler;)V

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get0(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get0(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/samsung/android/settings/AssistantMenuEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/AssistantMenuEnabler;->-get1(Lcom/samsung/android/settings/AssistantMenuEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
