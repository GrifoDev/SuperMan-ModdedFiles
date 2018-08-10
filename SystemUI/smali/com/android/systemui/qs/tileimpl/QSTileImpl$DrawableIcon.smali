.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.super Lcom/android/systemui/plugins/qs/QSTile$Icon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIcon"
.end annotation


# instance fields
.field protected final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$Icon;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
