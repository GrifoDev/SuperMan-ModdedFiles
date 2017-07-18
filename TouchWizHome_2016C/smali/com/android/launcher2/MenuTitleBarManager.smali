.class public Lcom/android/launcher2/MenuTitleBarManager;
.super Ljava/lang/Object;
.source "MenuTitleBarManager.java"


# static fields
.field private static final DEBUGGABLE:Z

.field public static final GOOGLE_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuTitleBarManager"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_IN:F = 1.0f

.field private static final TITLE_BAR_SCALE_OUT:F = 1.0f

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;


# instance fields
.field private mAppSearchContainer:Landroid/widget/LinearLayout;

.field private mAppSearchEdit:Landroid/widget/SearchView;

.field private mAppSearchTitleBar:Landroid/view/ViewGroup;

.field public mAppSearchVI:Z

.field private mAtoZButtonBar:Landroid/view/ViewGroup;

.field private mAtoZCancelButton:Landroid/view/ViewGroup;

.field private mAtoZSaveButton:Landroid/view/ViewGroup;

.field private mAtoZTitleBar:Landroid/view/ViewGroup;

.field private mAtoZbtnHideAnim:Landroid/animation/Animator;

.field private mCurrentTitleBar:Landroid/view/View;

.field private mEditButton:Landroid/view/ViewGroup;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

.field public mMicPressed:Z

.field private mMoreOptionBtn:Landroid/widget/ImageButton;

.field private mMoreOptionBtnContainer:Landroid/widget/FrameLayout;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mSearchBarBgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchBarDivider:Landroid/view/View;

.field private mSearchBarDividerLeft:Landroid/view/View;

.field private mSearchBtn:Landroid/widget/ImageView;

.field public mSearchLongPressed:Z

.field private mSearchTitleBar:Landroid/view/ViewGroup;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarAnimDuration:I

.field private mTitleBarHeight:I

.field private mUninstallTitleBar:Landroid/view/ViewGroup;

.field private mVoiceBtn:Landroid/widget/ImageView;

.field mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchVI:Z

    iput-boolean v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMicPressed:Z

    iput-boolean v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchLongPressed:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarBgMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/launcher2/MenuTitleBarManager$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuTitleBarManager$6;-><init>(Lcom/android/launcher2/MenuTitleBarManager;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/MenuTitleBarManager;)Lcom/android/launcher2/MenuView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    return-object v0
.end method

.method private getMenuAppsCancelButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;
    .locals 4

    :try_start_0
    const-class v2, Landroid/widget/SearchView;

    const-string v3, "mCloseButton"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "SearchView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarBgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarBgMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$1;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$2;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$2;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v1, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eq p2, v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchVI:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v1, :cond_5

    :cond_4
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v5, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v5

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$3;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$3;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    goto :goto_1
.end method

