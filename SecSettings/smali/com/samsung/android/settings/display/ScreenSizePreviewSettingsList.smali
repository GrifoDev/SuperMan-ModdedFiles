.class public Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;
.super Landroid/widget/ListView;
.source "ScreenSizePreviewSettingsList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;,
        Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$TileItem;
    }
.end annotation


# static fields
.field private static mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

.field private static mFontScale:F

.field private static mFontSize:I

.field private static mFontStyle:Landroid/graphics/Typeface;

.field private static mIsSummaryVisible:Z

.field private static mPreviewTileIds:[Ljava/lang/String;

.field private static mPreviewTileIdsVZW:[Ljava/lang/String;


# direct methods
.method static synthetic -get0()Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object v0
.end method

.method static synthetic -get1()F
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontScale:F

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontSize:I

    return v0
.end method

.method static synthetic -get3()Landroid/graphics/Typeface;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    return v0
.end method

.method static synthetic -get5()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsVZW:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/DashboardFeatureProvider;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProvider;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "connections_settings"

    aput-object v1, v0, v3

    const-string/jumbo v1, "notification_settings"

    aput-object v1, v0, v4

    const-string/jumbo v1, "app_notifications_1depth"

    aput-object v1, v0, v5

    const-string/jumbo v1, "display_settings"

    aput-object v1, v0, v6

    const-string/jumbo v1, "security_settings"

    aput-object v1, v0, v7

    const-string/jumbo v1, "general_device_settings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "about_settings"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIds:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "airplane_mode"

    aput-object v1, v0, v3

    const-string/jumbo v1, "wifi_settings"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bluetooth_settings"

    aput-object v1, v0, v5

    const-string/jumbo v1, "data_usage_settings"

    aput-object v1, v0, v6

    const-string/jumbo v1, "notification_settings"

    aput-object v1, v0, v7

    const-string/jumbo v1, "display_settings"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "about_settings"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mPreviewTileIdsVZW:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setSummaryVisible()V

    new-instance v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;

    const v1, 0x7f0d0282

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList$AppsAdapter;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method public setSummaryVisible()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mIsSummaryVisible:Z

    goto :goto_0
.end method

.method public setTextScale(IF)V
    .locals 0

    sput p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontSize:I

    sput p2, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontScale:F

    return-void
.end method

.method public setTextStyle(Landroid/graphics/Typeface;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/settings/display/ScreenSizePreviewSettingsList;->mFontStyle:Landroid/graphics/Typeface;

    return-void
.end method
