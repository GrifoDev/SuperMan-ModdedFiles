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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/content/Context;Lcom/samsung/android/share/SShareCommon;Landroid/content/Intent;ILjava/util/List;)V
    .locals 7
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

    const/4 v1, 0x1

    const/4 v6, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    iput v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    const/high16 v0, 0x42200000    # 40.0f

    iput v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    new-array v0, v1, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->ELLIPSIS_NORMAL:[C

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$1;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/share/SShareSimpleSharing$2;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    iput-object p4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;-><init>(Lcom/samsung/android/share/SShareSimpleSharing;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;I)V

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    new-array v0, v6, [J

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsId:[J

    new-array v0, v6, [I

    iput-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    iput-object p6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    return-void
.end method

.method private checkEasySignUpCertificated()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/samsung/android/share/SShareSignUpManager;->isJoined(Landroid/content/Context;I)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

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

    return-void
.end method

.method private checkRemoteShareServiceEnabled()V
    .locals 5

    const/4 v4, 0x1

    sget-boolean v1, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/share/SShareSignUpManager;->getServiceStatus(Landroid/content/Context;I)I

    move-result v0

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

    if-eq v0, v4, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    goto :goto_0
.end method

.method private checkSSharingRecentContactExisted()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mSSharingRecentContactExisted:Z

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

    return-void
.end method

.method private clearRecentHistoryList(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private getFontScale()F
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->fontScale:F

    const v1, 0x3f99999a    # 1.2f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    return v0
.end method

.method private getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    return-object v0
.end method

.method private getRecentIconType([BIJI)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    if-eq p5, v1, :cond_2

    if-ne p5, v2, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    if-le p2, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initRecentHistoryDefault()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10406dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4, v0}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v3}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-interface {v3, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private initRecentHistoryList()V
    .locals 51

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->clearRecentHistoryList(Z)V

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    const/4 v8, 0x1

    if-lt v7, v8, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050240

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050241

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00fe

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v27, v0

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

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10406dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v38

    new-instance v39, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v39

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getFontScale()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502c6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v0, v7

    move/from16 v17, v0

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

    const/16 v41, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    const/4 v7, 0x5

    move/from16 v0, v41

    if-ge v0, v7, :cond_18

    const/16 v35, 0x0

    const/16 v36, 0x0

    const-string/jumbo v24, ""

    const-string/jumbo v23, ""

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/CharSequence;

    const-string/jumbo v20, ""

    const-string/jumbo v19, ""

    const/16 v48, 0x0

    const/16 v31, 0x0

    new-instance v43, Landroid/text/TextPaint;

    invoke-direct/range {v43 .. v43}, Landroid/text/TextPaint;-><init>()V

    invoke-virtual/range {v43 .. v44}, Landroid/graphics/Paint;->setTextSize(F)V

    const-string/jumbo v7, "sec-roboto-light"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/4 v7, 0x1

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, v43

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, v43

    iput v7, v0, Landroid/text/TextPaint;->density:F

    if-eqz v15, :cond_4

    mul-float v7, v42, v27

    const/4 v8, 0x0

    sub-float v14, v7, v8

    :goto_2
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

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

    const/16 v31, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mGroupNameOldConcept:Z

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    const v8, 0x10406de

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

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

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    new-array v0, v0, [F

    move-object/from16 v33, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v6

    const/16 v25, 0x0

    :goto_4
    move/from16 v0, v25

    if-ge v0, v6, :cond_7

    aget v7, v33, v25

    add-float v48, v48, v7

    add-int/lit8 v25, v25, 0x1

    goto :goto_4

    :cond_3
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_4
    mul-float v7, v45, v27

    const/4 v8, 0x0

    sub-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    goto/16 :goto_2

    :cond_5
    if-eqz v31, :cond_6

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

    :cond_6
    move-object/from16 v19, v24

    goto :goto_3

    :cond_7
    if-eqz v15, :cond_b

    mul-float v7, v42, v27

    sub-float v14, v7, v48

    :goto_5
    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v29

    move-object/from16 v1, v43

    invoke-static {v0, v1, v14, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    if-eqz v15, :cond_d

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

    const/4 v7, 0x3

    move/from16 v0, v26

    if-ne v0, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListThumb:Ljava/util/List;

    move/from16 v0, v41

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/samsung/android/share/SShareSimpleSharing;->makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    :cond_a
    :goto_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsItemContactsCountInGroup:[I

    aget v7, v7, v41

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    move-object/from16 v4, v36

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    :goto_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_1

    :cond_b
    if-eqz v31, :cond_c

    mul-float v7, v45, v27

    sub-float v7, v7, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v14, v7, v8

    goto/16 :goto_5

    :cond_c
    mul-float v7, v45, v27

    sub-float v14, v7, v48

    goto/16 :goto_5

    :cond_d
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v30, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v43

    move-object/from16 v1, v30

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    move-result v13

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v21, 0x0

    const-string/jumbo v46, ""

    const-string/jumbo v47, ""

    const/16 v25, 0x0

    :goto_9
    move/from16 v0, v25

    if-ge v0, v13, :cond_e

    aget v7, v30, v25

    add-float v49, v49, v7

    cmpl-float v7, v49, v45

    if-ltz v7, :cond_10

    move/from16 v21, v25

    :cond_e
    move-object/from16 v35, v46

    if-lez v21, :cond_9

    if-eqz v31, :cond_11

    sub-float v7, v45, v48

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mTunedMargin:F

    sub-float v40, v7, v8

    :goto_a
    move/from16 v25, v21

    :goto_b
    move/from16 v0, v25

    if-ge v0, v13, :cond_f

    aget v7, v30, v25

    add-float v50, v50, v7

    cmpl-float v7, v50, v40

    if-ltz v7, :cond_12

    :cond_f
    if-eqz v31, :cond_13

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

    :goto_c
    move-object/from16 v36, v47

    goto/16 :goto_6

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

    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    :cond_11
    sub-float v40, v45, v48

    goto :goto_a

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

    add-int/lit8 v25, v25, 0x1

    goto :goto_b

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

    :cond_14
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListName:Ljava/util/ArrayList;

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/CharSequence;

    goto/16 :goto_6

    :cond_15
    const/4 v7, 0x2

    move/from16 v0, v26

    if-eq v0, v7, :cond_a

    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    const/4 v7, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v7

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/samsung/android/share/SShareSimpleSharing;->makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    goto/16 :goto_7

    :cond_16
    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    const/4 v7, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    move/from16 v2, v26

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsListCount:I

    if-nez v7, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10406dd

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v35

    new-instance v37, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-static {v7}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->-get0(Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    move-object/from16 v0, v37

    invoke-interface {v7, v8, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIndex:I

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private makeBitmapWithText(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105023c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105023d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v7, v8

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v4, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106012a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v2, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    int-to-float v8, v4

    div-float/2addr v8, v11

    int-to-float v9, v4

    div-float/2addr v9, v11

    int-to-float v10, v4

    div-float/2addr v10, v11

    invoke-virtual {v1, v8, v9, v10, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v6, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106012b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v6, p2, v9, v8, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    int-to-float v8, v4

    div-float/2addr v8, v11

    mul-int/lit8 v9, v4, 0x3

    int-to-float v9, v9

    const/high16 v10, 0x40800000    # 4.0f

    div-float/2addr v9, v10

    invoke-virtual {v1, p2, v8, v9, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v3, v8, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v3
.end method

.method private makeContactPhotoImage([B)Landroid/graphics/drawable/Drawable;
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return-object v11

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10804b4

    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    array-length v7, p1

    const/4 v8, 0x0

    invoke-static {p1, v8, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x1

    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v6, v10, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3, v10, v10, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v2, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method


# virtual methods
.method public buildUpSimpleSharingData()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->sendRequestRecentContactsHistoryList()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->initRecentHistoryDefault()V

    goto :goto_0
.end method

.method public getRecentHistoryIntent(I)Landroid/content/Intent;
    .locals 8

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;->getIntent()Landroid/content/Intent;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.coreapps.rshare.action.REQUESTSEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/Intent;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    aput-object v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    if-lez p1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    const-string/jumbo v5, "recipientdataids"

    iget-object v6, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecipientDataId:[Ljava/lang/String;

    add-int/lit8 v7, p1, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryIntent:Landroid/content/Intent;

    return-object v4
.end method

.method public getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    return-object v0
.end method

.method public hasExtraIntentUriInfo()Z
    .locals 4

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mExtraIntentList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public isEasySignUpCertificated()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/share/SShareSimpleSharing;->mEasySignUpCertificated:Z

    return v0
.end method

.method public isRemoteShareServiceEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    return v0
.end method

.method public recentHistoryDefaultGridItemClick(I)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.coreapps.easysignup.ACTION_REQ_AUTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "fromOOBE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "agreeMarketing"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "AuthRequestFrom"

    const-string/jumbo v3, "shareVia"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SShareSimpleSharing"

    const-string/jumbo v3, "Easy signUp agent is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public recentHistoryGridItemClick(I)V
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryListAdapter()Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mFeature:Lcom/samsung/android/share/SShareCommon;

    invoke-virtual {v4}, Lcom/samsung/android/share/SShareCommon;->getSupportLogging()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v3, Lcom/samsung/android/share/SShareLogging;

    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mOrigIntent:Landroid/content/Intent;

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/share/SShareLogging;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryInfo(I)Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;

    move-result-object v4

    iget v2, v4, Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListInfo;->iconType:I

    packed-switch v2, :pswitch_data_0

    const-string/jumbo v0, "personal"

    :goto_0
    const-string/jumbo v4, "EASY"

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/share/SShareLogging;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/share/SShareSimpleSharing;->getRecentHistoryIntent(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v0, "group"

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "SShareSimpleSharing"

    const-string/jumbo v5, "RecentHistoryGridItemClick : startActivity failed!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public registerRecentContactsReceiver()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkEasySignUpCertificated()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkSSharingRecentContactExisted()V

    invoke-direct {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->checkRemoteShareServiceEnabled()V

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->shouldShowRecentHistoryView()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRemoteShareServiceEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.coreapps.rshare.responserecentgroupcontacts"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    goto :goto_0
.end method

.method public sendRequestRecentContactsHistoryList()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/share/SShareSimpleSharing;->registerRecentContactsReceiver()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.coreapps.rshare.requestrecentgroupcontacts"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setSimpleSharingView(Landroid/widget/SemHorizontalListView;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentHistoryListAdapter:Lcom/samsung/android/share/SShareSimpleSharing$RecentHistoryListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/SemHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mGridRecentHistory:Landroid/widget/SemHorizontalListView;

    invoke-virtual {v0, p2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public shouldShowRecentHistoryView()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mRecentContactsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/share/SShareSimpleSharing;->mIsRecentContactsReceiverRegistered:Z

    :cond_0
    return-void
.end method
