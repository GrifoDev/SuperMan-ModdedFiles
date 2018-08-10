.class public Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChildClassName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mEnabled:Z

.field private mEntries:Ljava/lang/String;

.field private mIconResId:I

.field private mIntentAction:Ljava/lang/String;

.field private mIntentTargetClass:Ljava/lang/String;

.field private mIntentTargetPackage:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mLocale:Ljava/lang/String;

.field private mNormalizedSummaryOff:Ljava/lang/String;

.field private mNormalizedSummaryOn:Ljava/lang/String;

.field private mNormalizedTitle:Ljava/lang/String;

.field private mPayload:Lcom/android/settings/search2/ResultPayload;

.field private mPayloadType:I

.field private mRank:I

.field private mScreenTitle:Ljava/lang/String;

.field private mSpaceDelimitedKeywords:Ljava/lang/String;

.field private mUpdatedSummaryOff:Ljava/lang/String;

.field private mUpdatedSummaryOn:Ljava/lang/String;

.field private mUpdatedTitle:Ljava/lang/String;

.field private mUserId:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mChildClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Lcom/android/settings/search2/ResultPayload;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayloadType:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mRank:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mSpaceDelimitedKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mEnabled:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUserId:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mEntries:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIconResId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setPayloadType(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayloadType:I

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;
    .locals 2

    new-instance v0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;-><init>(Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;)V

    return-object v0
.end method

.method public setChildClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mChildClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setEnabled(Z)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mEnabled:Z

    return-object p0
.end method

.method public setEntries(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method public setIconResId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIconResId:I

    return-object p0
.end method

.method public setIntentAction(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentAction:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetClass:Ljava/lang/String;

    return-object p0
.end method

.method public setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mIntentTargetPackage:Ljava/lang/String;

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mLocale:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedSummaryOff(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedSummaryOn(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setNormalizedTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mNormalizedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 1

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mPayload:Lcom/android/settings/search2/ResultPayload;

    invoke-virtual {v0}, Lcom/android/settings/search2/ResultPayload;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setPayloadType(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    :cond_0
    return-object p0
.end method

.method public setRank(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mRank:I

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mScreenTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setSpaceDelimitedKeywords(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mSpaceDelimitedKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOff(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOff:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedSummaryOn(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedSummaryOn:Ljava/lang/String;

    return-object p0
.end method

.method public setUpdatedTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUpdatedTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUserId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->mUserId:I

    return-object p0
.end method
