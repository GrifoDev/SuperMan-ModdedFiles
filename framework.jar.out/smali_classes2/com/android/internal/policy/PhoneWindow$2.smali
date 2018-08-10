.class Lcom/android/internal/policy/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks(Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowSwipeDismissed()V

    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    return-void
.end method
