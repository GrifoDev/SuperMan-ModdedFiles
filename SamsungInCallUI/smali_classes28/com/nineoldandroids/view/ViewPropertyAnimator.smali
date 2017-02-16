.class public abstract Lcom/nineoldandroids/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# static fields
.field private static final ANIMATORS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/nineoldandroids/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    .line 47
    sput-object v0, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 58
    sget-object v2, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/view/ViewPropertyAnimator;

    .line 59
    .local v0, "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    if-nez v0, :cond_0

    .line 60
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 61
    .local v1, "version":I
    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 62
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;

    .end local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorICS;-><init>(Landroid/view/View;)V

    .line 68
    .restart local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    :goto_0
    sget-object v2, Lcom/nineoldandroids/view/ViewPropertyAnimator;->ANIMATORS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .end local v1    # "version":I
    :cond_0
    return-object v0

    .line 63
    .restart local v1    # "version":I
    :cond_1
    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 64
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;

    .end local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorHC;-><init>(Landroid/view/View;)V

    .line 65
    .restart local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;

    .end local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    invoke-direct {v0, p0}, Lcom/nineoldandroids/view/ViewPropertyAnimatorPreHC;-><init>(Landroid/view/View;)V

    .restart local v0    # "animator":Lcom/nineoldandroids/view/ViewPropertyAnimator;
    goto :goto_0
.end method


# virtual methods
.method public abstract alpha(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract alphaBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract cancel()V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract rotation(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract rotationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract scaleYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setDuration(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract setStartDelay(J)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract start()V
.end method

.method public abstract translationX(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationXBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationY(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract translationYBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract x(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract xBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract y(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method

.method public abstract yBy(F)Lcom/nineoldandroids/view/ViewPropertyAnimator;
.end method
