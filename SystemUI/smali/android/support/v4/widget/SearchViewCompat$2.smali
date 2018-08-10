.class final Landroid/support/v4/widget/SearchViewCompat$2;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"

# interfaces
.implements Landroid/widget/SearchView$OnCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SearchViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;


# virtual methods
.method public onClose()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;

    invoke-interface {v0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;->onClose()Z

    move-result v0

    return v0
.end method
