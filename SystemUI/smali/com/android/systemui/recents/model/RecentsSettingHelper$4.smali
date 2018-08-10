.class Lcom/android/systemui/recents/model/RecentsSettingHelper$4;
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

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "emergency_mode"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get3(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$4;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set5(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/InvertColorEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/InvertColorEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
