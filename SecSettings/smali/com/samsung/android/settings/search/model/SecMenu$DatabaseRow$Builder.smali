.class public Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
.super Ljava/lang/Object;
.source "SecMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCategoryId:Ljava/lang/String;

.field private mChildClassName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mEnabled:Z

.field private mEntries:Ljava/lang/String;

.field private mIconResId:I

.field private mIntentAction:Ljava/lang/String;

.field private mIntentTargetClass:Ljava/lang/String;

.field private mIntentTargetPackage:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mMenuPath:Ljava/lang/String;

.field private mMenuType:I

.field private mNormalizedSummaryOff:Ljava/lang/String;

.field private mNormalizedSummaryOn:Ljava/lang/String;

.field private mNormalizedTitle:Ljava/lang/String;

.field private mPayload:Lcom/android/settings/search2/ResultPayload;

.field private mPayloadType:I

.field private mRank:I

.field private mRankPath:Ljava/lang/String;

.field private mScreenTitle:Ljava/lang/String;

.field private mSpaceDelimitedKeywords:Ljava/lang/String;

.field private mUpdatedSummaryOff:Ljava/lang/String;

.field private mUpdatedSummaryOn:Ljava/lang/String;

.field private mUpdatedTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mChildClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mMenuPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mMenuType:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayloadType:I

    return v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mRank:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mRankPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mSpaceDelimitedKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mEntries:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIconResId:I

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIconResId:I

    return p1
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mRank:I

    iput v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mMenuType:I

    return-void
.end method

.method private setPayloadType(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayloadType:I

    return-object p0
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;-><init>(Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCategoryId(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mCategoryId:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setIconResId(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIconResId:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method public setMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mMenuPath:Ljava/lang/String;

    return-object p0
.end method

.method public setMenuType(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mMenuType:I

    return-object p0
.end method

.method public setNormalizedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    invoke-virtual {v0}, Lcom/android/settings/search2/ResultPayload;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setPayloadType(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    :cond_0
    return-object p0
.end method

.method public setRank(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mRank:I

    return-object p0
.end method

.method public setRankPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mRankPath:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOff(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->mUserId:I

    return-object p0
.end method
