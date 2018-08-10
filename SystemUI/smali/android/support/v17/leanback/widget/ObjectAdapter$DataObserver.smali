.class public abstract Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.super Ljava/lang/Object;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DataObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    return-void
.end method
