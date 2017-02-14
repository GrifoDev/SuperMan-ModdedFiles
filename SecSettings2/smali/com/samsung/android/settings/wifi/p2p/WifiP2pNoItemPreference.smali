.class public Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;
.super Landroid/preference/Preference;
.source "WifiP2pNoItemPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDividerHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mDividerHeight:I

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    :cond_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object v3

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->mDividerHeight:I

    sub-int v1, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, -0x1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pNoItemPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-super {p0, v0}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method
