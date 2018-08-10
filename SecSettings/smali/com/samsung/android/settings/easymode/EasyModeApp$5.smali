.class Lcom/samsung/android/settings/easymode/EasyModeApp$5;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/easymode/EasyModeApp;->initSwitchBtn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/easymode/EasyModeApp;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v5}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01e8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap4(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "easy_mode_switch"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get7(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    const-string/jumbo v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onClick mPrevModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " mModeState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v6}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap1(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v2

    const-string/jumbo v4, "EasyModeApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isEasyLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get0(Lcom/samsung/android/settings/easymode/EasyModeApp;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap6(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    return-void

    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap2(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    :goto_0
    return-void

    :cond_1
    if-ne v3, v7, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap3(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_2
    if-ne v3, v7, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get5(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v2, :cond_3

    if-nez v0, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4, v8}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap5(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap7(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get6(Lcom/samsung/android/settings/easymode/EasyModeApp;)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-get5(Lcom/samsung/android/settings/easymode/EasyModeApp;)Z

    move-result v4

    if-eqz v4, :cond_5

    xor-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4, v7}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap5(Lcom/samsung/android/settings/easymode/EasyModeApp;Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-static {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->-wrap7(Lcom/samsung/android/settings/easymode/EasyModeApp;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/easymode/EasyModeApp$5;->this$0:Lcom/samsung/android/settings/easymode/EasyModeApp;

    invoke-virtual {v4}, Lcom/samsung/android/settings/easymode/EasyModeApp;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
