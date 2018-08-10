.class Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;
.super Ljava/lang/Object;
.source "KnoxStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/KnoxStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SharedDeviceMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/KnoxStateMonitor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/KnoxStateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->this$0:Lcom/android/systemui/KnoxStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSharedDeviceStatus()I
    .locals 1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getSharedDeviceEnabled()I

    move-result v0

    return v0
.end method

.method public isLockScreenDisabledbyKNOX()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor$SharedDeviceMonitor;->getSharedDeviceStatus()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
