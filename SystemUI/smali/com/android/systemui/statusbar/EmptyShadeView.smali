.class public Lcom/android/systemui/statusbar/EmptyShadeView;
.super Lcom/android/systemui/statusbar/StackScrollerDecorView;
.source "EmptyShadeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;
    }
.end annotation


# instance fields
.field private mEmptyText:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/EmptyShadeView;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/StackScrollerDecorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/EmptyShadeView$EmptyShadeViewState;-><init>(Lcom/android/systemui/statusbar/EmptyShadeView;)V

    return-object v0
.end method

.method protected findContentView()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a0387

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/StackScrollerDecorView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/EmptyShadeView;->findContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/EmptyShadeView;->mEmptyText:Landroid/widget/TextView;

    return-void
.end method
