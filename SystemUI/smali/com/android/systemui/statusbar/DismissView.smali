.class public Lcom/android/systemui/statusbar/DismissView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "DismissView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/DismissView$DismissViewState;
    }
.end annotation


# instance fields
.field private final mClearAllTopPadding:I

.field private mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

.field private mDismissButtonArea:Landroid/widget/LinearLayout;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/DismissView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/DismissView;->mClearAllTopPadding:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/DismissView;->mClearAllTopPadding:I

    return-void
.end method


# virtual methods
.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/DismissView$DismissViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/DismissView$DismissViewState;-><init>(Lcom/android/systemui/statusbar/DismissView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a0396

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    const v1, 0x7f1201f3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/DismissView;->mContext:Landroid/content/Context;

    const v2, 0x7f120046

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/DismissViewButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    const v0, 0x7f0a017c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/DismissView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/DismissViewButton;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButton:Lcom/android/systemui/statusbar/DismissViewButton;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/DismissView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DismissView;->mDismissButtonArea:Landroid/widget/LinearLayout;

    return-void
.end method
