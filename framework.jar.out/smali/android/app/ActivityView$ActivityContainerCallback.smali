.class Landroid/app/ActivityView$ActivityContainerCallback;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityContainerCallback"
.end annotation


# instance fields
.field private final mActivityViewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/ActivityView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/ActivityView;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .locals 4

    iget-object v3, p0, Landroid/app/ActivityView$ActivityContainerCallback;->mActivityViewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/app/ActivityView;->-get2(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Landroid/app/ActivityView$ActivityContainerCallback$1;

    invoke-direct {v3, p0, v2, v0}, Landroid/app/ActivityView$ActivityContainerCallback$1;-><init>(Landroid/app/ActivityView$ActivityContainerCallback;Ljava/lang/ref/WeakReference;Landroid/app/ActivityView;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method
