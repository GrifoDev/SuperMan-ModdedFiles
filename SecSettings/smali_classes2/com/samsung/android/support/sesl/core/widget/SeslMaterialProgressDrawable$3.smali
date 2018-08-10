.class Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;
.super Ljava/lang/Object;
.source "SeslMaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;


# direct methods
.method constructor <init>(Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable$3;->this$0:Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/sesl/core/widget/SeslMaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
