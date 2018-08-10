.class public Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "AccessPointExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:J

.field private mDeviceListGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mDividerHeight:I

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mSelectedDeviceList:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

.field private mTypedArray:Landroid/content/res/TypedArray;

.field private mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mCount:J

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput p3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDividerHeight:I

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->Preference:[I

    const v2, 0x101008e

    const/4 v3, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mTypedArray:Landroid/content/res/TypedArray;

    return-void
.end method


# virtual methods
.method public addPreferenceGroup(ILcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/SemExpandableListView;->expandGroup(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->isAvailableAccesspointGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    const/4 v1, 0x0

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {v1, p2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2

    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p4}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public getChildrenCount(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    return v0
.end method

.method public getCombinedChildId(JJ)J
    .locals 9

    long-to-int v1, p1

    long-to-int v4, p3

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getChildId()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v4, p1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v4, v6

    const-wide/16 v6, -0x1

    and-long/2addr v6, v2

    or-long/2addr v4, v6

    return-wide v4

    :cond_0
    const-string/jumbo v1, "WifiSettings.AccessPointExpListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCombinedChildId :: child preference is null, groupId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", childId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public getCombinedGroupId(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/BaseExpandableListAdapter;->getCombinedGroupId(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->isConnectedAccesspointGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getGroup(I)Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupPosition(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v2, p3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroup(I)Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    const-string/jumbo v3, "WifiSettings.AccessPointExpListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getGroupView :: groupPosition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",  getPreferenceCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , isExpanded = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-static {v1, p4}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    invoke-direct {v3, v7}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;-><init>(Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    const v3, 0x1020016

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v4, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChildrenCount(I)I

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v2, v6}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v2

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mViewHolder:Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter$ViewHolder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public getPasspointPreferenceGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->isPasspointPreferenceGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getSortedFlatCount(ILcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)I
    .locals 3

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupPosition(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/widget/SemExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/SemExpandableListView;->getFlatListPosition(J)I

    move-result v2

    return v2
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isAvailableAccesspointGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1220a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f121e63

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isConnectedAccesspointGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1220a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPasspointPreferenceGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f1220a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.AccessPointExpListAdapter"

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mDeviceListGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setAcessPointListGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->mSelectedDeviceList:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    return-void
.end method
