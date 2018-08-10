.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;
.super Landroid/widget/LinearLayout;
.source "DeskStatusBarView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getBatteryMeterView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    const v3, 0x7f0a053d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
