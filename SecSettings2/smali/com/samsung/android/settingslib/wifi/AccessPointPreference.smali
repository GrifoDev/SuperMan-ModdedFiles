.class public Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.super Landroid/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;,
        Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;
    }
.end annotation


# static fields
.field public static final ENABLE_WECHAT_WIFI:Z

.field private static final STATE_GIGA_NONE:[I

.field private static final STATE_GIGA_SECURED:[I

.field private static final STATE_NONE:[I

.field private static final STATE_SECURED:[I

.field private static final STATE_WECHAT:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field private static wifi_signal_attributes:[I


# instance fields
.field private mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mBadge:Landroid/graphics/drawable/Drawable;

.field private final mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private final mBadgePadding:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mCurrentIconSet:I

.field private mDefaultIconResId:I

.field private mForSavedNetworks:Z

.field private mId:J

.field private mLevel:I

.field private final mNotifyChanged:Ljava/lang/Runnable;

.field private mTitleView:Landroid/widget/TextView;

.field private final mWifiSld:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    new-array v0, v3, [I

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_NONE:[I

    new-array v0, v5, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_giga:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$attr;->state_encrypted:I

    aput v1, v0, v4

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_SECURED:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_giga:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_NONE:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->state_wifi_wechat:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_WECHAT:[I

    new-array v0, v4, [I

    sget v1, Lcom/android/settingslib/R$attr;->wifi_signal:I

    aput v1, v0, v3

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    const-string/jumbo v0, "WeChatWiFi"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Wifi_ConfigSocialSvcIntegrationn"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->ENABLE_WECHAT_WIFI:Z

    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v4

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_three_bars:I

    aput v1, v0, v5

    sget v1, Lcom/android/settingslib/R$string;->accessibility_wifi_signal_full:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iput-object v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iput-object p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-boolean p5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iput p4, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->wifi_signal_attributes:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    iput-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settingslib/R$dimen;->wifi_preference_badge_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-void
.end method

.method private postNotifyChanged()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mNotifyChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private safeSetDefaultIcon()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mDefaultIconResId:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private updateTitle(Landroid/widget/TextView;)V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$color;->wifi_ap_connecting:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "#ff"

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_0

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v5, :cond_2

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v5, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$color;->highlight_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "#ff"

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private validateIconSet()Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    if-eq v0, v2, :cond_0

    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid, update icon for wechat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid, update icon for giga ap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string/jumbo v0, "AccessPointPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current icon is invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    return v2
.end method


# virtual methods
.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    return-wide v0
.end method

.method public getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;
    .locals 10

    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v4, p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getLayoutResource()I

    move-result v6

    invoke-virtual {p1, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    :cond_0
    const v6, 0x1020006

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v6, 0x1020016

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    const v6, 0x1020010

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v6, :cond_4

    if-eqz v1, :cond_1

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    sget v7, Lcom/android/settingslib/R$string;->wifi_empty_list_wifi_on:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    return-object v4

    :cond_4
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    if-gez v2, :cond_5

    const/4 v2, 0x5

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0, v2, v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_6
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateTitle(Landroid/widget/TextView;)V

    :cond_7
    if-eqz v3, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_a

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    :goto_1
    return-object v4

    :cond_9
    const-string/jumbo v6, "AccessPointPreference"

    const-string/jumbo v7, "icon is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_a
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method protected notifyChanged()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/preference/Preference;->notifyChanged()V

    goto :goto_0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-gez v1, :cond_3

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    :goto_0
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mTitleView:Landroid/widget/TextView;

    iget v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgePadding:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    iget v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method public onLevelChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->postNotifyChanged()V

    return-void
.end method

.method public refresh()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v2

    iget v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    if-eq v2, v5, :cond_0

    iput v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    iget v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mLevel:I

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateIcon(ILandroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->updateBadge(Landroid/content/Context;)V

    iget-boolean v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSavedNetworkSummary()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_1

    new-array v5, v11, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v6, v5, v8

    const-string/jumbo v6, ","

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_1
    if-ltz v2, :cond_2

    sget-object v5, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    array-length v5, v5

    if-ge v2, v5, :cond_2

    new-array v5, v11, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    aput-object v6, v5, v8

    const-string/jumbo v6, ","

    aput-object v6, v5, v9

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->WIFI_CONNECTION_STRENGTH:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mContentDescription:Ljava/lang/CharSequence;

    :cond_2
    return-void

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_5

    :cond_4
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settingslib/R$color;->highlight_text_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "#ff"

    const-string/jumbo v7, "#"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSettingsSummary()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    return-void
.end method

.method protected updateBadge(Landroid/content/Context;)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;->-wrap0(Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mBadge:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method protected updateIcon(ILandroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->validateIconSet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->ENABLE_WECHAT_WIFI:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_WECHAT:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mForSavedNetworks:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isOllehGigaAp()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_SECURED:[I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_GIGA_NONE:[I

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mWifiSld:Landroid/graphics/drawable/StateListDrawable;

    iget-object v1, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_SECURED:[I

    :goto_3
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    iput v3, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mCurrentIconSet:I

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->STATE_NONE:[I

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->safeSetDefaultIcon()V

    goto :goto_0
.end method
