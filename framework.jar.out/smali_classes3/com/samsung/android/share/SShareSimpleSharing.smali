.class public Lcom/samsung/android/share/SShareSimpleSharing;
.super Ljava/lang/Object;
.source "SShareSimpleSharing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/SShareSimpleSharing$1;,
        Lcom/samsung/android/share/SShareSimpleSharing$2;,
        Lcom/samsung/android/share/SShareSimpleSharing$DisplayDeviceInfo;,
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;,
        Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SShareSimpleSharing"

.field private static mEasySignUpCertificated:Z

.field private static mSSharingRecentContactExisted:Z


# instance fields
.field private final ELLIPSIS_NORMAL:[C

.field private defaultTextSize:F

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mExtraIntentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mFeature:Lcom/samsung/android/share/SShareCommon;

.field private mGridRecentHistory:Landroid/widget/SemHorizontalListView;

.field private mGroupNameOldConcept:Z

.field final mHandler:Landroid/os/Handler;

.field private mIsRecentContactsReceiverRegistered:Z

.field private mOrigIntent:Landroid/content/Intent;

.field private mRecentContactsId:[J

.field private mRecentContactsItemContactsCountInGroup:[I

.field private mRecentContactsListCount:I

.field private mRecentContactsListName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentContactsListThumb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

.field private mRecentHistoryIndex:I

.field mRecentHistoryIntent:Landroid/content/Intent;

.field private mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

.field private mRecipientDataId:[Ljava/lang/String;

.field private mRemoteShareServiceEnabled:Z

.field private mTunedMargin:F


# direct methods
.method static synthetic -get0(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/share/SShareSimpleSharing;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/share/SShareSimpleSharing;)[J
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/share/SShareSimpleSharing;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/share/SShareSimpleSharing;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/share/SShareSimpleSharing;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/share/SShareSimpleSharing;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/share/SShareSimpleSharing;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->defaultTextSize:F

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/share/SShareSimpleSharing;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/share/SShareSimpleSharing;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/share/SShareSimpleSharing;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/share/SShareSimpleSharing;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryList()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 69
    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    .line 70
    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "feature"    # Lcom/samsung/android/share/SShareCommon;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "Lcom/samsung/android/share/SShareCommon;",
            "Landroid/content/Intent;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p6, "extraIntentList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    const/4 v1, 0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 62
    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .line 63
    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    .line 67
    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    .line 71
    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    .line 78
    new-array v0, v1, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    .line 80
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$1;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    .line 105
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$2;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    .line 160
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    .line 161
    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    .line 163
    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    .line 164
    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    .line 165
    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    .line 166
    new-array v0, v6, [J

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    .line 167
    new-array v0, v6, [I

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    .line 168
    iput-object p6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    .line 171
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    .line 159
    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/share/SShareSignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    .line 370
    const-string/jumbo v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isJoined="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    return-void
.end method

.method private checkRemoteShareServiceEnabled()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 379
    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    .line 381
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareSignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

    .line 382
    .local v0, "retVal":I
    const-string/jumbo v1, "SShareSimpleSharing"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ServiceStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eq v0, v4, :cond_0

    .line 384
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    .line 378
    .end local v0    # "retVal":I
    :goto_0
    return-void

    .line 386
    .restart local v0    # "retVal":I
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0

    .line 389
    .end local v0    # "retVal":I
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    .prologue
    .line 374
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    .line 375
    const-string/jumbo v0, "SShareSimpleSharing"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRecentContactExisted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return-void
.end method

.method private clearRecentHistoryList(Z)V
    .locals 1
    .param p1, "bClearAll"    # Z

    .prologue
    .line 403
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 402
    :cond_0
    return-void
.end method

.method private getFontScale()F
    .locals 2

    .prologue
    .line 650
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 651
    .local v0, "fontScale":F
    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 652
    const v0, 0x3f99999a    # 1.2f

    .line 654
    :cond_0
    return v0
.end method

.method private getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 409
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    return-object v0
.end method

.method private getRecentIconType([BIJI)I
    .locals 3
    .param p1, "contactThumbArray"    # [B
    .param p2, "contactCount"    # I
    .param p3, "contactId"    # J
    .param p5, "devType"    # I

    .prologue
    const/4 v2, 0x1

    .line 597
    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    .line 599
    if-ne p5, v2, :cond_0

    .line 600
    const/4 v0, 0x4

    .line 617
    .local v0, "iconType":I
    :goto_0
    return v0

    .line 601
    .end local v0    # "iconType":I
    :cond_0
    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    .line 602
    const/4 v0, 0x5

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 604
    .end local v0    # "iconType":I
    :cond_1
    const/4 v0, 0x4

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 608
    .end local v0    # "iconType":I
    :cond_2
    if-eqz p1, :cond_3

    .line 609
    const/4 v0, 0x3

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 610
    .end local v0    # "iconType":I
    :cond_3
    if-le p2, v2, :cond_4

    .line 611
    const/4 v0, 0x2

    .restart local v0    # "iconType":I
    goto :goto_0

    .line 613
    .end local v0    # "iconType":I
    :cond_4
    const/4 v0, 0x1

    .restart local v0    # "iconType":I
    goto :goto_0
.end method

.method private initRecentHistoryDefault()V
    .locals 5

    .prologue
    .line 394
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 395
    .local v1, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 396
    .local v0, "recentHistoryDefaultIconDisplayLabel":Ljava/lang/CharSequence;
    new-instance v2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 397
    .local v2, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v3}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    iget v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 399
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 393
    return-void
.end method

.method private initRecentHistoryList()V
    .locals 51

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    if-nez v7, :cond_1

    .line 417
    :cond_0
    return-void

    .line 420
    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->clearRecentHistoryList(Z)V

    .line 422
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 423
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_17

    .line 424
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050240

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v45, v0

    .line 425
    .local v45, "textWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050241

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v42, v0

    .line 426
    .local v42, "textLandWidth":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v27, v0

    .line 427
    .local v27, "maxLineNum":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    const/4 v15, 0x1

    .line 428
    .local v15, "bLandscape":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10406dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    .line 429
    .local v38, "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    new-instance v39, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    .line 430
    .local v39, "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v39

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 431
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v22

    .line 435
    .local v22, "fontScale":F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v17, v0

    .line 436
    .local v17, "defaultSize":F
    mul-float v7, v17, v22

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9, v7, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v44

    .line 438
    .local v44, "textSize":F
    const/16 v41, 0x0

    .local v41, "tempContactsIndex":I
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    const/4 v7, 0x5

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    .line 439
    const/16 v35, 0x0

    .line 440
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 441
    .local v36, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    const-string/jumbo v24, ""

    .line 442
    .local v24, "groupNameOrg":Ljava/lang/String;
    const-string/jumbo v23, ""

    .line 443
    .local v23, "groupName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 446
    .local v34, "photoIcon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_14

    .line 447
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    .line 448
    .local v29, "nameStr":Ljava/lang/CharSequence;
    const-string/jumbo v20, ""

    .line 449
    .local v20, "emptyStr":Ljava/lang/CharSequence;
    const-string/jumbo v19, ""

    .line 451
    .local v19, "emptyGroupStr":Ljava/lang/String;
    const/16 v48, 0x0

    .line 452
    .local v48, "totalW":F
    const/16 v31, 0x0

    .line 454
    .local v31, "needEllipsis":Z
    new-instance v43, Landroid/text/TextPaint;

    invoke-direct/range {v43 .. v43}, Landroid/text/TextPaint;-><init>()V

    .line 455
    .local v43, "textPaint":Landroid/text/TextPaint;
    invoke-virtual/range {v43 .. v44}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 456
    const-string/jumbo v7, "sec-roboto-light"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 457
    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 458
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v43

    iput v7, v0, Landroid/text/TextPaint;->density:F

    .line 462
    if-eqz v15, :cond_4

    .line 463
    mul-float v7, v42, v27

    .line 451
    const/4 v8, 0x0

    .line 463
    sub-float v14, v7, v8

    .line 467
    .local v14, "availNameW":F
    :goto_2
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 469
    .local v18, "ellipsizedNameStr":Ljava/lang/CharSequence;
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v10, 0x0

    aget-char v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 470
    const/16 v31, 0x1

    .line 474
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v7, :cond_5

    .line 476
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const v8, 0x10406de

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 477
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v20, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v8, v8, v41

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    move-object/from16 v0, v24

    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 485
    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v32

    .line 486
    .local v32, "othersLength":I
    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v33, v0

    .line 487
    .local v33, "othersW":[F
    move-object/from16 v0, v43

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v6

    .line 490
    .local v6, "arrayNum":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_4
    move/from16 v0, v25

    if-ge v0, v6, :cond_7

    .line 491
    aget v7, v33, v25

    add-float v48, v48, v7

    .line 490
    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    .line 427
    .end local v6    # "arrayNum":I
    .end local v14    # "availNameW":F
    .end local v15    # "bLandscape":Z
    .end local v17    # "defaultSize":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v22    # "fontScale":F
    .end local v23    # "groupName":Ljava/lang/String;
    .end local v24    # "groupNameOrg":Ljava/lang/String;
    .end local v25    # "i":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v41    # "tempContactsIndex":I
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v44    # "textSize":F
    .end local v48    # "totalW":F
    :cond_3
    const/4 v15, 0x0

    .restart local v15    # "bLandscape":Z
    goto/16 :goto_0

    .line 465
    .restart local v17    # "defaultSize":F
    .restart local v19    # "emptyGroupStr":Ljava/lang/String;
    .restart local v20    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v22    # "fontScale":F
    .restart local v23    # "groupName":Ljava/lang/String;
    .restart local v24    # "groupNameOrg":Ljava/lang/String;
    .restart local v29    # "nameStr":Ljava/lang/CharSequence;
    .restart local v31    # "needEllipsis":Z
    .restart local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .restart local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .restart local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v41    # "tempContactsIndex":I
    .restart local v43    # "textPaint":Landroid/text/TextPaint;
    .restart local v44    # "textSize":F
    .restart local v48    # "totalW":F
    :cond_4
    mul-float v7, v45, v27

    .line 451
    const/4 v8, 0x0

    .line 465
    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    .restart local v14    # "availNameW":F
    goto/16 :goto_2

    .line 480
    .restart local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    :cond_5
    if-eqz v31, :cond_6

    .line 481
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v8, v8, v41

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 483
    :cond_6
    move-object/from16 v19, v24

    goto :goto_3

    .line 494
    .restart local v6    # "arrayNum":I
    .restart local v25    # "i":I
    .restart local v32    # "othersLength":I
    .restart local v33    # "othersW":[F
    :cond_7
    if-eqz v15, :cond_b

    .line 495
    mul-float v7, v42, v27

    sub-float v14, v7, v48

    .line 503
    :goto_5
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 505
    if-eqz v15, :cond_d

    .line 506
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v7, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v8, v9}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 509
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 561
    .end local v6    # "arrayNum":I
    .end local v14    # "availNameW":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v25    # "i":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v48    # "totalW":F
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v9, v7, v41

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    aget-wide v10, v7, v41

    const/4 v12, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentIconType([BIJI)I

    move-result v26

    .line 563
    .local v26, "iconType":I
    const/4 v7, 0x3

    move/from16 v0, v26

    if-ne v0, v7, :cond_15

    .line 564
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 575
    .end local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    .line 576
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .line 580
    .local v37, "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 581
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 438
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    .line 497
    .end local v26    # "iconType":I
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .restart local v6    # "arrayNum":I
    .restart local v14    # "availNameW":F
    .restart local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .restart local v19    # "emptyGroupStr":Ljava/lang/String;
    .restart local v20    # "emptyStr":Ljava/lang/CharSequence;
    .restart local v25    # "i":I
    .restart local v29    # "nameStr":Ljava/lang/CharSequence;
    .restart local v31    # "needEllipsis":Z
    .restart local v32    # "othersLength":I
    .restart local v33    # "othersW":[F
    .restart local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .restart local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v43    # "textPaint":Landroid/text/TextPaint;
    .restart local v48    # "totalW":F
    :cond_b
    if-eqz v31, :cond_c

    .line 498
    mul-float v7, v45, v27

    sub-float v7, v7, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    goto/16 :goto_5

    .line 500
    :cond_c
    mul-float v7, v45, v27

    sub-float v14, v7, v48

    goto/16 :goto_5

    .line 514
    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    .line 515
    .local v28, "nameLength":I
    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v30, v0

    .line 516
    .local v30, "nameW":[F
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v13

    .line 517
    .local v13, "arrayNum1":I
    const/16 v49, 0x0

    .line 518
    .local v49, "totalW1":F
    const/16 v50, 0x0

    .line 519
    .local v50, "totalW2":F
    const/16 v21, 0x0

    .line 520
    .local v21, "firstLineCount":I
    const-string/jumbo v46, ""

    .line 521
    .local v46, "tmpStr":Ljava/lang/String;
    const-string/jumbo v47, ""

    .line 523
    .local v47, "tmpStr2":Ljava/lang/String;
    const/16 v25, 0x0

    :goto_9
    move/from16 v0, v25

    if-ge v0, v13, :cond_e

    .line 524
    aget v7, v30, v25

    add-float v49, v49, v7

    .line 525
    cmpl-float v7, v49, v45

    if-ltz v7, :cond_10

    .line 526
    move/from16 v21, v25

    .line 531
    :cond_e
    move-object/from16 v35, v46

    .line 533
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    if-lez v21, :cond_9

    .line 535
    if-eqz v31, :cond_11

    .line 536
    sub-float v7, v45, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v40, v7, v8

    .line 540
    .local v40, "secondLineWidth":F
    :goto_a
    move/from16 v25, v21

    :goto_b
    move/from16 v0, v25

    if-ge v0, v13, :cond_f

    .line 541
    aget v7, v30, v25

    add-float v50, v50, v7

    .line 542
    cmpl-float v7, v50, v40

    if-ltz v7, :cond_12

    .line 548
    :cond_f
    if-eqz v31, :cond_13

    .line 549
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 554
    :goto_c
    move-object/from16 v36, v47

    .local v36, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 529
    .end local v40    # "secondLineWidth":F
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .local v36, "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 523
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 538
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    :cond_11
    sub-float v40, v45, v48

    .restart local v40    # "secondLineWidth":F
    goto :goto_a

    .line 545
    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    .line 540
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 551
    :cond_13
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    goto :goto_c

    .line 558
    .end local v6    # "arrayNum":I
    .end local v13    # "arrayNum1":I
    .end local v14    # "availNameW":F
    .end local v18    # "ellipsizedNameStr":Ljava/lang/CharSequence;
    .end local v19    # "emptyGroupStr":Ljava/lang/String;
    .end local v20    # "emptyStr":Ljava/lang/CharSequence;
    .end local v21    # "firstLineCount":I
    .end local v25    # "i":I
    .end local v28    # "nameLength":I
    .end local v29    # "nameStr":Ljava/lang/CharSequence;
    .end local v30    # "nameW":[F
    .end local v31    # "needEllipsis":Z
    .end local v32    # "othersLength":I
    .end local v33    # "othersW":[F
    .end local v40    # "secondLineWidth":F
    .end local v43    # "textPaint":Landroid/text/TextPaint;
    .end local v46    # "tmpStr":Ljava/lang/String;
    .end local v47    # "tmpStr2":Ljava/lang/String;
    .end local v48    # "totalW":F
    .end local v49    # "totalW1":F
    .end local v50    # "totalW2":F
    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    check-cast v35, Ljava/lang/CharSequence;

    .local v35, "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    goto/16 :goto_6

    .line 566
    .end local v36    # "recentHistoryDisplayLabel2":Ljava/lang/CharSequence;
    .restart local v26    # "iconType":I
    :cond_15
    const/4 v7, 0x2

    move/from16 v0, v26

    if-eq v0, v7, :cond_a

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 567
    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    .line 568
    .local v16, "c":C
    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 569
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/share/SShareSimpleSharing;->makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .local v34, "photoIcon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_7

    .line 578
    .end local v16    # "c":C
    .end local v34    # "photoIcon":Landroid/graphics/drawable/Drawable;
    :cond_16
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .restart local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    goto/16 :goto_8

    .line 584
    .end local v15    # "bLandscape":Z
    .end local v17    # "defaultSize":F
    .end local v22    # "fontScale":F
    .end local v23    # "groupName":Ljava/lang/String;
    .end local v24    # "groupNameOrg":Ljava/lang/String;
    .end local v26    # "iconType":I
    .end local v27    # "maxLineNum":F
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v38    # "remoteShareDisplayLabel":Ljava/lang/CharSequence;
    .end local v39    # "remoteShareItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .end local v41    # "tempContactsIndex":I
    .end local v42    # "textLandWidth":F
    .end local v44    # "textSize":F
    .end local v45    # "textWidth":F
    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    if-nez v7, :cond_18

    .line 585
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10406dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    .line 586
    .restart local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    .line 587
    .restart local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 588
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    .line 591
    .end local v35    # "recentHistoryDisplayLabel":Ljava/lang/CharSequence;
    .end local v37    # "recentHistoryItem":Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 412
    return-void
.end method

.method private makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    .line 621
    const/4 v3, 0x0

    .line 622
    .local v3, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105023c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 623
    .local v4, "iconSize":I
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105023d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    .line 625
    .local v7, "textSize":F
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 626
    .local v5, "textBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 628
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 629
    .local v2, "circlePaint":Landroid/graphics/Paint;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106012a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 630
    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 631
    int-to-float v8, v4

    div-float/2addr v8, v11

    int-to-float v9, v4

    div-float/2addr v9, v11

    int-to-float v10, v4

    div-float/2addr v10, v11

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 633
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 634
    .local v6, "textPaint":Landroid/graphics/Paint;
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 635
    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 636
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106012b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 639
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 640
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, p2, v9, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 642
    int-to-float v8, v4

    div-float/2addr v8, v11

    mul-int/lit8 v9, v4, 0x3

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, p2, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 644
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 646
    .local v3, "drawableIcon":Landroid/graphics/drawable/Drawable;
    return-object v3
.end method

.method private makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;
    .locals 12
    .param p1, "contactsThumbnailByteArray"    # [B

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 658
    if-nez p1, :cond_0

    .line 659
    return-object v11

    .line 662
    :cond_0
    const/4 v3, 0x0

    .line 663
    .local v3, "mask":Landroid/graphics/Bitmap;
    const/4 v0, 0x0

    .line 664
    .local v0, "bm":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 665
    .local v6, "photo":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 666
    .local v4, "orgThumb":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 668
    .local v2, "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 669
    const v8, 0x10804b4

    .line 668
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 671
    .local v3, "mask":Landroid/graphics/Bitmap;
    array-length v7, p1

    const/4 v8, 0x0

    invoke-static {p1, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 673
    .local v4, "orgThumb":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 675
    .local v6, "photo":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 677
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 678
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v1, v6, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 680
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 681
    .local v5, "paint":Landroid/graphics/Paint;
    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 682
    invoke-virtual {v1, v3, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 683
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 685
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2    # "drawableIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 686
    .local v2, "drawableIcon":Landroid/graphics/drawable/Drawable;
    return-object v2
.end method


# virtual methods
.method public buildUpSimpleSharingData()V
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->sendRequestRecentContactsHistoryList()V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 257
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 253
    :goto_0
    return-void

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryDefault()V

    goto :goto_0
.end method

.method public getRecentHistoryIntent(I)Landroid/content/Intent;
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 288
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 289
    .local v3, "targetIntent":Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    .line 290
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 291
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 295
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 297
    .local v2, "nSize":I
    new-array v1, v2, [Landroid/content/Intent;

    .line 298
    .local v1, "initialIntents":[Landroid/content/Intent;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 299
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 304
    .end local v0    # "i":I
    .end local v1    # "initialIntents":[Landroid/content/Intent;
    .end local v2    # "nSize":I
    :cond_1
    if-lez p1, :cond_2

    .line 305
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "recipientdataids"

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    return-object v0
.end method

.method public hasExtraIntentUriInfo()Z
    .locals 4

    .prologue
    .line 223
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 227
    .local v0, "extraBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "extraBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 229
    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "uri":Landroid/net/Uri;
    check-cast v2, Landroid/net/Uri;

    .line 230
    .local v2, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 231
    const/4 v3, 0x1

    return v3

    .line 224
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "extraBundle":Landroid/os/Bundle;
    .end local v1    # "i":I
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    .prologue
    .line 274
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isRemoteShareServiceEnabled()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    return v0
.end method

.method public recentHistoryDefaultGridItemClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 348
    packed-switch p1, :pswitch_data_0

    .line 347
    :goto_0
    return-void

    .line 350
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 352
    const-string/jumbo v2, "fromOOBE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 353
    const-string/jumbo v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 354
    const-string/jumbo v2, "AuthRequestFrom"

    const-string/jumbo v3, "shareVia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 356
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "SShareSimpleSharing"

    const-string/jumbo v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public recentHistoryGridItemClick(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    .line 316
    return-void

    .line 320
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 322
    new-instance v3, Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 323
    .local v3, "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-result-object v4

    iget v2, v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    .line 325
    .local v2, "iconType":I
    packed-switch v2, :pswitch_data_0

    .line 330
    const-string/jumbo v0, "personal"

    .line 334
    .local v0, "detailInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "EASY"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v2    # "iconType":I
    .end local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_1
    return-void

    .line 327
    .restart local v2    # "iconType":I
    .restart local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :pswitch_0
    const-string/jumbo v0, "group"

    .restart local v0    # "detailInfo":Ljava/lang/String;
    goto :goto_0

    .line 339
    .end local v0    # "detailInfo":Ljava/lang/String;
    .end local v2    # "iconType":I
    .end local v3    # "sshareLogging":Lcom/samsung/android/share/SShareLogging;
    :catch_0
    move-exception v1

    .line 340
    .local v1, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "SShareSimpleSharing"

    const-string/jumbo v5, "RecentHistoryGridItemClick : startActivity failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public registerRecentContactsReceiver()V
    .locals 3

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    goto :goto_0
.end method

.method public sendRequestRecentContactsHistoryList()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public setSimpleSharingView(Landroid/widget/SemHorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SemHorizontalListView;
    .param p2, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    .line 244
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 246
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 242
    :cond_0
    return-void
.end method

.method public shouldShowRecentHistoryView()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterRecentContactsReceiver()V
    .locals 2

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    .line 212
    :cond_0
    return-void
.end method
