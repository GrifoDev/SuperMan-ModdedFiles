.class public final Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Lcom/android/internal/app/ResolverActivity$TargetInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayResolveInfo"
.end annotation


# instance fields
.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private final mDisplayLabel:Ljava/lang/CharSequence;

.field private final mExtendedInfo:Ljava/lang/CharSequence;

.field private mPinned:Z

.field private final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private final mResolvedIntent:Landroid/content/Intent;

.field private final mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 5

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    new-instance v1, Landroid/content/Intent;

    if-eqz p6, :cond_0

    :goto_0
    invoke-direct {v1, p6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x3000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-void

    :cond_0
    iget-object v2, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity;->getTargetIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/internal/app/ResolverActivity;->getReplacementIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p6

    goto :goto_0
.end method

.method private constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {v0, p3, p4}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    iget-boolean v0, p2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return-void
.end method


# virtual methods
.method public addAlternateSourceIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 2

    new-instance v0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public getBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getExtendedInfo()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v1}, Lcom/android/internal/app/ResolverActivity;->-get2(Lcom/android/internal/app/ResolverActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget v1, v1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    if-nez v1, :cond_5

    :cond_4
    return-object v3

    :cond_5
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->icon:I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eq v1, v2, :cond_4

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_6
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mBadge:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method public getDisplayIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getResolvedIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public hasDisplayIcon()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setPinned(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mPinned:Z

    return-void
.end method

.method public start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    return v0
.end method

.method public startAsCaller(Landroid/app/Activity;Landroid/os/Bundle;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    return v0
.end method
