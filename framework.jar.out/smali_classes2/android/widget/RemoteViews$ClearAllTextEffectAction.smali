.class Landroid/widget/RemoteViews$ClearAllTextEffectAction;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearAllTextEffectAction"
.end annotation


# static fields
.field public static final TAG:I = 0x29


# instance fields
.field final methodName:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    const-string/jumbo v0, "clearAllTextEffect"

    iput-object v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->methodName:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2

    iget v1, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ClearAllTextEffectAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/widget/RemoteViews$ClearAllTextEffectAction;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
