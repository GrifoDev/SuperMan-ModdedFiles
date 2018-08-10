.class public Lcom/samsung/android/view/menu/SemMenuAdapter;
.super Lcom/android/internal/view/menu/MenuAdapter;
.source "SemMenuAdapter.java"


# static fields
.field static final SEM_ITEM_LAYOUT:I = 0x109014e


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/view/menu/MenuAdapter;-><init>(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    iput-object p2, p0, Lcom/samsung/android/view/menu/SemMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/view/menu/SemMenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109014e

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/view/menu/SemMenuAdapter;->getForceShowIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/internal/view/menu/MenuView$ItemView;

    invoke-virtual {p0, p1}, Lcom/samsung/android/view/menu/SemMenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    return-object p2
.end method
