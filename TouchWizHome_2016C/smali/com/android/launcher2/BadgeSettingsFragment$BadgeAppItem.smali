.class public Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;
.super Ljava/lang/Object;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BadgeAppItem"
.end annotation


# instance fields
.field private appIcon:Landroid/graphics/drawable/Drawable;

.field private className:Ljava/lang/String;

.field private hasChange:Z

.field private hidden:Z

.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/BadgeSettingsFragment;

.field private title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;Lcom/android/launcher2/compat/LauncherActivityInfoCompat;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->title:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher2/PkgResCache;->getIconDpi()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getBadgedIconForIconTray(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->className:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$400(Lcom/android/launcher2/BadgeSettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$500(Lcom/android/launcher2/BadgeSettingsFragment;)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hidden:Z

    invoke-static {p1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$400(Lcom/android/launcher2/BadgeSettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/launcher2/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$500(Lcom/android/launcher2/BadgeSettingsFragment;)I

    move-result v0

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isHasChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    return v0
.end method

.method public isHidden()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hidden:Z

    return v0
.end method

.method public setHasChange(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    return-void
.end method

.method public setHidden(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hidden:Z

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    iput-boolean p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hidden:Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BadgeAppItem{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hidden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hasChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppItem;->hasChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
