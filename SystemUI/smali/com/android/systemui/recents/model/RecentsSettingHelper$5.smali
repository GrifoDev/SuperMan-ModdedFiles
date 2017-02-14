.class Lcom/android/systemui/recents/model/RecentsSettingHelper$5;
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

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tap_to_icon"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$5;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2, v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set0(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/IconTraySettingChangedEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/IconTraySettingChangedEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
