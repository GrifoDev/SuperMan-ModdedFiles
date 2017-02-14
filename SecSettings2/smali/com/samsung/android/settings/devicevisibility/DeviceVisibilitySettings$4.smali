.class Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;
.super Ljava/lang/Object;
.source "DeviceVisibilitySettings.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private rect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;->rect:Landroid/graphics/Rect;

    :cond_0
    :goto_0
    return v6

    :cond_1
    if-ne v0, v5, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;->rect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DeviceVisibilitySettings"

    const-string/jumbo v2, "setOnTouchListener"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings$4;->this$0:Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;

    invoke-static {v1, v5}, Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;->-set0(Lcom/samsung/android/settings/devicevisibility/DeviceVisibilitySettings;Z)Z

    goto :goto_0
.end method
