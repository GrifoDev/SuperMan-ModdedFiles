.class Lcom/android/internal/policy/DecorView$ColorViewState;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field color:I

.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field present:Z

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;

.field visible:Z


# direct methods
.method constructor <init>(IIIILjava/lang/String;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iput p6, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    iput-object p5, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    return-void
.end method
