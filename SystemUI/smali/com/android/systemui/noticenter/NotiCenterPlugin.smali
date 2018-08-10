.class public Lcom/android/systemui/noticenter/NotiCenterPlugin;
.super Ljava/lang/Object;
.source "NotiCenterPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;
    }
.end annotation


# instance fields
.field private mIsNotiCenterConnected:Z

.field private mNotiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

.field private mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/noticenter/NotiCenterPlugin;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotificationPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;-><init>(Lcom/android/systemui/noticenter/NotiCenterPlugin;Lcom/android/systemui/noticenter/NotiCenterPlugin;)V

    iput-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mNotiCenterPluginListener:Lcom/android/systemui/noticenter/NotiCenterPlugin$NotiCenterPluginListener;

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/noticenter/NotiCenterPlugin;
    .locals 1

    const-class v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;

    return-object v0
.end method


# virtual methods
.method public getPlugin()Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-object v0
.end method

.method public isNotiCenterConnected()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mIsNotiCenterConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setIsNotiCenterConnected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mIsNotiCenterConnected:Z

    return-void
.end method

.method public setPlugin(Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->mPlugin:Lcom/samsung/systemui/splugins/noticenter/PluginNotiCenter;

    return-void
.end method
