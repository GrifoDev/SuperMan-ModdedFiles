.class public Lcom/android/server/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverTestModeUtils$1;,
        Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field private static final SHIPPED:Z

.field public static final TEST_MODE_NONE:I = -0x1

.field private static sCurrentTestMode:I


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverTestModeUtils;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/cover/CoverTestModeUtils;)Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverTestModeUtils;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverTestModeUtils;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverTestModeUtils;->updateCoverTestMode(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v1, Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cover_test_mode"

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->COVER_TEST_MODE:Ljava/lang/String;

    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/cover/CoverTestModeUtils;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    sget-boolean v1, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v1

    sput v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return-void
.end method

.method public static getTestCoverType()I
    .locals 1

    sget-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method private getTestModeFromSetting()I
    .locals 4

    const/4 v1, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "cover_test_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isTestMode()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateCoverTestMode(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", currentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    sget v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-interface {v0, v1, v4}, Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    :cond_2
    sput p1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string/jumbo v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
