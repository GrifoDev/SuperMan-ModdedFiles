.class public Lcom/android/systemui/qs/CellTileView;
.super Lcom/android/systemui/qs/SignalTileView;
.source "CellTileView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/CellTileView$SignalIcon;
    }
.end annotation


# instance fields
.field private final mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)I
    .locals 1

    invoke-static {p0}, Lcom/android/systemui/qs/CellTileView;->isDark(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SignalTileView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/qs/CellTileView;->isDark(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setDarkIntensity(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070521

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setIntrinsicSize(I)V

    return-void
.end method

.method private static isDark(Landroid/content/Context;)I
    .locals 2

    const v0, 0x1010030

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    const/high16 v1, -0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected updateIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;)V
    .locals 3

    const v2, 0x7f0a0400

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    check-cast v0, Lcom/android/systemui/qs/CellTileView$SignalIcon;

    invoke-virtual {v0}, Lcom/android/systemui/qs/CellTileView$SignalIcon;->getState()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/SignalDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/systemui/qs/CellTileView;->mSignalDrawable:Lcom/android/systemui/statusbar/phone/SignalDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p2, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    invoke-virtual {p1, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
