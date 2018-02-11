.class final Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;
.super Ljava/lang/Object;
.source "DndTile.java"

# interfaces
.implements Lcom/android/systemui/qs/QSTile$DetailAdapter;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DndTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DndDetailAdapter"
.end annotation


# instance fields
.field private mSummary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DndTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/DndTile;Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/DndTile;)V

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get2(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f1301fe

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->mSummary:Landroid/widget/TextView;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_USA_POPUP:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0f0439

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-object p2

    :cond_0
    const v0, 0x7f0f0438

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x95

    return v0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/android/systemui/qs/tiles/DndTile;->-get0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get2(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0437

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/DndTile;->-set0(Lcom/android/systemui/qs/tiles/DndTile;Z)Z

    return-void
.end method

.method public setToggleState(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get2(Lcom/android/systemui/qs/tiles/DndTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DndTile$DndDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/DndTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/DndTile;->-get4(Lcom/android/systemui/qs/tiles/DndTile;)Lcom/android/systemui/qs/QSTile$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/qs/tiles/DndTile;->-wrap1(Lcom/android/systemui/qs/tiles/DndTile;Z)V

    return p1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
