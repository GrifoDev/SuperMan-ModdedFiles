.class public Landroid/support/v17/leanback/widget/Row;
.super Ljava/lang/Object;
.source "Row.java"


# instance fields
.field private mFlags:I

.field private mHeaderItem:Landroid/support/v17/leanback/widget/HeaderItem;

.field private mId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Row;->mFlags:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v17/leanback/widget/Row;->mId:J

    return-void
.end method


# virtual methods
.method public final getHeaderItem()Landroid/support/v17/leanback/widget/HeaderItem;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/Row;->mHeaderItem:Landroid/support/v17/leanback/widget/HeaderItem;

    return-object v0
.end method

.method public isRenderedAsRowView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
