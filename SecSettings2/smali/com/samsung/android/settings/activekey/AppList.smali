.class public Lcom/samsung/android/settings/activekey/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;,
        Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;,
        Lcom/samsung/android/settings/activekey/AppList$AppListItem;
    }
.end annotation


# instance fields
.field private AppWhiteListBCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludedActivityListBCM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private pressed_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    return-void
.end method

.method private makeAppWhiteListBCM()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.contacts"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "m.google.android.apps.plus"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.twitter.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.instagram.android"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.kakao.talk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.whatsapp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.amazon.kindle"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.popupcalculator"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.clockpackage"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.sec.android.app.voicerecorder"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.co.nttdocomo.carriermail"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.store"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.mediaplayer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "com.nttdocomo.android.dmenu2"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    const-string/jumbo v1, "jp.co.nttdocomo.saigaiban"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private makeExcludedActivityListBCM()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    iget-object v0, p0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    const-string/jumbo v1, "com.google.android.gm"

    const-string/jumbo v2, "com.google.android.gm.ConversationListActivityGoogleMail"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 33

    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/activekey/AppList;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string/jumbo v2, "pressed_type"

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "long"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeAppWhiteListBCM()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->makeExcludedActivityListBCM()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    new-instance v21, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x220

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    :goto_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->AppWhiteListBCM:Ljava/util/List;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->excludedActivityListBCM:Ljava/util/Map;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    new-instance v26, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4, v2, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v20

    goto/16 :goto_0

    :cond_4
    new-instance v23, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;-><init>(Lcom/samsung/android/settings/activekey/AppList$AlphaComparator;)V

    move-object/from16 v0, v23

    invoke-static {v13, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string/jumbo v2, "ro.product.name"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "xcover3ve"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v27, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string/jumbo v2, "noaction"

    const-string/jumbo v3, "noaction"

    const v4, 0x7f0b0351

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0203e1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v27

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v32, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    const-string/jumbo v2, "torch"

    const-string/jumbo v3, "torch"

    const v4, 0x7f0b0352

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/activekey/AppList;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020560

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/samsung/android/settings/activekey/AppList$AppListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v32

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v5, 0x7f04016b

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v2, 0x7f0a0467

    move-object/from16 v0, v31

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a001a

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v16, v2, v3

    new-instance v14, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/activekey/AppList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v22

    if-eqz v22, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_6
    return-void

    :cond_7
    new-instance v8, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    const v11, 0x7f04016b

    const/4 v12, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;-><init>(Lcom/samsung/android/settings/activekey/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ActiveKeyAppList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " app title : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "selected_app"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "selected_app_title"

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/samsung/android/settings/activekey/AppList;->mAppListAdapter:Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;

    invoke-virtual {v2, p3}, Lcom/samsung/android/settings/activekey/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;

    iget-object v2, v2, Lcom/samsung/android/settings/activekey/AppList$AppListItem;->mActivityName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "noaction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""

    :cond_0
    const-string/jumbo v2, "short"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    return-void

    :cond_2
    const-string/jumbo v2, "long"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeySetting()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "short_press_app_battery_conserve"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "long_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "double"

    iget-object v3, p0, Lcom/samsung/android/settings/activekey/AppList;->pressed_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "double_press_app"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
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
    const-string/jumbo v0, "ActiveKeyAppList"

    const-string/jumbo v1, "onOptionsItemSelected() up button pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/activekey/AppList;->finish()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
