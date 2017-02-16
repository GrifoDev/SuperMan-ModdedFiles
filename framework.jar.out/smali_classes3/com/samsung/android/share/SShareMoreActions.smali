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
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "window"    # Landroid/view/Window;
    .param p5, "referrer"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 51
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->bottomPanelExpaned:Z

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 56
    iput v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 59
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 65
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    .line 67
    iput-object p4, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    .line 68
    iput-object p3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 69
    iput-object p5, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    .line 72
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 73
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 74
    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 75
    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z

    .line 64
    :cond_0
    return-void
.end method

.method private checkAPConnection()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 268
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 269
    .local v1, "ni_wifi":Landroid/net/NetworkInfo;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 271
    .local v2, "ni_wifiDirect":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1

    .line 273
    :cond_0
    return v5

    .line 272
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v3, v4, :cond_0

    .line 275
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private checkScreenMirroringRunning()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 291
    iget-object v1, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 293
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 294
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 295
    :cond_0
    return v3

    .line 297
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private checkScreenSharingCondition()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 281
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    return v0

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 286
    iget-object v2, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v2}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 287
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenMirroringRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 285
    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    .line 287
    goto :goto_0
.end method

.method private getSharePanelVisibieHeight()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    return v0
.end method

.method private isKnoxMode()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareCommon;->isKnoxModeEnabled()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public setMoreActionsView(Landroid/view/ViewGroup;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 11
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    const v10, 0x108072e

    const/16 v9, 0x68

    const/16 v8, 0x67

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 85
    if-nez p1, :cond_0

    .line 87
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 93
    .local v1, "isAPConnected":Z
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkAPConnection()Z

    move-result v1

    .line 94
    .local v1, "isAPConnected":Z
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getSupportEnhancedMoreActions()Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 95
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0100

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 97
    .local v2, "maxColumnsMoreActions":I
    const-string/jumbo v3, "SShareMoreActions"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAPConnected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    const-string/jumbo v5, " mSupportEnhancedMoreActions = "

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 98
    iget-boolean v5, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 99
    const-string/jumbo v5, " maxColumnsMoreActions = "

    .line 97
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    .line 102
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomPanel:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    .line 106
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v3, :cond_5

    .line 107
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 108
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080803

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 109
    .local v0, "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 112
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e6

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080802

    invoke-direct {v0, v8, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 113
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_2
    :goto_0
    new-instance v3, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    const v6, 0x1090104

    invoke-direct {v3, p0, v4, v6, v5}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;-><init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    .line 139
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mWindow:Landroid/view/Window;

    const v4, 0x10204bb

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    iput-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    .line 141
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 142
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 143
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    invoke-virtual {v3, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 147
    iget-boolean v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 148
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mGridMoreActions:Landroid/widget/GridView;

    iget-object v4, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 84
    :cond_4
    return-void

    .line 116
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getChangePlayerEnable()I

    move-result v3

    if-ne v3, v6, :cond_6

    if-eqz v1, :cond_6

    .line 117
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x65

    const v5, 0x1080afa

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 118
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getScreenMirroringEnable()I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 121
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x66

    invoke-direct {v0, v4, v10, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 122
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->checkScreenSharingCondition()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 125
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    const-string/jumbo v3, "Smart View"

    invoke-direct {v0, v8, v10, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 126
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v3

    if-ne v3, v6, :cond_9

    .line 129
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x10806eb

    invoke-direct {v0, v9, v4, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 130
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    :cond_9
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v3}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 133
    new-instance v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    const v4, 0x10406e4

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x69

    const v5, 0x10806b5

    invoke-direct {v0, v4, v5, v3}, Lcom/samsung/android/share/SShareMoreActions$ActionItem;-><init>(IILjava/lang/String;)V

    .line 134
    .restart local v0    # "ai":Lcom/samsung/android/share/SShareMoreActions$ActionItem;
    iget-object v3, p0, Lcom/samsung/android/share/SShareMoreActions;->arItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setSharePanelVisibleHeight(I)V
    .locals 0
    .param p1, "pHeight"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/samsung/android/share/SShareMoreActions;->mSharePanelVisibleHeight:I

    .line 303
    return-void
.end method

.method public startMoreActions(ILandroid/content/Intent;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "origIntent"    # Landroid/content/Intent;

    .prologue
    .line 159
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mBottomAdapter:Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;

    invoke-virtual {v7, p1}, Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;->getItemActionId(I)I

    move-result v0

    .line 163
    .local v0, "actionID":I
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 165
    new-instance v5, Lcom/samsung/android/share/SShareLogging;

    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-direct {v5, v7, p2}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    .local v5, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    packed-switch v0, :pswitch_data_0

    .line 184
    const-string/jumbo v1, "Wrong ID"

    .line 189
    .local v1, "detailInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v7, "MORE"

    invoke-virtual {v5, v7, v1}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v5    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_0
    packed-switch v0, :pswitch_data_1

    .line 156
    :goto_1
    return-void

    .line 169
    .restart local v5    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string/jumbo v1, "Change Player"

    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 172
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v1, "Screen Mirroring"

    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 175
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v1, "Smart View"

    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 178
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v1, "Nearby sharing"

    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 181
    .end local v1    # "detailInfo":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v1, "Print"

    .restart local v1    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 195
    .end local v1    # "detailInfo":Ljava/lang/String;
    .end local v5    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_5
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.CHANGE_PLAYER_VIA_EASY_SHARE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 254
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 255
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v7, "SShareMoreActions"

    const-string/jumbo v8, "MoreActions : ActivityNotFoundException !!! "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 201
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_6
    :try_start_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    const-string/jumbo v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 204
    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v7, "more_actions_screen_sharing_mode"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getScreenSharingEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v7, "more_actions_knox_state"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->isKnoxMode()Z

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 207
    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 213
    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 256
    .end local v4    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v3

    .line 257
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "SShareMoreActions"

    const-string/jumbo v8, "MoreActions : Exception !!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 219
    .end local v3    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_2
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v7, p2}, Lcom/samsung/android/share/SShareCommon;->isIntentFileUriScheme(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 221
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const-string/jumbo v7, "*/*"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v4, v7, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    :goto_2
    const-string/jumbo v7, "extra_height"

    invoke-direct {p0}, Lcom/samsung/android/share/SShareMoreActions;->getSharePanelVisibieHeight()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-boolean v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mSupportEnhancedMoreActions:Z

    if-eqz v7, :cond_1

    .line 233
    const-string/jumbo v7, "more_actions_print"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getPrintEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    const-string/jumbo v7, "more_actions_quick_connect"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v8}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
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

    .line 238
    const-string/jumbo v9, "mFeature.getQuickConnectEnable()= "

    .line 237
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 238
    iget-object v9, p0, Lcom/samsung/android/share/SShareMoreActions;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v9}, Lcom/samsung/android/share/SShareCommon;->getQuickConnectEnable()I

    move-result v9

    .line 237
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mActivity:Landroid/app/Activity;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v8}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 226
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 227
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "com.samsung.android.oneconnect"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    const-string/jumbo v7, "com.samsung.android.oneconnect.action.DEVICE_PICKER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 243
    .end local v4    # "intent":Landroid/content/Intent;
    :pswitch_8
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 244
    .local v6, "stream":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MOBILE_PRINT_VIA_EASY_SHARE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v7, "more_actions_package_name"

    iget-object v8, p0, Lcom/samsung/android/share/SShareMoreActions;->mLaunchedFromPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v7, "android.intent.extra.STREAM"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    iget-object v7, p0, Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 167
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 193
    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
