.class Lcom/android/internal/app/ChooserActivity$RowScale;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowScale"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivity$RowScale$1;
    }
.end annotation


# static fields
.field private static final DURATION:I

.field public static final PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/internal/app/ChooserActivity$RowScale;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/app/ChooserActivity$RowScale$1;

    const-string/jumbo v1, "scale"

    invoke-direct {v0, v1}, Lcom/android/internal/app/ChooserActivity$RowScale$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/ChooserActivity$RowScale;->PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;FF)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAdapter:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    return-void

    :cond_0
    sget-object v0, Lcom/android/internal/app/ChooserActivity$RowScale;->PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/internal/app/ChooserActivity$RowScale$2;

    invoke-direct {v1, p0}, Lcom/android/internal/app/ChooserActivity$RowScale$2;-><init>(Lcom/android/internal/app/ChooserActivity$RowScale;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public get()F
    .locals 1

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mScale:F

    return v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/internal/app/ChooserActivity$RowScale;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    return-object p0
.end method

.method public startAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowScale;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_0
    return-void
.end method
