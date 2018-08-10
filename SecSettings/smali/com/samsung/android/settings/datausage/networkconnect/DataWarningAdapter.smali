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

.field private mDualAppProfileId:I

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

.field private mUserHandle:Landroid/os/UserHandle;

.field private mlistViewEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidWifiMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mDualAppProfileId:I

    new-instance v1, Landroid/os/UserHandle;

    iget v2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mDualAppProfileId:I

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUserHandle:Landroid/os/UserHandle;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

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
    .locals 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_2

    new-instance v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v6, p0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder$OnCheckedListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0d00c3

    invoke-virtual {v6, v7, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v6, 0x7f0a0206

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    const v6, 0x7f0a03fa

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->icon:Landroid/widget/ImageView;

    const v6, 0x7f0a0559

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->name:Landroid/widget/TextView;

    const v6, 0x7f0a088d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v6

    const/16 v7, 0x4e1f

    if-le v6, v7, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mDualAppProfileId:I

    const/16 v8, 0x80

    invoke-virtual {v6, v5, v8, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v1, v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f120bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ": "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mUidDataMap:Ljava/util/Map;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v7, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->name:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->setPosition(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->setCheckBox(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    :cond_0
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_4
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v6}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isDataAllowed()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;

    goto/16 :goto_0

    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPM:Landroid/content/pm/PackageManager;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v1, v7, v8, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :try_start_2
    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->dataUsageText:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f120bf6

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "0B"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p2, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v6, v4, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v10}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4
.end method

.method public onChecked(IZ)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mApplicationNetInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->isWarningAllowed()Z

    move-result v3

    if-eq v3, p2, :cond_3

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->setWarningAllowed(Z)V

    if-eqz p2, :cond_1

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

    xor-int/lit8 v3, v3, 0x1

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

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/settings/datausage/networkconnect/NetworkManagerActivity;->mIsCurrentSlotWarning:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUids()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mPloicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3, p2}, Landroid/net/NetworkPolicyManager;->setFirewallRuleMobileData(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_0

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

    if-eqz v3, :cond_0

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

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/networkconnect/ApplicationNetInfo;->getUid()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->setSameUidApp(IZ)V

    :cond_3
    return-void
.end method

.method public setListViewEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningAdapter;->mlistViewEnabled:Z

    return-void
.end method
