.class final Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "RecentsSettingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsSettingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;-><init>(Lcom/android/systemui/recents/model/RecentsSettingHelper;)V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get1(Lcom/android/systemui/recents/model/RecentsSettingHelper;)I

    move-result v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1, p1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set3(Lcom/android/systemui/recents/model/RecentsSettingHelper;I)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get0(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "need_dark_font"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getSystemSetting(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-get2(Lcom/android/systemui/recents/model/RecentsSettingHelper;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/model/RecentsSettingHelper$UserSwitchObserver;->this$0:Lcom/android/systemui/recents/model/RecentsSettingHelper;

    invoke-static {v1, v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->-set4(Lcom/android/systemui/recents/model/RecentsSettingHelper;Z)Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/ui/InvertColorEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/ui/InvertColorEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->sendOntoMainThread(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLockedBootComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
