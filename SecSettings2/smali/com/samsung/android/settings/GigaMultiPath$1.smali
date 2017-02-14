.class Lcom/samsung/android/settings/GigaMultiPath$1;
.super Landroid/database/ContentObserver;
.source "GigaMultiPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/GigaMultiPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get3(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap1(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-wrap2(Lcom/samsung/android/settings/GigaMultiPath;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$1;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get3(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method
