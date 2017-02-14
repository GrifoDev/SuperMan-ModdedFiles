.class public Lcom/android/settings/wifi/LongPressAccessPointPreference;
.super Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
.source "LongPressAccessPointPreference.java"


# instance fields
.field private final mFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;Z)V

    iput-object p5, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->onBindView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/wifi/LongPressAccessPointPreference;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
