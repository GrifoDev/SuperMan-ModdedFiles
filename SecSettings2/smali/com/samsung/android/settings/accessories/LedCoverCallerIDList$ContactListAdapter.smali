.class public Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsEditMode:Z

.field private mLeftPaddingSize:I

.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Landroid/content/Context;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mIsEditMode:Z

    iput v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mLeftPaddingSize:I

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    if-nez p2, :cond_1

    const v3, 0x7f040159

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;

    iget-object v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;-><init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;)V

    const v3, 0x7f110436

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->text:Landroid/widget/TextView;

    const v3, 0x7f110435

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v3, 0x7f110433

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->check:Landroid/widget/CheckBox;

    const v3, 0x7f110434

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    const v4, 0x7f02023b

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v4, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->check:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getChecked()Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v4, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->check:Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mIsEditMode:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mLeftPaddingSize:I

    if-eq v3, v4, :cond_0

    iget-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mLeftPaddingSize:I

    iget-object v5, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v5

    iget-object v6, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v6

    iget-object v7, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->container:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :cond_0
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    const/16 v3, 0x8

    goto :goto_2
.end method

.method public setIsEditMode(ZI)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mIsEditMode:Z

    iput p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->mLeftPaddingSize:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactListAdapter;->notifyDataSetChanged()V

    return-void
.end method
