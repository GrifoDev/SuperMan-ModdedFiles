.class public Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;
.super Ljava/lang/Object;
.source "BluetoothTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;
.implements Lcom/android/systemui/qs/QSDetailItems$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/BluetoothTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BluetoothDetailAdapter"
.end annotation


# static fields
.field private static final MAX_DEVICES:I = 0x14


# instance fields
.field private mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mAvailableDevicesTitle:Landroid/view/View;

.field private mItems:Lcom/android/systemui/qs/QSDetailItems;

.field private mPairedDevices:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateItems()V
    .locals 14

    const/4 v13, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v9, :cond_0

    return-void

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getDevices()Ljava/util/Collection;

    move-result-object v4

    if-eqz v4, :cond_7

    instance-of v9, v4, Ljava/util/ArrayList;

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    new-instance v5, Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-direct {v5}, Lcom/android/systemui/qs/QSDetailItems$Item;-><init>()V

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x7f06015a

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    iput v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v8

    iput-boolean v13, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v9

    iput-boolean v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v7

    if-eqz v7, :cond_5

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v9}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    :goto_1
    iput-object v9, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    iput-object v2, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    const/16 v9, 0xc

    if-ne v1, v9, :cond_6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    if-eq v8, v13, :cond_4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    :cond_4
    iput-boolean v13, v5, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    goto/16 :goto_0

    :cond_5
    move-object v9, v10

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lcom/android/systemui/qs/QSDetailItems$Item;

    invoke-virtual {v10, v9}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesTitle:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_8

    const/16 v9, 0x8

    :goto_3
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v9, v9, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v9, v9, Lcom/android/systemui/qs/tiles/BluetoothTile;->mPairedItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v9, v9, Lcom/android/systemui/qs/tiles/BluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object v9, v9, Lcom/android/systemui/qs/tiles/BluetoothTile;->mAvailableItemList:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_8
    move v9, v11

    goto :goto_3
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const v5, 0x7f080292

    const/4 v4, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d013e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0a03c0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v1}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mPairedDevices:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a005e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p1, v4, v0}, Lcom/android/systemui/qs/QSDetailItems;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailItems;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v2, "Bluetooth.Available"

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f0a005f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesTitle:Landroid/view/View;

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v1, :cond_1

    const v1, 0x7f1208ba

    :goto_0
    invoke-virtual {v2, v5, v1}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const-string/jumbo v2, "Bluetooth"

    invoke-virtual {v1, v2}, Lcom/android/systemui/qs/QSDetailItems;->setTagSuffix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    const v2, 0x7f1208b9

    invoke-virtual {v1, v5, v2}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v1, p0}, Lcom/android/systemui/qs/QSDetailItems;->setCallback(Lcom/android/systemui/qs/QSDetailItems$Callback;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->updateItems()V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v1, v1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setItemsVisible(Z)V

    return-object p2

    :cond_1
    const v1, 0x7f1208bb

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x96

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTileString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->getTileSpec()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1208bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/BluetoothController;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_qs_tiles_BluetoothTile$BluetoothDetailAdapter_20684()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->setToggleState(Z)Z

    return-void
.end method

.method public onClickSettingButton()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClickSettingButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-set0(Lcom/android/systemui/qs/tiles/BluetoothTile;Z)Z

    return v2
.end method

.method public onDetailItemClick(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v3}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->connect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailItems$Item;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/qs/QSDetailItems$Item;->tag:Ljava/lang/Object;

    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/policy/BluetoothController;->disconnect(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_2
    return-void
.end method

.method public setItemsVisible(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSDetailItems;->setItems([Lcom/android/systemui/qs/QSDetailItems$Item;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get11(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public setToggleState(Z)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get3(Lcom/android/systemui/qs/tiles/BluetoothTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x9a

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBluetoothTileBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-wrap1(Lcom/android/systemui/qs/tiles/BluetoothTile;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_POWER_PLANNING:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnableReserveMaxMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get10(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get8(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get8(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get8(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->canSkipBouncer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get9(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockFunctionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get7(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/qs/QSHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->forceCollapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get2(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/plugins/ActivityStarter;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/-$Lambda$d_2AV4Wsx9jl1GMC_1YxsYZswFQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$Lambda$d_2AV4Wsx9jl1GMC_1YxsYZswFQ;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get1(Lcom/android/systemui/qs/tiles/BluetoothTile;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToggleState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->scan(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-get4(Lcom/android/systemui/qs/tiles/BluetoothTile;)Lcom/android/systemui/statusbar/policy/BluetoothController;

    move-result-object v0

    invoke-interface {v0, p1, v3}, Lcom/android/systemui/statusbar/policy/BluetoothController;->setBluetoothEnabled(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->-wrap0(Lcom/android/systemui/qs/tiles/BluetoothTile;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->getToggleState()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/BluetoothTile;->fireToggleStateChanged(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/BluetoothTile$BluetoothDetailAdapter;->mAvailableDevicesItems:Lcom/android/systemui/qs/QSDetailItems;

    if-eqz p1, :cond_5

    const v0, 0x7f1208ba

    :goto_0
    const v2, 0x7f080292

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/qs/QSDetailItems;->setEmptyState(II)V

    return p1

    :cond_5
    const v0, 0x7f1208bb

    goto :goto_0
.end method
