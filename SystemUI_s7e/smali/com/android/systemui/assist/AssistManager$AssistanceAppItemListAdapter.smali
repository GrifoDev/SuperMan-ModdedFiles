.class public Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AssistManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/assist/AssistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AssistanceAppItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResourceId:I

.field private mSelectedItem:I

.field final synthetic this$0:Lcom/android/systemui/assist/AssistManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    return-void
.end method


# virtual methods
.method public getSelectedItem()Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;
    .locals 1

    iget v0, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    move-object v3, p2

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->this$0:Lcom/android/systemui/assist/AssistManager;

    invoke-static {v5}, Lcom/android/systemui/assist/AssistManager;->-get2(Lcom/android/systemui/assist/AssistManager;)Landroid/view/LayoutInflater;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mResourceId:I

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;

    if-eqz v2, :cond_3

    const v5, 0x7f1300bf

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    const v5, 0x7f1300c0

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v5, 0x7f1300c1

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemList;->getAssistanceAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    if-ne v5, p1, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    invoke-virtual {v0, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0
.end method

.method public setSelectedItem(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/assist/AssistManager$AssistanceAppItemListAdapter;->mSelectedItem:I

    return-void
.end method
