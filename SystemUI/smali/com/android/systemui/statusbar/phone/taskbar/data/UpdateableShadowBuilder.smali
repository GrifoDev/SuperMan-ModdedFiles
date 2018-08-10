.class abstract Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "UpdatableShadowBuilder.java"


# instance fields
.field private mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public clearSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/data/UpdateableShadowBuilder;->mSurface:Landroid/view/Surface;

    :cond_0
    return-void
.end method

.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method
