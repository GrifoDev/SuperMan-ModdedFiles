.class public Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SecRedactionInterstitial.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/SecRedactionInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RedactionInterstitialFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;
    }
.end annotation


# instance fields
.field guideView:Landroid/view/View;

.field private mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

.field private mDoneBtnNotiOffTablet:Landroid/widget/Button;

.field mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFromSetupWizard:Z

.field private mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mLockNotiCardOpacity:Landroid/database/ContentObserver;

.field private mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

.field private mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

.field private mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

.field private mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

.field private mNoticardBackgroundHeight:I

.field private mSUWNextBtn:Landroid/view/View;

.field private mSUWNextText:Landroid/widget/TextView;

.field private mSUWPrevBtn:Landroid/view/View;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field notiCardLayout:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->updateNotiCardOpacity()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$1;-><init>(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    return-void
.end method

.method private addHeaderNotificationCardView()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f0d0187

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getNoticardViewMeasuredHeight(Lcom/android/internal/widget/NotificationTemplateView;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNoticardBackgroundHeight:I

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v4, 0x7f0a05cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v4, 0x7f0a02c3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v4, 0x7f0a0298

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    const v4, 0x7f0a0136

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_button_background"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    const v4, 0x7f0807c2

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v3}, Lcom/android/internal/widget/NotificationTemplateView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "status_bar_latest_event_content"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0705a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3, v8, v8, v8}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNoticardBackgroundHeight:I

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->updateNotiCardOpacity()V

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->guideView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->setPinnedHeaderView(Landroid/view/View;)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLockscreenAllowPrivateNotifications()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_screen_allow_private_notifications"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getLockscreenWallpaperImg()Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/WallpaperManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v3

    :cond_0
    return-object v5
.end method

.method private getNoticardViewMeasuredHeight(Lcom/android/internal/widget/NotificationTemplateView;)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/android/internal/widget/NotificationTemplateView;->measure(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070550

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/widget/NotificationTemplateView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method private loadFromSettings()V
    .locals 10

    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_show_notifications"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lock_screen_allow_private_notifications"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "lockscreen_minimizing_notification"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    xor-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v5, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const/16 v7, 0xc

    invoke-static {v5, v7, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v4}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v5, v7, v6}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v5, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getLockscreenAllowPrivateNotifications()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v5, v7}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method

.method private refreshNoticardLayout()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "white_lockscreen_wallpaper"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v0}, Lcom/android/internal/widget/NotificationTemplateView;->setIsWhiteWallpaper(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getDisplayWidth()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateNotiCardOpacity()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_noticard_opacity"

    const/16 v4, 0x2d

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    iget-object v2, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/NotificationTemplateView;->setViewOpacity(F)V

    return-void
.end method


# virtual methods
.method public cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    move-object v3, p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getDisplayWidth()I

    move-result v0

    if-ge v5, v0, :cond_0

    int-to-float v6, v0

    int-to-float v7, v5

    div-float v4, v6, v7

    int-to-float v6, v2

    mul-float/2addr v6, v4

    float-to-int v2, v6

    move v5, v0

    const/4 v6, 0x1

    invoke-static {p1, v0, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_0
    :try_start_0
    iget v6, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNoticardBackgroundHeight:I

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNoticardBackgroundHeight:I

    const/4 v8, 0x0

    invoke-static {v3, v8, v6, v5, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eq v3, p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string/jumbo v6, "SecRedactionInterstitial"

    const-string/jumbo v7, "IllegalArgumentException from cropBitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisplayWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2

    :cond_1
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4a

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTablet:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWPrevBtn:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextBtn:Landroid/view/View;

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->finish()V

    return-void

    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500c6

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "unclickable_pref"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/UnclickablePreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDescriptionPref:Lcom/samsung/android/settings/UnclickablePreference;

    const-string/jumbo v0, "set_visibility"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    const-string/jumbo v0, "notification_icons_only"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v0, "noti_card_seekbar"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    const-string/jumbo v0, "noti_inverse_text"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mWallpaperManager:Landroid/app/WallpaperManager;

    new-instance v0, Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/NotificationTemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_allow_private_notifications"

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0310

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :cond_0
    :goto_1
    return v3

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lockscreen_minimizing_notification"

    if-eqz v0, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0312

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardView:Lcom/android/internal/widget/NotificationTemplateView;

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/NotificationTemplateView;->setCurrentMode(I)V

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "notification_text_color_inversion"

    if-eqz v0, :cond_8

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiCardSeekbarPref:Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/NotificationCardSeekbarPreference;->updateSeekBarDescVisible()V

    goto :goto_1

    :cond_8
    move v2, v3

    goto :goto_4
.end method

.method public onResume()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_noticard_opacity"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockNotiCardOpacity:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "notification_text_color_inversion"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mInverseTextPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->refreshNoticardLayout()V

    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->loadFromSettings()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_screen_show_notifications"

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mLockscreen:Landroid/support/v14/preference/SecRestrictedSwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SecRestrictedSwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mNotiIconsOnly:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->notiCardLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mDoneBtnNotiOffTabletContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f0807c2

    const/4 v6, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v3}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "show_button_background"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->addHeaderNotificationCardView()V

    iget-boolean v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mFromSetupWizard:Z

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const v4, 0x7f0a0858

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSetupwizardButtonContainer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->hideSystemBars(Landroid/view/Window;)V

    const v4, 0x7f0a0875

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWPrevBtn:Landroid/view/View;

    const v4, 0x7f0a0870

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextBtn:Landroid/view/View;

    const v4, 0x7f0a0871

    invoke-virtual {v3, v4}, Lcom/android/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWPrevBtn:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextBtn:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextText:Landroid/widget/TextView;

    const v5, 0x7f12126a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->mSUWNextBtn:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d02a3

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a0136

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment$2;-><init>(Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v6, v6, v6}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    invoke-virtual {p0, v1, v6}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->setFooterView(Landroid/view/View;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/notification/SecRedactionInterstitial$RedactionInterstitialFragment;->getFooterView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0
.end method
