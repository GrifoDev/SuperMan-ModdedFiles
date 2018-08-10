.class public Lcom/sec/android/cover/CoverUtils$ASSERT;
.super Ljava/lang/Object;
.source "CoverUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/CoverUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ASSERT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/CoverUtils$ASSERT$AssertionFailedException;
    }
.end annotation


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mIsEngMode:Z

.field private static mIsMobileCareInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mContext:Landroid/content/Context;

    sput-boolean v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    sput-boolean v1, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "com.samsung.mobilecare"

    invoke-static {p0, v0}, Lcom/sec/android/cover/CoverUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    const-string/jumbo v0, "CoverUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init : Eng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsEngMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " MC Installed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/sec/android/cover/CoverUtils$ASSERT;->mIsMobileCareInstalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
