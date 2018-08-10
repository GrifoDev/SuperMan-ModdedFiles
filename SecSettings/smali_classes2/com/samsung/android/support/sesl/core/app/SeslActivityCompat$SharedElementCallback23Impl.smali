.class Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;
.super Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;
.source "SeslActivityCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback23Impl"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/SharedElementCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback21Impl;-><init>(Landroid/app/SharedElementCallback;)V

    return-void
.end method


# virtual methods
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/app/SharedElementCallback;

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslActivityCompat$SharedElementCallback23Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
