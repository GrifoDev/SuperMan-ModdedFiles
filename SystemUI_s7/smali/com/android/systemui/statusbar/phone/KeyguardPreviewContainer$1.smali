.class Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;
.super Landroid/graphics/drawable/Drawable;
.source "KeyguardPreviewContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardPreviewContainer;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
