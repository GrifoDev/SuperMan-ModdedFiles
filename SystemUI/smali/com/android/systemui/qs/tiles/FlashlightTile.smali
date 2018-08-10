.class public Lcom/android/systemui/qs/tiles/FlashlightTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "FlashlightTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/FlashlightTile$1;,
        Lcom/android/systemui/qs/tiles/FlashlightTile$2;,
        Lcom/android/systemui/qs/tiles/FlashlightTile$3;,
        Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
        "<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;"
    }
.end annotation


# static fields
.field private static final ACTION_FLASHLIGHT_CONTROL:Ljava/lang/String; = "com.samsung.intent.action.BGA_FLASHLIGHT"

.field private static final ACTION_FLASHLIGHT_OFF:Ljava/lang/String; = "com.sec.android.systemui.action.FLASHLIGHT_OFF"

.field private static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final CRITICAL_LOW_BATTERY_THRESHOLD:I = 0x5

.field private static final DB_FLASHLIGHT_SOS_ON:Ljava/lang/String; = "flashlight_sos_enabled"

.field private static final FLASHLIGHT_NOTI:Ljava/lang/String; = "Flashlight"

.field private static final PERMISSION_FLASGHLIGHT_CONTROL:Ljava/lang/String; = "com.samsung.systemui.permission.FLASHLIGHT_CONTROL"

.field private static final TORCH_ON_NOTIFICATION:I = 0x1234


# instance fields
.field private final mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

.field private final mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/qs/tileimpl/QSTileImpl",
            "<",
            "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
            ">.AnimationIcon;"
        }
    .end annotation
.end field

.field private final mFeatureEnabled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureObserver:Landroid/database/ContentObserver;

.field private final mFlashlightControlReceiver:Landroid/content/BroadcastReceiver;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private mIsLowBattery:Z

.field private mListening:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/FlashlightTile;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/qs/tiles/FlashlightTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/qs/tiles/FlashlightTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/qs/tiles/FlashlightTile;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/FlashlightTile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showItPolicyToast()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/tiles/FlashlightTile;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/qs/tiles/FlashlightTile;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotiifcaton(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080513

    const v5, 0x7f080523

    invoke-direct {v2, p0, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    const v4, 0x7f080507

    const v5, 0x7f080512

    invoke-direct {v2, p0, v4, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileImpl;II)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    iput-boolean v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    new-instance v2, Lcom/android/systemui/qs/tiles/FlashlightTile$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$1;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/qs/tiles/FlashlightTile$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/FlashlightTile$2;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightControlReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lcom/android/systemui/qs/tiles/FlashlightTile$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/tiles/FlashlightTile$3;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureObserver:Landroid/database/ContentObserver;

    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v2, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    new-instance v2, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-direct {v2, p0, v6}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/FlashlightTile;Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;)V

    iput-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotiifcaton(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FLASHLIGHT_CONTROL:Z

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.intent.action.BGA_FLASHLIGHT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightControlReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "com.samsung.systemui.permission.FLASHLIGHT_CONTROL"

    invoke-virtual {v2, v3, v1, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method private addFeature()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string/jumbo v0, "flashlight_sos_enabled"

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature(Ljava/lang/String;)V

    return-void
.end method

.method private addFeature(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " addFeature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureEnabled:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x2

    invoke-static {v3, p1, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private showWarningMessage(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateFlashlightNotiifcaton(Z)V
    .locals 11

    const/16 v10, 0x1234

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "emergency_mode"

    const/4 v7, -0x2

    invoke-static {v5, v6, v8, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v9, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "notifyNotification!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cancelNotification due to Emergency Mode!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "Flashlight"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v10, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.sec.android.systemui.action.FLASHLIGHT_OFF"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const/high16 v6, 0x8000000

    invoke-static {v5, v8, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1203b2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    invoke-direct {v2, v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0805cf

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1203b1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v8, v6, v4}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "Flashlight"

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_1
    return-void

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "cancelNotification!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mNotiManager:Landroid/app/NotificationManager;

    const-string/jumbo v6, "Flashlight"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v10, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x77

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f120a37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isCameraManagerReady()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "CameraManager is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->updateTorchCallback()V

    :cond_0
    const-class v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v1}, Lcom/android/systemui/KnoxStateMonitor;->isFlashlightTileBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showItPolicyToast()V

    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v4, 0x7f120a37

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f120b5d

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v2, 0x7f1203b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/lit8 v0, v1, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method

.method protected handleDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FLASHLIGHT_CONTROL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightControlReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFeatureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method protected handleLongClick()V
    .locals 0

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v3, 0x7f120a37

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120b5d

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mIsLowBattery:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mContext:Landroid/content/Context;

    const v1, 0x7f1203b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showWarningMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->showDetail(Z)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v3}, Lcom/android/systemui/qs/QSHost;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120a37

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    instance-of v3, p2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-ne v1, v3, :cond_0

    return-void

    :cond_0
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    :goto_0
    iput-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    :cond_1
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FLASHLIGHT_UNAVAILABLE_TO_OFF_STATE:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isAvailable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    const v2, 0x7f080512

    invoke-static {v2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    :goto_1
    const-class v2, Landroid/widget/Switch;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController;->isEnabled()Z

    move-result v3

    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mEnable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    :goto_2
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDisable:Lcom/android/systemui/qs/tileimpl/QSTileImpl$AnimationIcon;

    goto :goto_2
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->addFeature()V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->hasFlashlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->getTileSpec()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSHost;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeCurrentStateToString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method protected makeStringToCurrentState(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeStringToCurrentState // state value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " date value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const-string/jumbo v1, "1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->handleClick()V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public onFlashlightAvailabilityChanged(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotiifcaton(Z)V

    :cond_0
    return-void
.end method

.method public onFlashlightChanged(Z)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->updateFlashlightNotiifcaton(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile;->fireToggleStateChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/FlashlightTile$FlashlightDetailAdapter;->updateDetailView(Z)V

    :cond_0
    return-void
.end method

.method public onFlashlightError()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FlashlightTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FlashlightTile;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/FlashlightController;->tryInitCamera()V

    :cond_0
    return-void
.end method
