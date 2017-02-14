.class Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;
.super Ljava/lang/Object;
.source "PowerModeChangeDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity;
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

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mSummary:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/powersaving/PowerModeChangeDialogActivity$DetailedItem;->mStatus:Ljava/lang/String;

    return-void
.end method
