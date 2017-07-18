.class public Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;
.super Landroid/widget/BaseAdapter;
.source "FirewallAdapter.java"

# interfaces
.implements Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;
    }
.end annotation


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

.field private mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

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

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private setSameUidApp(IIZ)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v1, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

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

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

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
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5, p0}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder$OnCheckedListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04018a

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v5, 0x7f1100e4

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    const v5, 0x7f11027f

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    const v5, 0x7f11025d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    const v5, 0x7f1104a8

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    iget-object v6, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    const v5, 0x7f110280

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v7

    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v6, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    const v5, 0x7f1104a7

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    aput-object v5, v6, v8

    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    const/4 v3, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v3, v5, :cond_1

    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->toggle:[Landroid/widget/CheckBox;

    aget-object v5, v5, v3

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v6, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0c4f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidDataMap:Ljava/util/Map;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v6, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0c50

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ": "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mUidWifiMap:Ljava/util/Map;

    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationIconForIconTray(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->name:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setPosition(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setCheckBox(IZ)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v5}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v2, v6, v5}, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->setCheckBox(IZ)V

    :goto_4
    return-object p2

    :cond_2
    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0c4f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_4

    :cond_3
    :try_start_1
    iget-object v5, v2, Lcom/samsung/android/settings/datausage/networkconnect/ViewHolder;->wifiUsageText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0c50

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "0B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public onChecked(IIZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    if-nez p2, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v3

    if-eq v3, p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setDataAllowed(Z)V

    sget-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsWarningStatus:Z

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_4

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

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

    if-nez v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

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

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v3, v6}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

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

    if-eqz v3, :cond_5

    sget-object v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mDataBackupWhiteList:Ljava/util/List;

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

    :cond_5
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

    goto :goto_2

    :cond_6
    if-ne p2, v5, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWlanAllowed()Z

    move-result v3

    if-eq v3, p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWlanAllowed(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->setSameUidApp(IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p3}, Landroid/net/NetworkPolicyManager;->setFirewallRuleWifi(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    invoke-interface {v3, v5}, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;->OnItemCheckBoxChanged(I)V

    goto/16 :goto_3
.end method

.method public setApplicationNetInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mApplicationNetInfoList:Ljava/util/List;

    return-void
.end method

.method public setItemCheckBoxListener(Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter;->mItemCheckBoxListener:Lcom/samsung/android/settings/datausage/networkconnect/FirewallAdapter$OnItemCheckBoxListener;

    return-void
.end method
