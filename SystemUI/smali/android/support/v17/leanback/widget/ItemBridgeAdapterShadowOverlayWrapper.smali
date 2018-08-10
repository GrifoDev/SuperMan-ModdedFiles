.class public Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;
.super Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;
.source "ItemBridgeAdapterShadowOverlayWrapper.java"


# instance fields
.field private final mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;


# direct methods
.method public constructor <init>(Landroid/support/v17/leanback/widget/ShadowOverlayHelper;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;->mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    return-void
.end method


# virtual methods
.method public createWrapper(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ItemBridgeAdapterShadowOverlayWrapper;->mHelper:Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->createShadowOverlayContainer(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    move-result-object v1

    return-object v1
.end method

.method public wrap(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;

    invoke-virtual {p1, p2}, Landroid/support/v17/leanback/widget/ShadowOverlayContainer;->wrap(Landroid/view/View;)V

    return-void
.end method
