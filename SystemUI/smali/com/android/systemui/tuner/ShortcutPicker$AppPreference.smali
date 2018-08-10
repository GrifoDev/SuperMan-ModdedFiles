.class Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;
.super Lcom/android/systemui/tuner/SelectablePreference;
.source "ShortcutPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/ShortcutPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPreference"
.end annotation


# instance fields
.field private mBinding:Z

.field private final mInfo:Landroid/content/pm/LauncherActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f120b45

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v0, v2

    const v1, 0x7f120b3d

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected notifyChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/tuner/SelectablePreference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mBinding:Z

    invoke-super {p0, p1}, Lcom/android/systemui/tuner/SelectablePreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/ShortcutPicker$AppPreference;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
