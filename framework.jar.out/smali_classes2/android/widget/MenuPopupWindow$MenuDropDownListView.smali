.class public Landroid/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    .line 103
    invoke-direct {p0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 106
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 107
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 108
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 109
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    .line 102
    :goto_0
    return-void

    .line 111
    :cond_0
    iput v5, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    .line 112
    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 121
    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    .line 120
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v9, :cond_2

    .line 162
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 163
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v9, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v9, :cond_3

    move-object v1, v0

    .line 164
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 165
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    .line 166
    .local v2, "headersCount":I
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/MenuAdapter;

    .line 173
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v5, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    const/4 v6, 0x0

    .line 174
    .local v6, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/16 v10, 0xa

    if-eq v9, v10, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {p0, v9, v10}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v8

    .line 176
    .local v8, "position":I
    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 177
    sub-int v3, v8, v2

    .line 178
    .local v3, "itemPosition":I
    if-ltz v3, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_0

    .line 179
    invoke-virtual {v5, v3}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v6

    .line 184
    .end local v3    # "itemPosition":I
    .end local v6    # "menuItem":Landroid/view/MenuItem;
    .end local v8    # "position":I
    :cond_0
    iget-object v7, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 185
    .local v7, "oldMenuItem":Landroid/view/MenuItem;
    if-eq v7, v6, :cond_2

    .line 186
    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v4

    .line 187
    .local v4, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    if-eqz v7, :cond_1

    .line 188
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v7}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 191
    :cond_1
    iput-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    .line 193
    if-eqz v6, :cond_2

    .line 194
    iget-object v9, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v9, v4, v6}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    .line 199
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "headersCount":I
    .end local v4    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    .end local v5    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    .end local v7    # "oldMenuItem":Landroid/view/MenuItem;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    return v9

    .line 168
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "headersCount":I
    move-object v5, v0

    .line 169
    check-cast v5, Lcom/android/internal/view/menu/MenuAdapter;

    .restart local v5    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v5, -0x1

    .line 127
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ListMenuItemView;

    .line 128
    .local v3, "selectedItem":Lcom/android/internal/view/menu/ListMenuItemView;
    if-eqz v3, :cond_1

    iget v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v4, :cond_1

    .line 129
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 133
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v6

    .line 130
    invoke-virtual {p0, v3, v4, v6, v7}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 135
    :cond_0
    return v8

    .line 136
    :cond_1
    if-eqz v3, :cond_3

    iget v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v4, :cond_3

    .line 137
    invoke-virtual {p0, v5}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    .line 138
    invoke-virtual {p0, v5}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    .line 141
    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 143
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v4, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_2

    move-object v1, v0

    .line 144
    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    .line 145
    .local v1, "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuAdapter;

    .line 149
    .end local v1    # "headerAdapter":Landroid/widget/HeaderViewListAdapter;
    .local v2, "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 150
    return v8

    .end local v2    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :cond_2
    move-object v2, v0

    .line 147
    check-cast v2, Lcom/android/internal/view/menu/MenuAdapter;

    .restart local v2    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    goto :goto_0

    .line 152
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "menuAdapter":Lcom/android/internal/view/menu/MenuAdapter;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0
    .param p1, "hoverListener"    # Landroid/widget/MenuItemHoverListener;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    .line 116
    return-void
.end method
