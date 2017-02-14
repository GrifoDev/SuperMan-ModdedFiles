.class public Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;
.super Landroid/app/ListActivity;
.source "NavigationBarAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;,
        Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;
    }
.end annotation


# static fields
.field private static sDbKey:Ljava/lang/String;


# instance fields
.field private mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method private getAppListAdapter()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v9, 0x200

    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v11, v11, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v11, :cond_0

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v11, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v11, :cond_0

    iget-boolean v11, v5, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v11, :cond_0

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12, v13, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v8, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v3, v11, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v9, 0x80

    iget-object v11, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v1, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12, v13, v13}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    new-instance v8, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v11, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v3, v11, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    const/4 v11, 0x0

    invoke-direct {v4, v11}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;)V

    invoke-static {v7, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v7
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 19

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string/jumbo v2, "dbkey"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getAppListAdapter()Ljava/util/List;

    move-result-object v7

    new-instance v15, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;

    const/4 v2, 0x0

    invoke-direct {v15, v2}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AlphaComparator;)V

    invoke-static {v7, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    const v5, 0x7f04016b

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getListView()Landroid/widget/ListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v2, 0x7f0a0467

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a001a

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v10, v2, v3

    new-instance v8, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v13}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v14

    if-eqz v14, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NavigationBarAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->mAppListAdapter:Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->sDbKey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LaunchApp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string/jumbo v0, "NavigationBarAppList"

    const-string/jumbo v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarAppList;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
