.class Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;
.super Ljava/lang/Object;
.source "BoostModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailedItem"
.end annotation


# instance fields
.field public mEntries:[Ljava/lang/String;

.field public mKey:Ljava/lang/String;

.field public mStatus:I

.field public mSummary:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mType:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mStatus:I

    iput p4, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mType:I

    iput-object p5, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mEntries:[Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mKey:Ljava/lang/String;

    return-void
.end method
