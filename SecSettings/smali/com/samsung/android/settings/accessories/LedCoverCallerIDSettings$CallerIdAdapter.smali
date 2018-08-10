.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallerIdAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Landroid/content/Context;IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    if-nez p2, :cond_0

    const v2, 0x7f0d0173

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;-><init>()V

    const v2, 0x7f0a0146

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a014c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mName:Landroid/widget/TextView;

    const v2, 0x7f0a014a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCount:Landroid/widget/TextView;

    const v2, 0x7f0a0148

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    const v2, 0x7f0a0149

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    const v2, 0x7f0a014b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v2

    if-nez v2, :cond_1

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap0(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mName:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    const v4, 0x7f121afd

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mCallerIDCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get8(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-boolean v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mChecked:Z

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get3(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get5(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnTouchListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-get4(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    :goto_2
    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mArray:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;->-wrap1(Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDSettings$CallerIdAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;

    iget v2, v2, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDInfo;->mIcon:I

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mCheckArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, v0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$CallerIDListViewHolder;->mEdit:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    const-string/jumbo v2, "LedCoverCallerIDSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CallerIdAdapter getView, position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isEnabled(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
