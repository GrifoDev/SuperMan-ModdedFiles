.class Lcom/android/internal/policy/PhoneWindow$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ALPHA_DECREASE:F = 0.5f


# instance fields
.field private mIsTranslucent:Z

.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$3;->mIsTranslucent:Z

    return-void
.end method


# virtual methods
.method public onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v2, 0x400

    const/16 v3, 0x600

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    return-void
.end method

.method public onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V
    .locals 4

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    float-to-int v2, p3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/PhoneWindow;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v0, 0x0

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v2, :cond_0

    const/16 v0, 0x400

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/PhoneWindow$3;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/16 v3, 0x600

    invoke-virtual {v2, v0, v3}, Landroid/view/Window;->setFlags(II)V

    return-void

    :cond_0
    const/16 v0, 0x200

    goto :goto_0
.end method
