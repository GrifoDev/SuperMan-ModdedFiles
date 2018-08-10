.class Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;
.super Lcom/android/internal/app/ResolverActivity$LoadIconTask;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconIntoViewTask"
.end annotation


# instance fields
.field private final mTargetView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v2}, Lcom/android/internal/app/ResolverActivity;->-wrap0(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Setting NFC badged icon for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mDisplayResolveInfo:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v3}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getDisplayIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$LoadIconIntoViewTask;->mTargetView:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
