.class public Lcom/android/setupwizardlib/template/ButtonFooterMixin;
.super Ljava/lang/Object;
.source "ButtonFooterMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFooterStub:Landroid/view/ViewStub;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/setupwizardlib/R$id;->suw_layout_footer:I

    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/setupwizardlib/template/ButtonFooterMixin;->mFooterStub:Landroid/view/ViewStub;

    return-void
.end method
