.class Landroid/support/v17/leanback/app/ListRowDataAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;,
        Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field mLastVisibleRowIndex:I


# direct methods
.method static synthetic -wrap0(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 2

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    iput-object p1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->isImmediateNotifySupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$SimpleDataObserver;-><init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;-><init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->registerObserver(Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;)V

    goto :goto_0
.end method


# virtual methods
.method doNotify(III)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid event type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeChanged(II)V

    :goto_0
    return-void

    :sswitch_1
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeInserted(II)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, p2, p3}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyItemRangeRemoved(II)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->notifyChanged()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method initialize()V
    .locals 3

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/Row;->isRenderedAsRowView()Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter;->mLastVisibleRowIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
