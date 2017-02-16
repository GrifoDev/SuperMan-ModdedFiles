.class public Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
.super Landroid/support/v17/leanback/widget/Grid$Location;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/StaggeredGrid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field public offset:I

.field public size:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput p2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    iput p3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return-void
.end method
