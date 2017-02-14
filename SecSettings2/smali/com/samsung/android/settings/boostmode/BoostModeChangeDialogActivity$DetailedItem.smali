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
.field public mStatus:Ljava/lang/String;

.field public mSummary:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/boostmode/BoostModeChangeDialogActivity$DetailedItem;->mStatus:Ljava/lang/String;

    return-void
.end method
