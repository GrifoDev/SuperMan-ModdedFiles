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

.field public freezedReason:Ljava/lang/String;

.field public freezedTime:J

.field public hasAppIcon:Z

.field public isAREsTriggeredReason:I

.field public isActiveDeviceAdmin:Z

.field public isBoundAppWidget:Z

.field public isCocktailBar:Z

.field public isDataCleared:Z

.field public isDeviceAdmin:Z

.field public isForegroundService:Z

.field public isFreezed:Z

.field public isInBlackListTopActivity:Z

.field public isNotificationListener:Z

.field public isOngoingNotification:Z

.field public isRemovableAdmin:Z

.field public isReportedbyRestriction:Z

.field public isReportedbyTrigger:Z

.field public isSendPackageRestart:I

.field public isSpecialChinaApp:Z

.field public isSpecialChinaVideoApp:Z

.field public isVpn:Z

.field public lastUsedTime:J

.field public name:Ljava/lang/String;

.field public needUpdateTime:Z

.field public packageType:I

.field public resetTime:J

.field public restrictedFlag:I

.field public restrictionCnt:I

.field public restrictionCnt_Activity:I

.field public restrictionCnt_Broadcast:I

.field public restrictionCnt_Provider:I

.field public restrictionCnt_Service:I

.field public restrictionSkipCnt:I

.field public restrictionSkipCnt_Activity:I

.field public restrictionSkipCnt_Broadcast:I

.field public restrictionSkipCnt_Provider:I

.field public restrictionSkipCnt_Service:I

.field public runningWidgets:I

.field public sbike:I

.field public sharedUidName:Ljava/lang/String;

.field public skipReason:Ljava/lang/String;

.field public skipRestrictionReason:Ljava/lang/String;

.field public state:I

.field public triggerCnt:I

.field public triggerSkipCnt:I

.field public uds:I

.field public uid:I

.field public unfreezedReason:Ljava/lang/String;

.field public unfreezedTime:J

.field public userId:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJIILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iput-object p2, p0, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/am/MARsPackageStatus;->context:Landroid/content/Context;

    iput p6, p0, Lcom/android/server/am/MARsPackageStatus;->userId:I

    iput p7, p0, Lcom/android/server/am/MARsPackageStatus;->uid:I

    iput-object p8, p0, Lcom/android/server/am/MARsPackageStatus;->versionName:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/server/am/MARsPackageStatus;->sharedUidName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/MARsPackageStatus;->state:I

    iput-wide p4, p0, Lcom/android/server/am/MARsPackageStatus;->resetTime:J

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->needUpdateTime:Z

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictedFlag:I

    iput-object v0, p0, Lcom/android/server/am/MARsPackageStatus;->appliedPolicies:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->autorun:I

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->lastUsedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopTime:J

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->isSendPackageRestart:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isFreezed:Z

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->freezedTime:J

    iput-wide v2, p0, Lcom/android/server/am/MARsPackageStatus;->unfreezedTime:J

    iput-object v0, p0, Lcom/android/server/am/MARsPackageStatus;->freezedReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/MARsPackageStatus;->unfreezedReason:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->isAREsTriggeredReason:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->hasAppIcon:Z

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->runningWidgets:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isDeviceAdmin:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isRemovableAdmin:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isCocktailBar:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isInBlackListTopActivity:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isForegroundService:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isOngoingNotification:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isNotificationListener:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isBoundAppWidget:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isVpn:Z

    iput-object v0, p0, Lcom/android/server/am/MARsPackageStatus;->skipReason:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/MARsPackageStatus;->skipRestrictionReason:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaApp:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isSpecialChinaVideoApp:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MARsPackageStatus;->forceStopReason:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->triggerCnt:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->triggerSkipCnt:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Activity:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Provider:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Broadcast:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionCnt_Service:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Activity:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Provider:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Broadcast:I

    iput v1, p0, Lcom/android/server/am/MARsPackageStatus;->restrictionSkipCnt_Service:I

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyTrigger:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isReportedbyRestriction:Z

    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageStatus;->isDataCleared:Z

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
