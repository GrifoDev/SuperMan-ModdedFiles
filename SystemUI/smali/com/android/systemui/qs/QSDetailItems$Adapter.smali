.class Lcom/android/systemui/qs/QSDetailItems$Adapter;
.super Landroid/widget/BaseAdapter;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSDetailItems;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSDetailItems;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSDetailItems;Lcom/android/systemui/qs/QSDetailItems$Adapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSDetailItems$Adapter;-><init>(Lcom/android/systemui/qs/QSDetailItems;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v0}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get2(Lcom/android/systemui/qs/QSDetailItems;)[Lcom/android/systemui/qs/QSDetailItems$Item;

    move-result-object v6

    aget-object v1, v6, p1

    if-nez p2, :cond_0

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0d0144

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get3(Lcom/android/systemui/qs/QSDetailItems;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    :goto_0
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    const v6, 0x1020006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon:I

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewOverlay;->clear()V

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_1

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v7}, Lcom/android/systemui/qs/QSDetailItems;->-get4(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v8}, Lcom/android/systemui/qs/QSDetailItems;->-get4(Lcom/android/systemui/qs/QSDetailItems;)I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-boolean v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0804c8

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    if-eqz v6, :cond_3

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->overlay:Landroid/graphics/drawable/Drawable;

    iget v7, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    const v6, 0x1020016

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line1:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060150

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0053

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_1
    const v6, 0x1020010

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v5, v6, 0x1

    if-eqz v5, :cond_7

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v5, :cond_8

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_9

    iget-object v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->line2:Ljava/lang/CharSequence;

    :goto_4
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$1;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {p2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x1020008

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-boolean v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->canDisconnect:Z

    if-eqz v6, :cond_a

    const v6, 0x7f08029a

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    new-instance v6, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;

    invoke-direct {v6, p0, v1}, Lcom/android/systemui/qs/QSDetailItems$Adapter$2;-><init>(Lcom/android/systemui/qs/QSDetailItems$Adapter;Lcom/android/systemui/qs/QSDetailItems$Item;)V

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-object p2

    :cond_4
    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/qs/QSDetailItems$Adapter;->this$0:Lcom/android/systemui/qs/QSDetailItems;

    invoke-static {v6}, Lcom/android/systemui/qs/QSDetailItems;->-get1(Lcom/android/systemui/qs/QSDetailItems;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-boolean v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->isActive:Z

    if-eqz v6, :cond_6

    const v6, 0x7f060150

    :goto_6
    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    :cond_6
    const v6, 0x7f06015c

    goto :goto_6

    :cond_7
    const/4 v6, 0x2

    goto :goto_2

    :cond_8
    const/16 v6, 0x8

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    :cond_a
    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v6, v1, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_5

    :cond_b
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5
.end method
