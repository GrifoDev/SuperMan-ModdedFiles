.class public Landroid/widget/AdapterView$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 799
    .local p0, "this":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView<TT;>.AdapterContextMenuInfo;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    iput-object p1, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 801
    iput p2, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 802
    iput-wide p3, p0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    .line 799
    return-void
.end method
