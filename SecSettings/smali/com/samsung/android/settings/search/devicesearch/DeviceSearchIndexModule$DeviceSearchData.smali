.class Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;
.super Ljava/lang/Object;
.source "DeviceSearchIndexModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceSearchData"
.end annotation


# instance fields
.field mBundleBytes:[B

.field mCategoryId:Ljava/lang/String;

.field mIcon:Landroid/net/Uri;

.field mIconColor:I

.field mIconResStr:I

.field mId:Ljava/lang/String;

.field mKey:Ljava/lang/String;

.field mMenuPath:Ljava/lang/String;

.field mMenuType:I

.field mObjectId:J

.field mRootMenu:Ljava/lang/String;

.field mSummaryOn:Ljava/lang/String;

.field mTitle:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[BLandroid/net/Uri;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mSummaryOn:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIconResStr:I

    iput-object p4, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mCategoryId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mKey:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuType:I

    iput-wide p8, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mObjectId:J

    iput-object p10, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mId:Ljava/lang/String;

    iput-object p11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mBundleBytes:[B

    iput-object p12, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIcon:Landroid/net/Uri;

    iput p13, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIconColor:I

    iput-object p14, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[BLandroid/net/Uri;ILjava/lang/String;Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;)V
    .locals 0

    invoke-direct/range {p0 .. p14}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[BLandroid/net/Uri;ILjava/lang/String;)V

    return-void
.end method
