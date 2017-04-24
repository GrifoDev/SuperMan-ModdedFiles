.class public Lcom/android/launcher2/QuickOptionsHelpView;
.super Ljava/lang/Object;
.source "QuickOptionsHelpView.java"


# static fields
.field public static final PREF_KEY_HELP_SHOWN:Ljava/lang/String; = "QuickOptions_Help_Shown"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mForceClose:Z

.field private mHelpView:Landroid/view/View;

.field private mHelpView_Img:Landroid/widget/ImageView;

.field private mHelpView_MgsText:Landroid/widget/TextView;

.field private mHelpView_NextBtn:Landroid/widget/LinearLayout;

.field private mHelpView_NextBtnText:Landroid/widget/TextView;

.field private mIsRunning:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/Workspace;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_MgsText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtn:Landroid/widget/LinearLayout;

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mIsRunning:Z

    iput-boolean v1, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/QuickOptionsHelpView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/QuickOptionsHelpView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/launcher2/QuickOptionsHelpView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher2/QuickOptionsHelpView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/QuickOptionsHelpView;)Lcom/android/launcher2/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->callOnClick()Z

    return-void
.end method

.method public getNextBtn()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mIsRunning:Z

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/QuickOptionsHelpView;->close()V

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->closeFolder()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public show()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iput-boolean v7, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mIsRunning:Z

    iput-boolean v6, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mForceClose:Z

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    new-instance v4, Lcom/android/launcher2/QuickOptionsHelpView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickOptionsHelpView$1;-><init>(Lcom/android/launcher2/QuickOptionsHelpView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    const v4, 0x7f1000da

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_Img:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    const v4, 0x7f1000cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_MgsText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    const v4, 0x7f1000cd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    const v4, 0x7f1000ce

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtn:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/launcher2/QuickOptionsHelpView$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickOptionsHelpView$2;-><init>(Lcom/android/launcher2/QuickOptionsHelpView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/Workspace;->setWorkspaceAccessibilityEnabled(Z)V

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    invoke-virtual {v3}, Lcom/sec/dtl/launcher/Talk;->isTalkbackEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_MgsText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    :goto_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickOptionsHelpView;->mHelpView_NextBtnText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
