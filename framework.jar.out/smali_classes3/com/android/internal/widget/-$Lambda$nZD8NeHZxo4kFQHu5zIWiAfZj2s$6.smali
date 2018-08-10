.class final synthetic Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    iget-object v1, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;->-$f0:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;->-$f1:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->lambda$-com_android_internal_widget_FloatingToolbar$FloatingToolbarPopup_119982(Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup$OverflowPanel;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s$6;->$m$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
