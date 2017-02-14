.class Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;
.super Landroid/database/ContentObserver;
.source "EasyMuteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/EasyMuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyMuteSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/EasyMuteController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/EasyMuteController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v1}, Lcom/android/server/notification/EasyMuteController;->-get1(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "master_motion"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v3}, Lcom/android/server/notification/EasyMuteController;->-get1(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "master_motion"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v3}, Lcom/android/server/notification/EasyMuteController;->-get1(Lcom/android/server/notification/EasyMuteController;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "motion_overturn"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/server/notification/EasyMuteController$EasyMuteSettingObserver;->this$0:Lcom/android/server/notification/EasyMuteController;

    invoke-static {v2, v0, v1}, Lcom/android/server/notification/EasyMuteController;->-wrap0(Lcom/android/server/notification/EasyMuteController;ZZ)V

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
