.class Landroid/widget/RemoteViews$AddInnerShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddInnerShadowAction"
.end annotation


# static fields
.field public static final TAG:I = 0x2b


# instance fields
.field angle:F

.field blendingOpacity:F

.field color:I

.field final methodName:Ljava/lang/String;

.field offset:F

.field softness:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFFFIF)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addInnerShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    iput p4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    iput p5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    iput p6, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    iput p7, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addInnerShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->methodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6

    iget v1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    iget v3, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    iget v4, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    iget v5, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->semAddInnerShadowTextEffect(FFFIF)I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AddInnerShadowAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0x2b

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddInnerShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
