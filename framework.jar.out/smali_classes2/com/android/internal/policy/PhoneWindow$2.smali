.class Lcom/android/internal/policy/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    .prologue
    .line 3251
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->dispatchOnWindowDismissed(Z)V

    .line 3253
    return-void
.end method
