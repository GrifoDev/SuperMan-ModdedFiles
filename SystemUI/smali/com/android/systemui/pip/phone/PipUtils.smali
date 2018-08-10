.class public Lcom/android/systemui/pip/phone/PipUtils;
.super Ljava/lang/Object;
.source "PipUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTopPinnedActivity(Landroid/content/Context;Landroid/app/IActivityManager;)Landroid/content/ComponentName;
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {p1, v5}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    if-eqz v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v5, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "PipUtils"

    const-string/jumbo v6, "Unable to get pinned stack."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v7
.end method
