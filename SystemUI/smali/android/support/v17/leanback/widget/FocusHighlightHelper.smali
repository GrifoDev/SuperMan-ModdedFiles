.class public Landroid/support/v17/leanback/widget/FocusHighlightHelper;
.super Ljava/lang/Object;
.source "FocusHighlightHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;,
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$FocusAnimator;,
        Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getResId(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_small:I

    return v0

    :pswitch_1
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_xsmall:I

    return v0

    :pswitch_2
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_medium:I

    return v0

    :pswitch_3
    sget v0, Landroid/support/v17/leanback/R$fraction;->lb_focus_zoom_factor_large:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method static isValidZoomIndex(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->getResId(I)I

    move-result v2

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setupBrowseItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;IZ)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;

    invoke-direct {v0, p1, p2}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$BrowseItemFocusHighlight;-><init>(IZ)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Z)V

    return-void
.end method

.method public static setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;Z)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/FocusHighlightHelper$HeaderItemFocusHighlight;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setFocusHighlight(Landroid/support/v17/leanback/widget/FocusHighlightHandler;)V

    return-void
.end method
