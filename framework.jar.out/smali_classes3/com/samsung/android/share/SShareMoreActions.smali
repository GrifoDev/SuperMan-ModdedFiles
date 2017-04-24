.class public Lcom/samsung/android/share/SShareMoreActions;
.super Ljava/lang/Object;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareMoreActions$ActionItem;,
        Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareMoreActions"


# instance fields
.field private arItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field private bottomPanelExpaned:Z

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

.field private mBottomPanel:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mEnabledShowBtnBg:Z

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridMoreActions:Landroid/widget/GridView;

.field private mLaunchedFromPackage:Ljava/lang/String;

.field private mSharePanelVisibleHeight:I

.field private mSupportEnhancedMoreActions:Z

.field private mWindow:Landroid/view/Window;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareMoreActions;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/share/SShareMoreActions;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/share/SShareMoreActions;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F

    return p1
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/view/Window;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->wifiManager:Landroid/net/wifi/WifiManager;

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->bottomPanelExpaned:Z

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    iput v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    iput-object p3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p5, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    :cond_0
    return-void
.end method

.method private checkAPConnection()Z
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    :cond_0
    return v5

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private checkScreenMirroringRunning()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkScreenSharingCondition()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenMirroringRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private getSharePanelVisibieHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    return v0
.end method

.method private isKnoxMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 11

    const v10, 0x108072e

    const/16 v9, 0x68

    const/16 v8, 0x67

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkAPConnection()Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getSupportEnhancedMoreActions()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string/jumbo v3, "SShareMoreActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAPConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mSupportEnhancedMoreActions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxColumnsMoreActions = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_1

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080803

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080802

    invoke-direct {v0, v8, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    new-instance v3, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    const v6, 0x1090104

    invoke-direct {v3, p0, v4, v6, v5}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;-><init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    const v4, 0x10204bb

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v6, :cond_6

    if-eqz v1, :cond_6

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    const v5, 0x1080af9

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenMirroringEnable()I

    move-result v3

    if-ne v3, v6, :cond_7

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v0, v4, v10, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const-string/jumbo v3, "Smart View"

    invoke-direct {v0, v8, v10, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_9

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10806eb

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v3

    if-ne v3, v6, :cond_2

    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    const v5, 0x10806b5

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setSharePanelVisibleHeight(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    return-void
.end method

.method public startMoreActions(ILandroid/content/Intent;)V
    .locals 10

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v5, Lcom/samsung/android/share/SShareLogging;

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, p2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v1, "Wrong ID"

    :goto_0
    const-string/jumbo v7, "MORE"

    invoke-virtual {v5, v7, v1}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    packed-switch v0, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v1, "Change Player"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v1, "Screen Mirroring"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v1, "Smart View"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v1, "Nearby sharing"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v1, "Print"

    goto :goto_0

    :pswitch_5
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v7, "SShareMoreActions"

    const-string/jumbo v8, "MoreActions : ActivityNotFoundException !!! "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_6
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_screen_sharing_mode"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_knox_state"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->isKnoxMode()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v7, "SShareMoreActions"

    const-string/jumbo v8, "MoreActions : Exception !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    :pswitch_7
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7, p2}, Lcom/samsung/android/share/SShareCommon;->isIntentFileUriScheme(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "*/*"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_2
    const-string/jumbo v7, "extra_height"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->getSharePanelVisibieHeight()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "more_actions_print"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_quick_connect"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v7, "SShareMoreActions"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mFeature.getPrintEnable()= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v9}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mFeature.getQuickConnectEnable()= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v9}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v7, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_8
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
