.class Lcom/android/launcher2/searchapp/SearchAppListFragment$17;
.super Landroid/database/ContentObserver;
.source "SearchAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-virtual {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "show_button_background"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f02001b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$17;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAddButton:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$300(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f020018

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method
