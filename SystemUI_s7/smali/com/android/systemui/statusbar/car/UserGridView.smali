.class public Lcom/android/systemui/statusbar/car/UserGridView;
.super Landroid/widget/GridView;
.source "UserGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/car/UserGridView$Adapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

.field private mPendingUserId:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/car/UserGridView$Adapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/car/UserGridView;)Lcom/android/systemui/statusbar/policy/UserSwitcherController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/car/UserGridView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mPendingUserId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/car/UserGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->showOfflineAuthUi()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mPendingUserId:I

    return-void
.end method

.method private showOfflineAuthUi()V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object v2, v1

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    new-instance v0, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/car/UserGridView$Adapter;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mAdapter:Lcom/android/systemui/statusbar/car/UserGridView$Adapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/android/systemui/statusbar/car/UserGridView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/UserGridView$1;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/car/UserGridView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/UserGridView$2;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez v3, :cond_0

    const/4 v5, -0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/car/UserGridView;->setNumColumns(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getRequestedColumnWidth()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v1, 0x0

    :goto_1
    div-int v5, v4, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/car/UserGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/car/UserGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    goto :goto_1
.end method

.method public onUserSwitched(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mPendingUserId:I

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/car/UserGridView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/car/UserGridView$3;-><init>(Lcom/android/systemui/statusbar/car/UserGridView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/car/UserGridView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/systemui/statusbar/car/UserGridView;->mPendingUserId:I

    return-void
.end method
