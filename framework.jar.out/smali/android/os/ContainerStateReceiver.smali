.class public Landroid/os/ContainerStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ContainerStateReceiver.java"


# static fields
.field public static ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String; = null

.field public static final CONTAINER_EVENT_ADMIN_LOCKED:I = 0x10

.field public static final CONTAINER_EVENT_ADMIN_UNLOCKED:I = 0x11

.field public static final CONTAINER_EVENT_CREATED:I = 0x0

.field public static final CONTAINER_EVENT_ENABLED:I = 0x12

.field public static final CONTAINER_EVENT_LICENSE_ACTIVATED:I = 0xb

.field public static final CONTAINER_EVENT_LICENSE_EXPIRED:I = 0xc

.field public static final CONTAINER_EVENT_LOCKED:I = 0x4

.field public static final CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED:I = 0xf

.field public static final CONTAINER_EVENT_REMOVED:I = 0xa

.field public static final CONTAINER_EVENT_RESET:I = 0x9

.field public static final CONTAINER_EVENT_RUNNING:I = 0x1

.field public static final CONTAINER_EVENT_SHUTDOWN:I = 0x2

.field public static final CONTAINER_EVENT_SWITCH:I = 0x3

.field public static final CONTAINER_EVENT_UNLOCKED:I = 0x5

.field private static DEBUG:Z = false

.field public static final DEVICE_EVENT_OWNER_ACTIVATED:I = 0xd

.field public static final DEVICE_EVENT_OWNER_LICENSE_ACTIVATED:I = 0xe

.field public static EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

.field public static EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

.field public static EXTRA_CONTIANER_ID:Ljava/lang/String;

.field public static EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

.field public static EXTRA_USER_INFO:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ContainerStateReceiver"

    sput-object v0, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/ContainerStateReceiver;->DEBUG:Z

    const-string/jumbo v0, "com.samsung.android.knox.ACTION_CONTAINER_STATE_RECEIVER"

    sput-object v0, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.EXTRA_CONTIANER_ID"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.EXTRA_CONTIANER_EVENT_ID"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.EXTRA_LOCKSCREEN_VISIBLE"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.EXTRA_CONTIANER_CONFIGURATION_TYPE"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_CONFIGURATION_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "com.samsung.knox.EXTRA_USER_INFO"

    sput-object v0, Landroid/os/ContainerStateReceiver;->EXTRA_USER_INFO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static toEventString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "CONTAINER_EVENT_UNKNOWN"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "CONTAINER_EVENT_CREATED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "CONTAINER_EVENT_RUNNING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "CONTAINER_EVENT_SHUTDOWN"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "CONTAINER_EVENT_SWITCH"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "CONTAINER_EVENT_LOCKED"

    return-object v0

    :pswitch_6
    const-string/jumbo v0, "CONTAINER_EVENT_UNLOCKED"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "CONTAINER_EVENT_RESET"

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "CONTAINER_EVENT_REMOVED"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "CONTAINER_EVENT_LICENSE_ACTIVATED"

    return-object v0

    :pswitch_a
    const-string/jumbo v0, "CONTAINER_EVENT_LICENSE_EXPIRED"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "DEVICE_EVENT_OWNER_ACTIVATED"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "DEVICE_EVENT_OWNER_LICENSE_ACTIVATED"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "CONTAINER_EVENT_LOCKSCREEN_STATE_CHANGED"

    return-object v0

    :pswitch_e
    const-string/jumbo v0, "CONTAINER_EVENT_ADMIN_LOCKED"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "CONTAINER_EVENT_ADMIN_UNLOCKED"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "CONTAINER_EVENT_ENABLED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public static unregister(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    sget-object v5, Landroid/os/ContainerStateReceiver;->ACTION_CONTAINER_STATE_RECEIVER:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v5, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_ID:Ljava/lang/String;

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroid/os/ContainerStateReceiver;->EXTRA_CONTIANER_EVENT_ID:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive failed to get UserInfo from handle:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/os/ContainerStateReceiver;->toEventString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v5, Landroid/os/ContainerStateReceiver;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "invalid event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerCreated(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerRunning(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerShutdown(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_4
    if-nez v4, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/os/ContainerStateReceiver;->onPersonalSwitch(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerSwitch(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerRemoved(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onLicenseActivated(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onLicenseExpired(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerReset(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0, p1, v0}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0, p1, v0}, Landroid/os/ContainerStateReceiver;->onDeviceOwnerLicenseActivated(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    sget-object v5, Landroid/os/ContainerStateReceiver;->EXTRA_LOCKSCREEN_VISIBLE:Ljava/lang/String;

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0, p1, v4, v5, v0}, Landroid/os/ContainerStateReceiver;->onLockScreenStateChanged(Landroid/content/Context;IZLandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerAdminLocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_f
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerAdminUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_10
    invoke-virtual {p0, p1, v4, v0}, Landroid/os/ContainerStateReceiver;->onContainerEnabled(Landroid/content/Context;ILandroid/os/Bundle;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
