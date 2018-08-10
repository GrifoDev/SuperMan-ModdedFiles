.class Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowViewHolder"
.end annotation


# instance fields
.field final cells:[Landroid/view/View;

.field itemIndices:[I

.field mIsAlwaysShow:Z

.field mIsSkipCollapsibleHeight:Z

.field measuredRowHeight:I

.field final row:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    new-array v0, p2, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsAlwaysShow:Z

    iput-boolean v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsSkipCollapsibleHeight:Z

    return-void
.end method


# virtual methods
.method public measure()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, v0}, Landroid/view/ViewGroup;->measure(II)V

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    return-void
.end method

.method public semIsAlwaysShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsAlwaysShow:Z

    return v0
.end method

.method public semIsSkipCollapsibleHeightRow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsSkipCollapsibleHeight:Z

    return v0
.end method

.method public semSetAlwaysShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsAlwaysShow:Z

    return-void
.end method

.method public semSkipCollapsibleHeightRow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->mIsSkipCollapsibleHeight:Z

    return-void
.end method
