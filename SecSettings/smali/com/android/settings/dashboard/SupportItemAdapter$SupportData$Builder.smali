.class Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
.super Ljava/lang/Object;
.source "SupportItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private mIcon:I

.field private mIntent:Landroid/content/Intent;

.field private mMetricsEvent:I

.field private mTileSummary:Ljava/lang/CharSequence;

.field private mTileTitle:I

.field private mTileTitleDescription:Ljava/lang/CharSequence;

.field private final mType:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mIcon:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mMetricsEvent:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileTitle:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileTitleDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mType:I

    return v0
.end method

.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mMetricsEvent:I

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mType:I

    return-void
.end method


# virtual methods
.method build()Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;
    .locals 2

    new-instance v0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;-><init>(Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;Lcom/android/settings/dashboard/SupportItemAdapter$SupportData;)V

    return-object v0
.end method

.method setIcon(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mIcon:I

    return-object p0
.end method

.method setIntent(Landroid/content/Intent;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method setMetricsEvent(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mMetricsEvent:I

    return-object p0
.end method

.method setTileSummary(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setTileSummary(Ljava/lang/CharSequence;)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileSummary:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setTileTitle(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 0

    iput p1, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileTitle:I

    return-object p0
.end method

.method setTileTitleDescription(I)Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/SupportItemAdapter$SupportData$Builder;->mTileTitleDescription:Ljava/lang/CharSequence;

    return-object p0
.end method
