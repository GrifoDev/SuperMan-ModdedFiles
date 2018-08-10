.class Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;
.super Ljava/lang/Object;
.source "RecentsPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/model/RecentsPackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecentsPackageInfo"
.end annotation


# instance fields
.field installed:Z

.field intent:Landroid/content/Intent;

.field versionCode:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->installed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->intent:Landroid/content/Intent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;->versionCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor$RecentsPackageInfo;-><init>()V

    return-void
.end method
