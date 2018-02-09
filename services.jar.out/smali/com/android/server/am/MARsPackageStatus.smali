.class public Lcom/android/server/am/MARsPackageStatus;
.super Ljava/lang/Object;
.source "MARsPackageStatus.java"


# static fields
.field public static final ACTION_PACKAGE_RESTARTED_DEFAULT:I = 0x0

.field public static final ACTION_PACKAGE_RESTARTED_NOSEND:I = 0x2

.field public static final ACTION_PACKAGE_RESTARTED_SEND:I = 0x1

.field public static final NOT_RESTRICTED:I = 0x0

.field public static final PACKAGE_STATE_RESTRICT_ALWAYS:I = 0x10

.field public static final PACKAGE_STATE_RESTRICT_AUTO:I = 0x2

.field public static final PACKAGE_STATE_RESTRICT_AUTO_EXPIRED:I = 0x8

.field public static final PACKAGE_STATE_RESTRICT_NO:I = 0x1

.field public static final PACKAGE_STATE_WILLBESET_RESTRICT_AUTO:I = 0x4

.field public static final REASON_ARES_TRIGGERED_DEFAULT:I = 0x0

.field public static final REASON_ARES_TRIGGERED_EMERGENCY_DEVELOPER:I = 0x2

.field public static final REASON_ARES_TRIGGERED_EMERGENCY_NORMAL:I = 0x1

.field public static final REASON_ARES_TRIGGERED_LCDON:I = 0x0

.field public static final RESTRICTED:I = 0x100


# instance fields
.field public appliedPolicies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsPolicyManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public autorun:I

.field public context:Landroid/content/Context;

.field public forceStopReason:I

.field public forceStopTime:J

.field public hasAppIcon:Z

.field public isAREsTriggeredReason:I

.field public isActiveDeviceAdmin:Z

.field public isAliveEmptyActivity:Z

.field public isCocktailBar:Z

.field public isDeviceAdmin:Z

.field public isInBlackListTopActivity:Z

.field public isRemovableAdmin:Z

.field public isSendPackageRestart:I

.field public isSpecialChinaApp:Z

.field public isSpecialChinaVideoApp:Z

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public packageType:I

.field public resetTime:J

.field public restrictedFlag:I

.field public runningWidgets:I

.field public sbike:I

.field public skipReason:Ljava/lang/String;

.field public state:I

.field public uds:I

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJII)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iput-object p2, p0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPackageStatus;->context:Landroid/content/Context;

    iput p6, p0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iput p7, p0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    iput p3, p0, Lcom/android/server/am/MARsPackageStatus;->state:I

    iput-wide p4, p0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isAliveEmptyActivity:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isInBlackListTopActivity:Z

    iput-object v1, p0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaApp:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaVideoApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    return-void
.end method

.method private isWidgetPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x480

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4
.end method
