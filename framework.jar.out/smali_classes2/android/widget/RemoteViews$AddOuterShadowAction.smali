.class Landroid/widget/RemoteViews$AddOuterShadowAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddOuterShadowAction"
.end annotation


# static fields
.field public static final TAG:I = 0x2a


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

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addOuterShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    iput p4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    iput p5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    iput p6, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    iput p7, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addOuterShadowTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->methodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 6

    iget v1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    iget v3, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    iget v4, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    iget v5, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->semAddOuterShadowTextEffect(FFFIF)I

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AddOuterShadowAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0x2a

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->offset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->softness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddOuterShadowAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
