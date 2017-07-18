.class public Lcom/samsung/android/settings/NewModePreview;
.super Lcom/android/settings/InstrumentedActivity;
.source "NewModePreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/NewModePreview$1;,
        Lcom/samsung/android/settings/NewModePreview$2;,
        Lcom/samsung/android/settings/NewModePreview$3;,
        Lcom/samsung/android/settings/NewModePreview$4;,
        Lcom/samsung/android/settings/NewModePreview$5;,
        Lcom/samsung/android/settings/NewModePreview$6;,
        Lcom/samsung/android/settings/NewModePreview$RadioAdapter;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mModeItem:[Ljava/lang/String;

.field private static sPackageName:[Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

.field private mAutoAdaptiveTextView:Landroid/widget/TextView;

.field private final mBlueLightFilterObserver:Landroid/database/ContentObserver;

.field private final mColorAdjustmentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field mDisplayColourFooterView:Landroid/view/View;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mGrayscaleObserver:Landroid/database/ContentObserver;

.field private mListView:Landroid/widget/ListView;

.field private mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private final mNegativeColorObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/NewModePreview;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.gallery3d"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.camera"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.sbrowser"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.everglades.video"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.samsung.app"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.peel.smartremote"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.readershub"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.google.android.apps.books"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->sPackageName:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/NewModePreview$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/NewModePreview;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$1;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$2;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$3;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/NewModePreview$4;-><init>(Lcom/samsung/android/settings/NewModePreview;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$6;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    iput-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private isTemperatureSettingEnabled()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private static setPreferenceEnable(Landroid/view/View;Z)V
    .locals 3

    const v2, 0x1020014

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x1020015

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method private showBluelightfilterDialog()V
    .locals 9

    const/4 v6, 0x1

    new-instance v0, Lcom/samsung/android/settings/NewModePreview$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/NewModePreview$8;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v3, Lcom/samsung/android/settings/NewModePreview$9;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/NewModePreview$9;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v1, Lcom/samsung/android/settings/NewModePreview$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/NewModePreview$10;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b0590

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x7f0b05a5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b153d

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b153c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/NewModePreview;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100164

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/android/settings/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f04018d

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mDNIe"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v1, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b05cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const v1, 0x7f11049c

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const v1, 0x7f11024a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/NewModePreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v1, 0x7f0a0468

    invoke-virtual {v10, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a045e

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0a046d

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    invoke-static {p0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    new-instance v1, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    sget-object v2, Lcom/samsung/android/settings/NewModePreview;->mModeItem:[Ljava/lang/String;

    const v3, 0x7f04015f

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/android/settings/NewModePreview$RadioAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mAdapter:Lcom/samsung/android/settings/NewModePreview$RadioAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x0

    const/4 v1, 0x1

    if-ne v9, v1, :cond_1

    const/4 v11, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v11, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const v3, 0x7f0400d7

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v2, 0x7f020398

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    const v2, 0x1020015

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v1, 0x7f0b0545

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0b0546

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    new-instance v2, Lcom/samsung/android/settings/NewModePreview$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/NewModePreview$7;-><init>(Lcom/samsung/android/settings/NewModePreview;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v6, :cond_4

    if-eqz p3, :cond_3

    :cond_0
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->showBluelightfilterDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->updateTemperatureSettingsState()V

    if-eqz v1, :cond_5

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v4, p3, -0x1

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_5
    if-nez p3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v0, v3, v4

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100165

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    const-string/jumbo v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setmDNIeUserMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    return-void

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mAutoAdaptiveTextView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    iget-object v5, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    add-int/lit8 v0, p3, -0x1

    goto :goto_3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x4

    if-ne v1, p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_automatic_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getCount()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/InstrumentedActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v5, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v4, "ScreenMode"

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onPause()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/NewModePreview;->mMdnie:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v3, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setScreenMode(I)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/NewModePreview;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    invoke-super {p0}, Lcom/android/settings/InstrumentedActivity;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "blue_light_filter"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mBlueLightFilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "greyscale_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mGrayscaleObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mNegativeColorObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/NewModePreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "color_blind"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mColorAdjustmentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/samsung/android/settings/NewModePreview;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/NewModePreview;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "ScreenMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method updateTemperatureSettingsState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/NewModePreview;->isTemperatureSettingEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/NewModePreview;->mDisplayColourFooterView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/NewModePreview;->setPreferenceEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method
