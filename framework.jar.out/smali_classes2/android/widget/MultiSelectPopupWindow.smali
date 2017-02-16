.class public Landroid/widget/MultiSelectPopupWindow;
.super Ljava/lang/Object;
.source "MultiSelectPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MultiSelectPopupWindow$CursorController;,
        Landroid/widget/MultiSelectPopupWindow$HandleView;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectController;,
        Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;,
        Landroid/widget/MultiSelectPopupWindow$PositionListener;,
        Landroid/widget/MultiSelectPopupWindow$SelectionEndHandleView;,
        Landroid/widget/MultiSelectPopupWindow$SelectionStartHandleView;,
        Landroid/widget/MultiSelectPopupWindow$TextViewPositionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiSelectPopupWindow"

.field private static final TEMP_POSITION:[F

.field private static mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

.field private static mTextView:Landroid/widget/TextView;

.field private static sInstance:Landroid/widget/MultiSelectPopupWindow;


# instance fields
.field private mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

.field private mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;


# direct methods
.method static synthetic -get0(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/MultiSelectPopupWindow;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2()Landroid/widget/TextView;
    .locals 1

    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set1(Landroid/widget/MultiSelectPopupWindow;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Landroid/widget/MultiSelectPopupWindow;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/widget/MultiSelectPopupWindow;)Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isDictionaryEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/widget/MultiSelectPopupWindow;I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/MultiSelectPopupWindow;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/widget/MultiSelectPopupWindow;II)Z
    .locals 1
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isSelectAllEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isShareViaEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isTablet()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Landroid/widget/MultiSelectPopupWindow;)Z
    .locals 1

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isTranslatorEnable()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    .line 51
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 70
    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 68
    return-void
.end method

.method public static getInstance()Landroid/widget/MultiSelectPopupWindow;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Landroid/widget/MultiSelectPopupWindow;

    invoke-direct {v0}, Landroid/widget/MultiSelectPopupWindow;-><init>()V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    .line 65
    :cond_0
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->sInstance:Landroid/widget/MultiSelectPopupWindow;

    return-object v0
.end method

.method private getPositionListener()Landroid/widget/MultiSelectPopupWindow$PositionListener;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 682
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-direct {v0, p0, v1}, Landroid/widget/MultiSelectPopupWindow$PositionListener;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$PositionListener;)V

    iput-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    .line 685
    :cond_0
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    return-object v0
.end method

