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

.field public key:Ljava/lang/String;

.field mCallback:Lcom/android/systemui/recents/model/AppInfo$AppInfoCallback;

.field public resolveInfo:Landroid/content/pm/ResolveInfo;

.field public supportMultiInstance:Z

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/ResolveInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/systemui/recents/model/AppInfo;->executeCount:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->title:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/recents/model/AppInfo;->supportMultiInstance:Z

    iput-object p1, p0, Lcom/android/systemui/recents/model/AppInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/model/AppInfo;->key:Ljava/lang/String;

    return-void
.end method


# virtual methods
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
