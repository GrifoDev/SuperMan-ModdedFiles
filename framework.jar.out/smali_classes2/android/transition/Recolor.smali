.class public Landroid/transition/Recolor;
.super Landroid/transition/Transition;
.source "Recolor.java"


# static fields
.field private static final PROPNAME_BACKGROUND:Ljava/lang/String; = "android:recolor:background"

.field private static final PROPNAME_TEXT_COLOR:Ljava/lang/String; = "android:recolor:textColor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 3
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 52
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v1, "android:recolor:background"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:recolor:textColor"

    .line 55
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 54
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 65
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/transition/Recolor;->captureValues(Landroid/transition/TransitionValues;)V

    .line 60
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 14
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 72
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 73
    :cond_0
    const/4 v10, 0x0

    return-object v10

    .line 75
    :cond_1
    move-object/from16 v0, p3

    iget-object v9, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 76
    .local v9, "view":Landroid/view/View;
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:recolor:background"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 77
    .local v6, "startBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:recolor:background"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 78
    .local v3, "endBackground":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 79
    .local v1, "changed":Z
    instance-of v10, v6, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_2

    instance-of v10, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_2

    move-object v7, v6

    .line 80
    nop

    nop

    .local v7, "startColor":Landroid/graphics/drawable/ColorDrawable;
    move-object v4, v3

    .line 81
    nop

    nop

    .line 82
    .local v4, "endColor":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 83
    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v10

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 84
    const/4 v1, 0x1

    .line 85
    const-string/jumbo v10, "color"

    const/4 v11, 0x2

    new-array v11, v11, [I

    invoke-virtual {v7}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v12

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 86
    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v12

    const/4 v13, 0x1

    aput v12, v11, v13

    .line 85
    invoke-static {v3, v10, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    return-object v10

    .line 89
    .end local v4    # "endColor":Landroid/graphics/drawable/ColorDrawable;
    .end local v7    # "startColor":Landroid/graphics/drawable/ColorDrawable;
    :cond_2
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_3

    move-object v8, v9

    .line 90
    nop

    nop

    .line 91
    .local v8, "textView":Landroid/widget/TextView;
    move-object/from16 v0, p2

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:recolor:textColor"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 92
    .local v5, "start":I
    move-object/from16 v0, p3

    iget-object v10, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v11, "android:recolor:textColor"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 93
    .local v2, "end":I
    if-eq v5, v2, :cond_3

    .line 94
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 95
    const/4 v1, 0x1

    .line 96
    const-string/jumbo v10, "textColor"

    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v5, v11, v12

    const/4 v12, 0x1

    aput v2, v11, v12

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v10

    return-object v10

    .line 99
    .end local v2    # "end":I
    .end local v5    # "start":I
    .end local v8    # "textView":Landroid/widget/TextView;
    :cond_3
    const/4 v10, 0x0

    return-object v10
.end method
