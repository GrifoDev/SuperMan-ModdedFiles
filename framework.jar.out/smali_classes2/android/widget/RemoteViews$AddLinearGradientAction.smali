.class Landroid/widget/RemoteViews$AddLinearGradientAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddLinearGradientAction"
.end annotation


# static fields
.field public static final TAG:I = 0x2d


# instance fields
.field alphas:[F

.field angle:F

.field blendingOpacity:F

.field colors:[I

.field final methodName:Ljava/lang/String;

.field positions:[F

.field scale:F

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IFF[I[F[FF)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    iput p3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iput p4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iput-object p5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iput-object p6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iput-object p7, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iput p8, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "addLinearGradientTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->methodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7

    iget v1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    iget v2, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    iget-object v3, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    iget-object v4, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    iget-object v5, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    iget v6, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->semAddLinearGradientTextEffect(FF[I[F[FF)I

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AddLinearGradientAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->angle:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->scale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->colors:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->alphas:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget-object v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->positions:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    iget v0, p0, Landroid/widget/RemoteViews$AddLinearGradientAction;->blendingOpacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
