.class Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;
.super Landroid/widget/FrameLayout;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeRatioButtonView"
.end annotation


# instance fields
.field private mChangeRatioButton:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AspectRatioController;Landroid/content/Context;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->makeNewButtonView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->setChangeRatioButtonRotation()V

    invoke-static {p1}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/AspectRatioController;->-get4(Lcom/android/server/wm/AspectRatioController;)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getInitResolution(II)I
    .locals 6

    const/16 v5, 0xa00

    const/16 v4, 0x780

    const/16 v3, 0x5a0

    const/16 v2, 0x438

    const/4 v0, 0x0

    const/16 v1, 0x2d0

    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    if-ge p2, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-lt p1, v2, :cond_1

    if-ge p1, v3, :cond_1

    if-lt p2, v4, :cond_1

    if-ge p2, v5, :cond_1

    const/4 v0, 0x2

    :cond_1
    if-lt p1, v3, :cond_2

    const/16 v1, 0x870

    if-ge p1, v1, :cond_2

    if-lt p2, v5, :cond_2

    const/16 v1, 0xf00

    if-ge p2, v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method

.method private getTextSize()I
    .locals 9

    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v7}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v8, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v8, v2, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-direct {p0, v7, v8}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getInitResolution(II)I

    move-result v3

    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v8, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v7, v1

    int-to-float v8, v4

    div-float v6, v7, v8

    div-int/lit16 v7, v1, 0x168

    mul-int/lit16 v0, v7, 0xa0

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_0

    const-string/jumbo v7, "AspectRatioController"

    const-string/jumbo v8, "initResolution = 0"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v7}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    return v7

    :pswitch_0
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v0, v7, :cond_0

    const v5, 0x10e00f6

    goto :goto_0

    :cond_0
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v0, v7, :cond_1

    const v5, 0x10e00f4

    goto :goto_0

    :cond_1
    const v5, 0x10e00f5

    goto :goto_0

    :pswitch_1
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v0, v7, :cond_2

    const v5, 0x10e00f3

    goto :goto_0

    :cond_2
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v0, v7, :cond_3

    const v5, 0x10e00f1

    goto :goto_0

    :cond_3
    const v5, 0x10e00f2

    goto :goto_0

    :pswitch_2
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-ge v0, v7, :cond_4

    const v5, 0x10e0119

    goto :goto_0

    :cond_4
    iget v7, v2, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-le v0, v7, :cond_5

    const v5, 0x10e0117

    goto :goto_0

    :cond_5
    const v5, 0x10e0118

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private makeNewButtonView()Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v1, -0x50506

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    const v1, 0x10400db

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v1, -0x767677

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLines(I)V

    invoke-virtual {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    new-instance v1, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView$1;-><init>(Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private setChangeRatioButtonRotation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v0}, Lcom/android/server/wm/AspectRatioController;->-get3(Lcom/android/server/wm/AspectRatioController;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setRotation(F)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getPaddingSize()I
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float v0, v1, v2

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1
.end method

.method public resetView()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->makeNewButtonView()Landroid/widget/TextView;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->addView(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->setChangeRatioButtonRotation()V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get4(Lcom/android/server/wm/AspectRatioController;)I

    move-result v3

    const/16 v4, 0x11

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    const v3, 0x10400db

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getPaddingSize()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->mChangeRatioButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->getTextSize()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
