.class Lcom/android/systemui/tuner/NavBarTuner$Holder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "NavBarTuner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/NavBarTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field private title:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/tuner/NavBarTuner$Holder;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$Holder;->title:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/tuner/NavBarTuner$Holder;->title:Landroid/widget/TextView;

    return-void
.end method
