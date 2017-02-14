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


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->mId:J

    return-wide v0
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
