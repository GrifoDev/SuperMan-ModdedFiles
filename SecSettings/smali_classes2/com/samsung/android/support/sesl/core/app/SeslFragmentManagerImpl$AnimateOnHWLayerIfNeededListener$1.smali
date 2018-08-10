.class Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;
.super Ljava/lang/Object;
.source "SeslFragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener$1;->this$0:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
