.class public final Lcom/nineoldandroids/animation/ObjectAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "ObjectAnimator.java"


# static fields
.field private static final DBG:Z

.field private static final PROXY_PROPERTIES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mProperty:Lcom/nineoldandroids/util/Property;

.field private mPropertyName:Ljava/lang/String;

.field private mTarget:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "alpha"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ALPHA:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "pivotX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "pivotY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "translationX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "translationY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "rotation"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "rotationX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "rotationY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "scaleX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCALE_X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "scaleY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCALE_Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "scrollX"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "scrollY"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "x"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->X:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    const-string v1, "y"

    sget-object v2, Lcom/nineoldandroids/animation/PreHoneycombCompat;->Y:Lcom/nineoldandroids/util/Property;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/Property",
            "<TT;*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setProperty(Lcom/nineoldandroids/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    return-void
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/Property",
            "<TT;",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;[I)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/Property",
            "<TT;",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/nineoldandroids/util/Property",
            "<TT;TV;>;",
            "Lcom/nineoldandroids/animation/TypeEvaluator",
            "<TV;>;[TV;)",
            "Lcom/nineoldandroids/animation/ObjectAnimator;"
        }
    .end annotation

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Lcom/nineoldandroids/util/Property;)V

    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/Object;Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0, p0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder(Ljava/lang/Object;[Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    new-instance v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;-><init>()V

    iput-object p0, v0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method


# virtual methods
.method animateValue(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setAnimatedValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public clone()Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->clone()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ObjectAnimator;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->clone()Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    return-object v0
.end method

.method initAnimation()V
    .locals 4

    iget-boolean v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/nineoldandroids/view/animation/AnimatorProxy;->NEEDS_PROXY:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/nineoldandroids/animation/ObjectAnimator;->PROXY_PROPERTIES:Ljava/util/Map;

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nineoldandroids/util/Property;

    invoke-virtual {p0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setProperty(Lcom/nineoldandroids/util/Property;)V

    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    :cond_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupSetterAndGetter(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    return-object p0
.end method

.method public bridge synthetic setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Lcom/nineoldandroids/util/Property;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Lcom/nineoldandroids/util/Property;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v0, :cond_1

    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    invoke-static {v1, v3, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Lcom/nineoldandroids/util/Property;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_0
    return-void

    :cond_1
    new-array v0, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProperty(Lcom/nineoldandroids/util/Property;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v1, v2, v4

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setProperty(Lcom/nineoldandroids/util/Property;)V

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/nineoldandroids/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    :cond_1
    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mProperty:Lcom/nineoldandroids/util/Property;

    iput-boolean v4, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v1, v2, v3

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setPropertyName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mPropertyName:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    return-void
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 3

    iget-object v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eq v1, p1, :cond_0

    iget-object v0, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mInitialized:Z

    goto :goto_0
.end method

.method public setupEndValues()V
    .locals 4

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupEndValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setupStartValues()V
    .locals 4

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ObjectAnimator;->initAnimation()V

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setupStartValue(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ObjectAnimator@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mTarget:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/animation/ObjectAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
