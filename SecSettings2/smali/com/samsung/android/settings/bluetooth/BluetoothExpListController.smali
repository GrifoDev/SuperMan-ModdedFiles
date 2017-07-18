.class public Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;
.super Ljava/lang/Object;
.source "BluetoothExpListController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;,
        Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    }
.end annotation


# instance fields
.field private mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

.field private mContext:Landroid/content/Context;

.field private mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

.field private mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

.field private mExpandableListView:Landroid/widget/SemExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

.field private mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

.field private mInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

.field private mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public mNeedUpdateUi:Z

.field private mTempDeletePreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mTempInsertPreference:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mNeedUpdateUi:Z

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    return-void
.end method

.method private isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    const v2, 0x7f0b11fa

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


# virtual methods
.method public binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    neg-int v1, v0

    add-int/lit8 v0, v1, -0x1

    :cond_0
    return v0
.end method

.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iput-boolean v1, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mNeedUpdatePreference:Z

    return-void
.end method

.method public getListAdapter()Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    return-object v0
.end method

.method public init()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mView:Landroid/view/View;

    const v1, 0x7f110559

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SemExpandableListView;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v3}, Landroid/widget/SemExpandableListView;->getDividerHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;-><init>(Landroid/content/Context;Landroid/widget/SemExpandableListView;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    if-nez v0, :cond_1

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "init :: mExpandableListView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    new-instance v0, Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setTransitionDuration(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mAddDeleteListener:Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteListAnimator$OnAddDeleteListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnChildClickListener(Landroid/widget/SemExpandableListView$OnChildClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;)V

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setOnGroupClickListener(Landroid/widget/SemExpandableListView$OnGroupClickListener;)V

    return-void
.end method

.method public initListViewForDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setSelector(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setScrollIndicators(I)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 3

    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScanningStateChanged :: started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public readyToDeleteAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToDeleteAnimation :: not exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempDeletePreference:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToDeleteAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v3
.end method

.method public readyToInsertAnimation(Lcom/android/settings/bluetooth/BluetoothDevicePreference;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: mIsOnProgressAddVI = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v2, v2, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothExpListController"

    const-string/jumbo v1, "readyToInsertAnimation :: exist preference already"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-boolean v0, v0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPreference:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "BluetoothExpListController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readyToInsertAnimation :: contains device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v3
.end method

.method public setInsertAnimation()V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->getPreferenceList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mTempInsertPreference:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0, v4, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v3

    add-int v1, v3, v0

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    const-string/jumbo v3, "BluetoothExpListController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInsertAnimation :: insert index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " , sortedIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsert(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setInsertDeleteAnimation(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->mIsOnProgressAddVI:Z

    invoke-virtual {p3}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    const/4 v1, -0x1

    if-nez p2, :cond_0

    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: deleteDeviceGroup is null, bondState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    const/16 v6, 0xc

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getAvailableDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;->findDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result v1

    :cond_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeleteGroup:Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v1, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v2

    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: delete deleteIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , deleteSortedIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v5, v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    :cond_2
    invoke-virtual {p0, p1, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->binarySearch(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;Lcom/android/settings/bluetooth/BluetoothDevicePreference;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5, v3, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getSortedFlatCount(ILcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)I

    move-result v4

    if-eqz p2, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->isPairedDeviceGroup(Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;)Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, -0x1

    :cond_3
    const-string/jumbo v5, "BluetoothExpListController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setInsertDeleteAnimation :: insert insertIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , insertSortedIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v5, v3, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->addUpdatePosList(II)V

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceAddDelAnimator:Lcom/samsung/android/animation/SemAddDeleteListAnimator;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mInsertPosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v6}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeletePosition:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;

    invoke-virtual {v7}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$UpdatePosition;->getSortedList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/animation/SemAddDeleteListAnimator;->setInsertDelete(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mDeviceListAdapter:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getPairedDeviceGroup()Lcom/samsung/android/settings/bluetooth/BluetoothDevicePreferenceGroup;

    move-result-object p2

    goto/16 :goto_0
.end method

.method public setListDivider(Landroid/graphics/drawable/InsetDrawable;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SemExpandableListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setListMinimumHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setMinimumHeight(I)V

    return-void
.end method

.method public setListViewVisible(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mExpandableListView:Landroid/widget/SemExpandableListView;

    invoke-virtual {v0, p1}, Landroid/widget/SemExpandableListView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListController;->mListener:Lcom/samsung/android/settings/bluetooth/BluetoothExpListController$OnListEventListener;

    return-void
.end method
