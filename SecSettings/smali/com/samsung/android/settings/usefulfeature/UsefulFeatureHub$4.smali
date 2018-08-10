.class Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;
.super Landroid/database/ContentObserver;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get3(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "multi_window_setting"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get4(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v3}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-wrap0(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub$4;->this$0:Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;->-get2(Lcom/samsung/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
