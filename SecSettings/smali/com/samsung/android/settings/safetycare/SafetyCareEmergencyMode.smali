.class public Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SafetyCareEmergencyMode.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$1;,
        Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;,
        Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mEmerReceiver:Landroid/content/BroadcastReceiver;

.field private mHelpContent:Ljava/lang/String;

.field private mHelpDBItem:Ljava/lang/String;

.field private mHelpImgResID:I

.field private mHelpTitleResID:I

.field private mHelpType:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private mInitialCallState:I

.field private mListView:Landroid/widget/ListView;

.field private mMessageView:Landroid/widget/TextView;

.field private mMoreInfo:Landroid/widget/TextView;

.field private mMoreInfoLayout:Landroid/widget/LinearLayout;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mInitialCallState:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpType:Ljava/lang/String;

    const-string/jumbo v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const-string/jumbo v0, "emer_help"

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpDBItem:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpTitleResID:I

    iput v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$1;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode$2;-><init>(Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;)V

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2e

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    check-cast v7, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v7}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v7}, Lcom/android/settings/widget/SwitchBar;->show()V

    const v7, 0x7f0d027a

    invoke-virtual {p1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v7, 0x7f0a0730

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    const v7, 0x7f0a072d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const v7, 0x7f0a072e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    const v7, 0x7f0a072f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isGrayScreenSupported()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f12169b

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    const v7, 0x7f080644

    iput v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMessageView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    iget v8, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->setHasOptionsMenu(Z)V

    return-object v5

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "VZW"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfo:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c6

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isGrayScreenSupported()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c0

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c2

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200c1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x112009a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0d01e0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v7, 0x7f0a0551

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mMoreInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f1214c4

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mContext:Landroid/content/Context;

    const v8, 0x7f12169c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpContent:Ljava/lang/String;

    :cond_7
    const v7, 0x7f080645

    iput v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mHelpImgResID:I

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mImageView:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "SafetyCareEmergencyMode"

    const-string/jumbo v1, "onDestroy() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string/jumbo v0, "SafetyCareEmergencyMode"

    const-string/jumbo v1, "onDestroyView() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v3, v4, 0xa

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:item"

    const-string/jumbo v5, "emergency_mode"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iput-boolean v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "emergency_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    :cond_1
    iput-boolean v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mValidListener:Z

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVideoCall()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "SafetyCareEmergencyMode"

    const-string/jumbo v5, "isVideoCall() so, disable UPSM switch"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->isEmergencyModeSupported()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    :cond_4
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mInitialCallState:I

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v2, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mEmerReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_6
    move v2, v4

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    const-string/jumbo v0, "SafetyCareEmergencyMode"

    const-string/jumbo v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    const-string/jumbo v2, "SafetyCareEmergencyMode"

    const-string/jumbo v3, "onCheckedChanged"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "enabled"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "flag"

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "VZW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "skipdialog"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/safetycare/SafetyCareEmergencyMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    return-void
.end method
