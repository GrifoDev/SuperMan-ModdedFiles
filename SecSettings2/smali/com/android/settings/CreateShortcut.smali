.class public Lcom/android/settings/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private createIcon(I)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v5, 0x1030224

    invoke-direct {v2, p0, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040290

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4, v3, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v4, v8, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v4, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method


# virtual methods
.method protected getTargetIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    const/high16 v5, 0x7f030000

    invoke-static {p0, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v5

    iget-object v5, v5, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    invoke-virtual {p0, p3}, Lcom/android/settings/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object v4

    iget-object v2, v4, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v0, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v4, :cond_0

    const-string/jumbo v4, "android.intent.extra.shortcut.ICON"

    iget v5, v0, Landroid/content/pm/ActivityInfo;->icon:I

    invoke-direct {p0, v5}, Lcom/android/settings/CreateShortcut;->createIcon(I)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v1}, Lcom/android/settings/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->finish()V

    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/CreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/CreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    return-object v6

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v5, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method
