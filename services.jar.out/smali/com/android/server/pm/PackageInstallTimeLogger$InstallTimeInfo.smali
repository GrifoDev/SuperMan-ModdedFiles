.class final Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;
.super Ljava/lang/Object;
.source "PackageInstallTimeLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallTimeLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InstallTimeInfo"
.end annotation


# instance fields
.field mBaseTime:J

.field final mInfoList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mInfoList"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mLastTime:J

.field mPkgName:Ljava/lang/String;

.field mUserId:I

.field mVersion:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/PackageInstallTimeLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageInstallTimeLogger;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->this$0:Lcom/android/server/pm/PackageInstallTimeLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mInfoList:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mPkgName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;->mVersion:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageInstallTimeLogger;Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallTimeLogger$InstallTimeInfo;-><init>(Lcom/android/server/pm/PackageInstallTimeLogger;)V

    return-void
.end method
