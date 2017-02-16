.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;
    }
.end annotation


# static fields
.field static final SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SemDragAndDropAnimationCore"

.field static final TRANSLATE_ITEM_ANIM_DURATION:I = 0x12c


# instance fields
.field itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

.field private mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private mView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    return-object v0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;-><init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    .line 28
    return-void
.end method


# virtual methods
.method setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V
    .locals 0
    .param p1, "l"    # Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    .line 32
    return-void
.end method
