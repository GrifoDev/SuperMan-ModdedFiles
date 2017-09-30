.class public Lcom/android/contacts/common/util/SchedulingUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/android/contacts/common/util/SchedulingUtils$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/contacts/common/util/SchedulingUtils$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;Z)V

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
