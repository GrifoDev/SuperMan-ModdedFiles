.class public final Landroid/support/v17/leanback/widget/BackgroundHelper;
.super Ljava/lang/Object;
.source "BackgroundHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperKitkatImpl;,
        Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperStubImpl;,
        Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;
    }
.end annotation


# static fields
.field static final sImpl:Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperKitkatImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperKitkatImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/BackgroundHelper;->sImpl:Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperStubImpl;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperStubImpl;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/BackgroundHelper;->sImpl:Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setBackgroundPreservingAlpha(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    sget-object v0, Landroid/support/v17/leanback/widget/BackgroundHelper;->sImpl:Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v17/leanback/widget/BackgroundHelper$BackgroundHelperVersionImpl;->setBackgroundPreservingAlpha(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