.method public animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-eqz p3, :cond_2

    if-eqz p2, :cond_0

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_1

    invoke-virtual {p2, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, v8}, Landroid/view/View;->setScaleY(F)V

    :goto_0
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eq p2, v7, :cond_4

    :cond_3
    iget-boolean v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchVI:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_7

    :cond_4
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v9, v7, v8

    sget-object v8, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v8, v7, v10

    sget-object v8, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v8, v7, v11

    invoke-static {p2, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v7, Lcom/android/launcher2/MenuTitleBarManager$4;

    invoke-direct {v7, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$4;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_6

    sget-boolean v7, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_5

    const-string v7, "Launcher.MenuTitleBarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current page is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6

    new-array v3, v11, [I

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v5, v3, v10

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v6, v3, v10

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v8, v5, v6

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotY(F)V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotX(F)V

    :cond_6
    sget-object v7, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v11, v7}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_7
    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public changeTextColor()V
    .locals 13

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v11}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v12, 0x7f110034

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    invoke-virtual {p0, v6, v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    :cond_0
    sget-boolean v11, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v12, 0x7f110011

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    :cond_1
    const/4 v9, 0x0

    const/4 v1, 0x0

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    const v12, 0x7f110013

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    :cond_2
    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    const v12, 0x7f110012

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {p0, v9, v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1, v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAppSearch()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v12, 0x7f1100e9

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_6

    invoke-virtual {p0, v10, v8}, Lcom/android/launcher2/MenuTitleBarManager;->changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V

    :cond_6
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v11

    if-eqz v11, :cond_8

    sget-boolean v11, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v11, :cond_9

    const v4, 0x7f0e002f

    :goto_0
    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    new-instance v7, Landroid/graphics/LightingColorFilter;

    const/4 v11, 0x0

    invoke-direct {v7, v3, v11}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBtn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v11}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtn:Landroid/widget/ImageButton;

    invoke-virtual {v11}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v11, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-direct {p0, v11}, Lcom/android/launcher2/MenuTitleBarManager;->getMenuAppsCancelButton(Landroid/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher2/MenuTitleBarManager;->setSearchBarBackground()V

    :cond_8
    return-void

    :cond_9
    const v4, 0x7f0e0012

    goto :goto_0
.end method

.method public changeTextColor(Landroid/widget/TextView;Landroid/content/res/Resources;)V
    .locals 3

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0e002f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x33000000

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void

    :cond_0
    const v0, 0x7f0e0003

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x7f0e0033

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    return-void
.end method

.method public getAToZcontainter()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZButtonBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;
    .locals 20

    const-string v7, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/Launcher;

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v4

    sget-object v17, Lcom/android/launcher2/MenuTitleBarManager$7;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    const-string v17, "Launcher.MenuTitleBarManager"

    const-string v18, "unknown state when asking for title bar"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :goto_0
    return-object v17

    :pswitch_0
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuAppsGrid;->isFolderOpened()Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f110034

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_2

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f090074

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090074

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    const v17, 0x7f0a0168

    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100aa

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarAnimDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    move-object/from16 v17, v0

    const v18, 0x7f11009e

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarAnimDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    new-instance v18, Lcom/android/launcher2/MenuTitleBarManager$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/MenuTitleBarManager$5;-><init>(Lcom/android/launcher2/MenuTitleBarManager;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a3

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100aa

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarAnimDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->clearFocus()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/SearchView;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    move-object/from16 v17, v0

    const-string v18, ""

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f110034

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_a

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f090074

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(I)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090074

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    const v17, 0x7f0a0168

    invoke-static/range {v16 .. v17}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_a
    sget-boolean v17, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a1

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual {v11}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f110011

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_b

    const v17, 0x7f0a0168

    move/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppsGrid;->getOldState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v17

    sget-object v18, Lcom/android/launcher2/MenuAppsGrid$State;->AtoZ:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_b

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100aa

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f110034

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    if-eqz v8, :cond_e

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    const v18, 0x7f090077

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const/4 v9, 0x1

    :cond_d
    const v17, 0x7f090077

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090077

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v17, 0x7f0a0168

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_e
    sget-boolean v17, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a1

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZbtnHideAnim:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    if-nez v17, :cond_12

    const/4 v10, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v9, :cond_10

    if-nez v10, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setAlpha(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarAnimDuration:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_12
    const/4 v10, 0x0

    goto :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a2

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const v18, 0x7f110034

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_14

    const v17, 0x7f090077

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090077

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v17, 0x7f0a0168

    move/from16 v0, v17

    invoke-static {v8, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_14
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAppSearch()Z

    move-result v17

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100e9

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_15

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    sget-boolean v17, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a1

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZbtnHideAnim:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v17

    if-eqz v17, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v17, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v17, :cond_1d

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f110013

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f110012

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :cond_19
    if-eqz v13, :cond_1a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090079

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f0a021f

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_1a
    if-eqz v6, :cond_1b

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090075

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f0a021f

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a3

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportAppSearch()Z

    move-result v17

    if-eqz v17, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100e9

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_20

    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20
    sget-boolean v17, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v17, :cond_26

    const/4 v13, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f110013

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f110012

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    :cond_22
    if-eqz v13, :cond_23

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090079

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f0a021f

    move/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_23
    if-eqz v6, :cond_24

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const v18, 0x7f090075

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f09001f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    const v17, 0x7f0a021f

    move/from16 v0, v17

    invoke-static {v6, v0}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZbtnHideAnim:Landroid/animation/Animator;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    if-eqz v17, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f11009f

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    const v18, 0x7f1100a6

    invoke-virtual/range {v17 .. v18}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher2/MenuAppsGrid;->updateMoreButtonState(Lcom/android/launcher2/MenuAppsGrid$State;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    move-object/from16 v17, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;
    .locals 14

    const v13, 0x7f1100aa

    const v12, 0x7f09001f

    const v11, 0x7f090009

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "Launcher.MenuTitleBarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "invalid call : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v9}, Lcom/android/launcher2/MenuView;->isCurrentTabWidgets()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    const-string v1, ""

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuWidgets()Lcom/android/launcher2/MenuWidgets;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/MenuTitleBarManager$7;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const-string v7, "Launcher.MenuTitleBarManager"

    const-string v8, "unknown widget state when asking for title bar"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v8, 0x7f11009e

    invoke-virtual {v7, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    :cond_1
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f1100a6

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v7}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v7, v9}, Landroid/widget/SearchView;->setFocusable(Z)V

    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Lcom/android/launcher2/MenuWidgets;->updateMoreButtonState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f1100a2

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f110034

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->hasUninstallableWidgets()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const v8, 0x7f09009b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f1100e9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_4

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    sget-boolean v7, Lcom/android/launcher2/Launcher;->mUseAtoZButton:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v8, 0x7f1100a1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZbtnHideAnim:Landroid/animation/Animator;

    invoke-virtual {v7, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/android/launcher2/MenuWidgets;->isWidgetLoaded()Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, ""

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :pswitch_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v7

    if-eq v7, v10, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    if-eqz v6, :cond_9

    invoke-virtual {v6, p1}, Lcom/android/launcher2/MenuWidgets;->updateMoreButtonState(Lcom/android/launcher2/MenuWidgets$WidgetState;)V

    :cond_9
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEditDoneBtn()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMicPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMicPressed:Z

    return v0
.end method

.method public getSearchLongPressed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchLongPressed:Z

    return v0
.end method

.method public hideEditBar(Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/MenuEditBar;->setHideAnimation(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public init(Lcom/android/launcher2/MenuView;)V
    .locals 8

    const v7, 0x7f0e0012

    const/4 v6, 0x1

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v4, 0x7f11009e

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSearchBarApps()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const v5, 0x7f1100a6

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    const v4, 0x7f1100a7

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SearchView;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f1100a8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDivider:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDivider:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f1100c3

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDividerLeft:Landroid/view/View;

    :goto_1
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setImeOptions(I)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    const/16 v5, 0x2001

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setInputType(I)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f1100c9

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtn:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f1100a9

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtnContainer:Landroid/widget/FrameLayout;

    :try_start_0
    const-class v4, Landroid/widget/SearchView;

    const-string v5, "mVoiceButton"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtn:Landroid/widget/ImageView;

    const-class v4, Landroid/widget/SearchView;

    const-string v5, "mSearchButton"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBtn:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    :cond_2
    const v4, 0x7f1100bf

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f1100af

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f1100a3

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZButtonBar:Landroid/view/ViewGroup;

    const v4, 0x7f1100a1

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    const v4, 0x7f1100a2

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    const v4, 0x7f1100a5

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZSaveButton:Landroid/view/ViewGroup;

    const v4, 0x7f1100a4

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZCancelButton:Landroid/view/ViewGroup;

    const v4, 0x7f110091

    invoke-virtual {p1, v4}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuEditBar;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchTitleBar:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/launcher2/FocusHelper;->MENU_TILE_BAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZTitleBar:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/launcher2/FocusHelper;->MENU_TILE_BAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditButton:Landroid/view/ViewGroup;

    sget-object v5, Lcom/android/launcher2/FocusHelper;->MENU_TILE_BAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0177

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAtoZbtnHideAnim:Landroid/animation/Animator;

    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0071

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarAnimDuration:I

    invoke-virtual {p0}, Lcom/android/launcher2/MenuTitleBarManager;->setVoiceSearch()V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtn:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtn:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDividerLeft:Landroid/view/View;

    goto/16 :goto_1

    :catch_0
    move-exception v0

    const-string v4, "SearchView"

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_1
    move-exception v0

    const-string v4, "SearchView"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public setMicPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMicPressed:Z

    return-void
.end method

.method public setSearchBarBackground()V
    .locals 9

    const v6, 0x7f0200a7

    const v4, 0x7f0200a6

    const v7, 0x7f0200a5

    const v5, 0x7f0200a4

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtnContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtnContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    sget-boolean v8, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-nez v8, :cond_3

    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    sget-boolean v6, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v6, :cond_2

    move v0, v5

    :goto_1
    const v3, 0x7f0200a8

    const v1, 0x7f0200a2

    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDivider:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/android/launcher2/MenuTitleBarManager;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDividerLeft:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchBarDividerLeft:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMoreOptionBtnContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-direct {p0, v2}, Lcom/android/launcher2/MenuTitleBarManager;->getSearchBarBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_1

    :cond_3
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_4

    move v2, v6

    :goto_4
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsRtl:Z

    if-eqz v4, :cond_5

    move v0, v7

    :goto_5
    const v3, 0x7f0200a9

    const v1, 0x7f0200a3

    goto :goto_2

    :cond_4
    move v2, v7

    goto :goto_4

    :cond_5
    move v0, v6

    goto :goto_5

    :cond_6
    sget-boolean v4, Lcom/android/launcher2/Launcher;->sIsNeedDarkColor:Z

    if-nez v4, :cond_7

    const v2, 0x7f020001

    goto :goto_3

    :cond_7
    const v2, 0x7f020002

    goto :goto_3
.end method

.method public setSearchLongPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchLongPressed:Z

    return-void
.end method

.method public setTitleBarVisibility(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    return-void
.end method

.method public setVoiceSearch()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.google.android.googlequicksearchbox"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v3, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuTitleBarManager;->mAppSearchEdit:Landroid/widget/SearchView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public showEditBar(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/MenuEditBar;->show(Lcom/android/launcher2/BaseItem;Ljava/util/List;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    :cond_0
    return-void
.end method
