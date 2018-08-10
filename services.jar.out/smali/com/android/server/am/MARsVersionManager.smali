.class public Lcom/android/server/am/MARsVersionManager;
.super Ljava/lang/Object;
.source "MARsVersionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsVersionManager$AdjustRestriction;,
        Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;,
        Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;,
        Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;,
        Lcom/android/server/am/MARsVersionManager$PolicyInfo;
    }
.end annotation


# static fields
.field static final ADJUST_RESTRICTION_TYPE_ALLOW_CHINESE_APP:I = 0x1

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_ESSENTIAL_INTENT:I = 0x3

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_FOREGROUND_APP:I = 0x7

.field static final ADJUST_RESTRICTION_TYPE_ALLOW_VIDEO_CACHING_APP:I = 0x6

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_CHINESE_APP:I = 0x2

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_ESSENTIAL_INTENT:I = 0x4

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_FAKETOP_ACTIVITY:I = 0x8

.field static final ADJUST_RESTRICTION_TYPE_BLOCK_TOP_ACTIVITY:I = 0x5

.field static final TAG:Ljava/lang/String; = "MARsVersionManager"

.field static final mAdjustRestrictionDefault:[[Ljava/lang/String;

.field static final mAutoRunParameterDefault:[Ljava/lang/String;

.field static final mCurrentImportantDefault:[[Ljava/lang/String;

.field static final mExcludePackageDefault:[[Ljava/lang/String;

.field static final mMARsSettingsInfoDefault:[[Ljava/lang/String;

.field static final mPolicyInfoDefault:[[Ljava/lang/String;


# instance fields
.field DEBUG:Z

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field public mApplicationSizeIncreased:J

.field mContext:Landroid/content/Context;

.field public mExcludeTargetList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCurrentImportantMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mMARsSettingsInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mNotifiUpdatedCount:J

.field public mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field public mRestrictionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;"
        }
    .end annotation
.end field

.field public mTrafficAmount:J

.field public mTrafficInterval:J

.field mTrigger:Lcom/android/server/am/MARsTrigger;

.field public mUnusedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "marsversion"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1020171227"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "skipratio"

    aput-object v2, v1, v5

    const-string/jumbo v2, "90"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "killthreshold"

    aput-object v2, v1, v5

    const-string/jumbo v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "restrictionthreshold"

    aput-object v2, v1, v5

    const-string/jumbo v2, "100"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1"

    aput-object v2, v1, v6

    const-string/jumbo v2, "13"

    aput-object v2, v1, v7

    const-string/jumbo v2, "354255120"

    aput-object v2, v1, v8

    const-string/jumbo v2, "12"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "10"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "10"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "337379600"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "0"

    aput-object v2, v1, v6

    const-string/jumbo v2, "21"

    aput-object v2, v1, v7

    const-string/jumbo v2, "270272648"

    aput-object v2, v1, v8

    const-string/jumbo v2, "26"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "270272640"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "0"

    aput-object v2, v1, v6

    const-string/jumbo v2, "21"

    aput-object v2, v1, v7

    const-string/jumbo v2, "270272648"

    aput-object v2, v1, v8

    const-string/jumbo v2, "2"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "720"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "720"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "270272640"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v5

    const-string/jumbo v2, "0"

    aput-object v2, v1, v6

    const-string/jumbo v2, "25"

    aput-object v2, v1, v7

    const-string/jumbo v2, "270272648"

    aput-object v2, v1, v8

    const-string/jumbo v2, "2"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "5"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "270272640"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "15"

    aput-object v1, v0, v6

    const-string/jumbo v1, "300"

    aput-object v1, v0, v7

    const-string/jumbo v1, "1"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mAutoRunParameterDefault:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "24"

    aput-object v2, v1, v6

    const-string/jumbo v2, "contains"

    aput-object v2, v1, v7

    const-string/jumbo v2, ".cts."

    aput-object v2, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "24"

    aput-object v2, v1, v6

    const-string/jumbo v2, "endsWith"

    aput-object v2, v1, v7

    const-string/jumbo v2, ".cts"

    aput-object v2, v1, v8

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "24"

    aput-object v2, v1, v6

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "1"

    aput-object v2, v1, v6

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.android.app.shealth"

    aput-object v2, v1, v8

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "10"

    aput-object v2, v1, v6

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.aecmonitor"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "10"

    aput-object v2, v1, v6

    const-string/jumbo v2, "equals"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.salab.act"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    aput-object v2, v1, v5

    const-string/jumbo v2, "8000"

    aput-object v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "65529"

    aput-object v2, v1, v6

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "65527"

    aput-object v2, v1, v6

    aput-object v1, v0, v8

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "4"

    aput-object v2, v1, v5

    const-string/jumbo v2, "65529"

    aput-object v2, v1, v6

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v5

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v6

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "18284"

    aput-object v2, v1, v6

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v5

    const-string/jumbo v2, "20251"

    aput-object v2, v1, v6

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    const/16 v0, 0x2f

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.alipay.android.app"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.eg.android.AlipayGphone.IAlixPay"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.tencent.mobileqq"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.cmcc.sso"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "1"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.cmdm.rcs"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "block"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.baidu.netdisk_ss"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.android.cloudagent"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "2"

    aput-object v2, v1, v5

    const-string/jumbo v2, "block"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.samsung.android.opencalendar"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.accessory.service.action.ACCESSORY_SERVICE_CONNECTION_IND"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.accessory.action.SERVICE_CONNECTION_REQUESTED"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.accessory.device.action.REGISTER_AFTER_INSTALL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.samsung.accessory"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.accessory.action.REGISTER_AGENT"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.cocktail.action.COCKTAIL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.cocktail.v2.action.COCKTAIL"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.app.memo.EDGE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.wssnps"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_BACKUP_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_RESTORE_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.REQUEST_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x19

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    const-string/jumbo v2, "com.sec.android.easyMover"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.RESPONSE_VERIFY"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.android.intent.action.MEDIA_BUTTON"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.dictionary.SEARCH"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.dictionary.SEARCH_WORD"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.dictionary.CLOSE"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.contextaware.HEADSET_PLUG"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.android.app.music.chn"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.samsung.android.app.sreminder"

    aput-object v2, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.android.app.music"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.android.scloud"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.spp.push"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.sec.spp.RegistrationChangedAction"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x22

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.samsung.android.scloud"

    aput-object v2, v1, v7

    const-string/jumbo v2, "com.sec.spp.push"

    aput-object v2, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "tj9u972o46"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x23

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "3"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "equals"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.samsung.app.highlightvideo.Analyse"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x24

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "5"

    aput-object v2, v1, v5

    const-string/jumbo v2, "block"

    aput-object v2, v1, v6

    aput-object v4, v1, v7

    aput-object v4, v1, v8

    const-string/jumbo v2, "startsWith"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.and.games505.Terraria"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const/16 v2, 0x25

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.youku.phone"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sohu.sohuvideo"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.letv.android.client"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.qiyi.video"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x29

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "6"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.tencent.qqlive"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.sina.weibo"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "7"

    aput-object v2, v1, v5

    const-string/jumbo v2, "allow"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.tencent.mobileqq"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "8"

    aput-object v2, v1, v5

    const-string/jumbo v2, "block"

    aput-object v2, v1, v6

    const-string/jumbo v2, "com.igexin.sdk.GActivity"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsTrigger;Landroid/content/Context;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mTrafficInterval:J

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mUnusedTime:J

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsVersionManager;->mTrafficAmount:J

    iput-wide v2, p0, Lcom/android/server/am/MARsVersionManager;->mNotifiUpdatedCount:J

    iput-wide v2, p0, Lcom/android/server/am/MARsVersionManager;->mApplicationSizeIncreased:J

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsVersionManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    iput-object p3, p0, Lcom/android/server/am/MARsVersionManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private convertListToMap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v1, v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->policyNum:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget v1, v1, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;->importantValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "MARsVersionManager"

    const-string/jumbo v2, "mIsCurrentImportantMap is null! "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private convertRestrictionTypeToName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "CHN app"

    return-object v0

    :cond_1
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "Essential intent"

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private isActionMatch(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equals"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "equalsIgnoreCase"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "contains"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "startsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_4
    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->actionMatchType:Ljava/lang/String;

    const-string/jumbo v2, "endsWith"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->callee:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_1
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->caller:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_4

    invoke-direct {p0, p1, p4}, Lcom/android/server/am/MARsVersionManager;->isActionMatch(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->action:Ljava/lang/String;

    if-nez v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isRestrictionTypeAllowed(I)Z
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public convertPolicyNameToNum(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "force"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "applocker"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "autorun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string/jumbo v0, "arespolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const-string/jumbo v0, "freecess"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    const-string/jumbo v0, "udspolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    return v0

    :cond_5
    const-string/jumbo v0, "sbikepolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    return v0

    :cond_6
    return v1
.end method

.method convertPolicyNumToName(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, "force"

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    const-string/jumbo v0, "applocker"

    return-object v0

    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    const-string/jumbo v0, "autorun"

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    const-string/jumbo v0, "arespolicy"

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne v0, p1, :cond_4

    const-string/jumbo v0, "freecesspolicy"

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne v0, p1, :cond_5

    const-string/jumbo v0, "udspolicy"

    return-object v0

    :cond_5
    const/4 v0, 0x6

    if-ne v0, p1, :cond_6

    const-string/jumbo v0, "sbikepolicy"

    return-object v0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public dumpMARsDefaultValue()V
    .locals 11

    iget-object v8, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    iget-boolean v8, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "MARsVersionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    iget-boolean v8, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "MARsVersionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    iget-boolean v8, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "MARsVersionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget-boolean v8, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v8, "MARsVersionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "dumpMARsDefaultValue----> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    return-void
.end method

.method public getAdjustRestrictionFromDefaultValue()V
    .locals 14

    const/4 v11, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/android/server/am/MARsVersionManager;->mAdjustRestrictionDefault:[[Ljava/lang/String;

    array-length v13, v12

    move v10, v11

    :goto_0
    if-ge v10, v13, :cond_0

    aget-object v8, v12, v10

    aget-object v1, v8, v11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v3, v8, v1

    const/4 v1, 0x2

    aget-object v4, v8, v1

    const/4 v1, 0x3

    aget-object v5, v8, v1

    const/4 v1, 0x4

    aget-object v6, v8, v1

    const/4 v1, 0x5

    aget-object v7, v8, v1

    new-instance v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;-><init>(Lcom/android/server/am/MARsVersionManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/server/am/MARsVersionManager;->setAdjustRestriction(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getExcludeTargetFromDefaultValue()V
    .locals 12

    const/4 v9, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sget-object v10, Lcom/android/server/am/MARsVersionManager;->mExcludePackageDefault:[[Ljava/lang/String;

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_0

    aget-object v6, v10, v8

    aget-object v1, v6, v9

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v1, 0x1

    aget-object v1, v6, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x2

    aget-object v4, v6, v1

    const/4 v1, 0x3

    aget-object v5, v6, v1

    new-instance v0, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;-><init>(Lcom/android/server/am/MARsVersionManager;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getIsCurrentImportantFromDefaultValue()V
    .locals 10

    const/4 v6, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/am/MARsVersionManager;->mCurrentImportantDefault:[[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v0, v7, v5

    aget-object v9, v0, v6

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;

    invoke-direct {v2, p0, v4, v1}, Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;-><init>(Lcom/android/server/am/MARsVersionManager;II)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsVersionManager;->setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V

    return-void
.end method

.method getMARsDBVersionFromDefaultValue()Ljava/lang/String;
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-object v4, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    const-string/jumbo v6, "marsversion"

    aget-object v7, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    aget-object v0, v1, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getMARsSettingsInfoFromDefaultValue()V
    .locals 10

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget-object v7, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    aget-object v3, v7, v5

    aget-object v0, v3, v6

    const/4 v9, 0x1

    aget-object v4, v3, v9

    new-instance v2, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;

    invoke-direct {v2, p0, v0, v4}, Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsVersionManager;->setMARsSettingsInfoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public getPolicyFromDefaultValue()V
    .locals 20

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v18, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoDefault:[[Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v17, v3

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v16, v18, v17

    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v3, 0x2

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v3, 0x3

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v3, 0x4

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v3, 0x5

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    const/4 v3, 0x6

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const/4 v3, 0x7

    aget-object v3, v16, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsVersionManager;->convertPolicyNumToName(I)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lcom/android/server/am/MARsVersionManager$PolicyInfo;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/server/am/MARsVersionManager$PolicyInfo;-><init>(Lcom/android/server/am/MARsVersionManager;Ljava/lang/String;IIIIIJJI)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/server/am/MARsVersionManager;->setPolicy(Ljava/util/ArrayList;)V

    return-void
.end method

.method public isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    iget-object v2, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;

    iget v2, v0, Lcom/android/server/am/MARsVersionManager$AdjustRestriction;->restrictionType:I

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/android/server/am/MARsVersionManager;->isAdjustRestrictionMatchInternal(Lcom/android/server/am/MARsVersionManager$AdjustRestriction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/MARsVersionManager;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "MARsVersionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " restrictionType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsVersionManager;->convertRestrictionTypeToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " isAllowed = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/android/server/am/MARsVersionManager;->isRestrictionTypeAllowed(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " callee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " caller = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    return v2

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method isAppStartUpHistoryEnabled()Z
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    iget-object v4, p0, Lcom/android/server/am/MARsVersionManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    return v5
.end method

.method public setAdjustRestriction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mRestrictionList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAdjustTargetCurrentImportant(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetCurrentImportant;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mIsCurrentImportantList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsVersionManager;->convertListToMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setAdjustTargetExcludePackage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$AdjustTargetExcludePackage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    return-void
.end method

.method public setAutoRunParameter(JJJJJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mTrigger:Lcom/android/server/am/MARsTrigger;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p1

    iput-wide v2, v0, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p3

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/am/MARsPolicyManager;->mUnusedAutoFreezeTime:J

    iget-object v0, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v0, p5, p6}, Lcom/android/server/am/MARsPolicyManager;->setDownloadCheckParameter(J)V

    return-void
.end method

.method public setMARsSettingsInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$MARsSettingsInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mMARsSettingsInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public setPolicy(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MARsVersionManager$PolicyInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/am/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method
