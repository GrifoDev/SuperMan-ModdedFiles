.class Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;
.super Ljava/lang/Object;
.source "RecentsSettingHelper.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DesktopModeListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get5(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$DesktopModeListenerImpl;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v0, p1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set11(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DesktopModeChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/IconChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/IconChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void
.end method