.method private isDictionaryEnable()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 639
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 640
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.dictionary.SEARCH"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 642
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    return v4

    .line 643
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private isEmergencyMode()Z
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x0

    return v0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 609
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 610
    .local v0, "layout":Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 611
    const/4 v4, 0x0

    return v4

    .line 613
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 615
    .local v1, "line":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .line 616
    .local v2, "lineBaseLine":I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 618
    .local v3, "primaryHorizontal":I
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/MultiSelectPopupWindow;->isPositionVisible(II)Z

    move-result v4

    return v4
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .param p1, "positionX"    # I
    .param p2, "positionY"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 709
    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    monitor-enter v5

    .line 710
    :try_start_0
    sget-object v2, Landroid/widget/MultiSelectPopupWindow;->TEMP_POSITION:[F

    .line 711
    .local v2, "position":[F
    int-to-float v4, p1

    const/4 v6, 0x0

    aput v4, v2, v6

    .line 712
    int-to-float v4, p2

    const/4 v6, 0x1

    aput v4, v2, v6

    .line 713
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 715
    :goto_0
    if-eqz v3, :cond_5

    .line 716
    sget-object v4, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-eq v3, v4, :cond_0

    .line 717
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 718
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    aput v6, v2, v4

    .line 721
    :cond_0
    const/4 v4, 0x0

    aget v4, v2, v4

    cmpg-float v4, v4, v10

    if-ltz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpg-float v4, v4, v10

    if-gez v4, :cond_2

    :cond_1
    monitor-exit v5

    .line 722
    return v8

    .line 721
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_1

    .line 725
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v4

    if-nez v4, :cond_3

    .line 726
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 729
    :cond_3
    const/4 v4, 0x0

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 730
    const/4 v4, 0x1

    aget v6, v2, v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    aput v6, v2, v4

    .line 732
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 733
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 734
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .line 736
    .end local v3    # "view":Landroid/view/View;
    :cond_4
    const/4 v3, 0x0

    .local v3, "view":Landroid/view/View;
    goto :goto_0

    .end local v1    # "parent":Landroid/view/ViewParent;
    .end local v3    # "view":Landroid/view/View;
    :cond_5
    monitor-exit v5

    .line 740
    return v9

    .line 709
    .end local v2    # "position":[F
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private isSelectAllEnable()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 622
    sget-object v3, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextForMultiSelection()Ljava/lang/CharSequence;

    move-result-object v0

    .line 623
    .local v0, "text":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 624
    const-string/jumbo v2, "MultiSelectPopupWindow"

    const-string/jumbo v3, "getTextFormultiSelection() text is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return v1

    .line 627
    :cond_0
    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Landroid/text/MultiSelection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method private isShareViaEnable()Z
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    const/4 v0, 0x0

    return v0

    .line 634
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 750
    const-string/jumbo v0, "short"

    const-string/jumbo v1, "ro.build.scafe.size"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x1

    return v0

    .line 753
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isTranslatorEnable()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 651
    sget-object v5, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 652
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "android.intent.action.PROCESS_TEXT"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "text/plain"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v1, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 654
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/widget/MultiSelectPopupWindow;->isEmergencyMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 662
    :cond_0
    return v7

    .line 655
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 656
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    .line 657
    .local v4, "resolveInfoString":Ljava/lang/String;
    const-string/jumbo v5, "com.sec.android.app.translator"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "com.google.android.apps.translate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 658
    :cond_3
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public changeCurrentSelectedView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 102
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-ne v0, p1, :cond_0

    .line 103
    return-void

    .line 104
    :cond_0
    sput-object p1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 105
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 101
    :cond_1
    return-void
.end method

.method getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 695
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 696
    return-object v2

    .line 698
    :cond_0
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    if-nez v1, :cond_1

    .line 699
    new-instance v1, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-direct {v1, p0, v2}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;-><init>(Landroid/widget/MultiSelectPopupWindow;Landroid/widget/MultiSelectPopupWindow$MultiSelectController;)V

    iput-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    .line 701
    sget-object v1, Landroid/widget/MultiSelectPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 702
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 705
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectController:Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    return-object v1
.end method

.method getMultiSelectQuickPopupWindow()Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;-><init>(Landroid/widget/MultiSelectPopupWindow;)V

    sput-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    .line 95
    sget-object v0, Landroid/widget/MultiSelectPopupWindow;->mMultiSelectQuickPopupWindow:Landroid/widget/MultiSelectPopupWindow$MultiSelectQuickPopupWindow;

    return-object v0
.end method

.method public hideMultiSelectPopupWindow()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 83
    :cond_0
    return-void
.end method

.method public initMultiSelectControllerPosition()V
    .locals 1

    .prologue
    .line 689
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->initPreviousOffset()V

    .line 688
    :cond_0
    return-void
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Landroid/widget/MultiSelectPopupWindow;->mPositionListener:Landroid/widget/MultiSelectPopupWindow$PositionListener;

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$PositionListener;->onScrollChanged()V

    .line 109
    :cond_0
    return-void
.end method

.method public relocateMultiSelectQuickPopupWindow()V
    .locals 1

    .prologue
    .line 744
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->relocateMultiSelectQuickPopupWindow()V

    .line 743
    :cond_0
    return-void
.end method

.method public showMultiSelectPopupWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->hide()V

    .line 76
    invoke-virtual {p0}, Landroid/widget/MultiSelectPopupWindow;->getMultiSelectController()Landroid/widget/MultiSelectPopupWindow$MultiSelectController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MultiSelectPopupWindow$MultiSelectController;->show()V

    .line 73
    :cond_0
    return-void
.end method
