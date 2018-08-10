.class public Lcom/android/systemui/tuner/LockscreenFragment$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "LockscreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/LockscreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/systemui/tuner/LockscreenFragment$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Lcom/android/systemui/tuner/LockscreenFragment$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/tuner/LockscreenFragment$Item;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public addItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->notifyItemInserted(I)V

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_tuner_LockscreenFragment$Adapter_10215(Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->toggleExpando(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_tuner_LockscreenFragment$Adapter_9881(Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mCallback:Ljava/util/function/Consumer;

    iget-object v0, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->getAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-interface {v1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->onBindViewHolder(Lcom/android/systemui/tuner/LockscreenFragment$Holder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/systemui/tuner/LockscreenFragment$Holder;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/tuner/LockscreenFragment$Item;->getExpando()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setExpanded(Z)V

    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    new-instance v3, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$3;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$3;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;->expand:Lcom/android/systemui/statusbar/phone/ExpandableIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ExpandableIndicator;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/systemui/tuner/LockscreenFragment$Holder;
    .locals 4

    new-instance v0, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01c8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/LockscreenFragment$Holder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public remItem(Lcom/android/systemui/tuner/LockscreenFragment$Item;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->notifyItemRemoved(I)V

    return-void
.end method
