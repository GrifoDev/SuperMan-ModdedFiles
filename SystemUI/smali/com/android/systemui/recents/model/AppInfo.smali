.class public Lcom/android/systemui/recents/model/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;
    }
.end annotation


# instance fields
.field public executeCount:I

.field public hasMultipleLauncherActivities:Z

.field public key:Ljava/lang/String;

.field mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public supportMultiInstance:Z

.field public title:Ljava/lang/String;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    iput v1, p0, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/AppInfo;->hasMultipleLauncherActivities:Z

    iput-object p1, p0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isDisabled(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget v2, p0, Lcom/android/systemui/recents/model/AppInfo;->userId:I

    if-ne p3, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/recents/model/AppInfo;->hasMultipleLauncherActivities:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public notifyDataLoaded(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;->onDataLoaded(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    return-void
.end method

.method public setCallback(Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/model/AppInfo;->mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

    return-void
.end method
