.class public Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataWarningAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;


# instance fields
.field private mApplicationNetInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPloicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidWifiMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mlistViewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidWifiMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private setSameUidApp(IZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public bindDataStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bindWifiStats(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidWifiMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400b3

    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v4, 0x7f11025b

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    const v4, 0x7f1100e4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f11027d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->name:Landroid/widget/TextView;

    const v4, 0x7f11027e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0c5a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->name:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->setPosition(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->setCheckBox(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;

    goto/16 :goto_0

    :cond_2
    :try_start_1
    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0c5a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "0B"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, v2, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_3
.end method

.method public onChecked(IZ)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v3

    if-eq v3, p2, :cond_4

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    if-eqz p2, :cond_0

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez p2, :cond_1

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    sget-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p2}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mWarningWhiteList:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->setSameUidApp(IZ)V

    :cond_4
    return-void
.end method

.method public setListViewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    return-void
.end method
