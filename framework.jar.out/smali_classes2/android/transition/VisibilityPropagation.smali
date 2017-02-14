.class public abstract Landroid/transition/VisibilityPropagation;
.super Landroid/transition/TransitionPropagation;
.source "VisibilityPropagation.java"


# static fields
.field private static final PROPNAME_VIEW_CENTER:Ljava/lang/String; = "android:visibilityPropagation:center"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibilityPropagation:visibility"

.field private static final VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android:visibilityPropagation:visibility"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:visibilityPropagation:center"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/TransitionPropagation;-><init>()V

    return-void
.end method

.method private static getViewCoordinate(Landroid/transition/TransitionValues;I)I
    .locals 4

    const/4 v3, -0x1

    if-nez p0, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibilityPropagation:center"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    return v3

    :cond_1
    aget v1, v0, p1

    return v1
.end method


# virtual methods
.method public captureValues(Landroid/transition/TransitionValues;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibility:visibility"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:visibility"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v0, v3, [I

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v5

    aget v3, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v5

    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v3, v4

    aput v3, v0, v6

    aget v3, v0, v6

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v0, v6

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:visibilityPropagation:center"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getPropagationProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/VisibilityPropagation;->VISIBILITY_PROPAGATION_VALUES:[Ljava/lang/String;

    return-object v0
.end method

.method public getViewVisibility(Landroid/transition/TransitionValues;)I
    .locals 4

    const/16 v3, 0x8

    if-nez p1, :cond_0

    return v3

    :cond_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:visibilityPropagation:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getViewX(Landroid/transition/TransitionValues;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method

.method public getViewY(Landroid/transition/TransitionValues;)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/transition/VisibilityPropagation;->getViewCoordinate(Landroid/transition/TransitionValues;I)I

    move-result v0

    return v0
.end method
