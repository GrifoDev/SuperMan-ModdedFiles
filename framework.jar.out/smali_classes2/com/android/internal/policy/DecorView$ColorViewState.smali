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
.field final attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field color:I

.field present:Z

.field targetVisibility:I

.field view:Landroid/view/View;

.field visible:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    return-void
.end method
