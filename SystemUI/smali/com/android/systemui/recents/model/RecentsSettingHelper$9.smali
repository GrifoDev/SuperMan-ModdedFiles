.class Lcom/android/systemui/recents/model/RecentsSettingHelper$9;
.super Landroid/database/ContentObserver;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$9;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set13(Lcom/android/systemui/recents/model/RecentsSettingHelper;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
