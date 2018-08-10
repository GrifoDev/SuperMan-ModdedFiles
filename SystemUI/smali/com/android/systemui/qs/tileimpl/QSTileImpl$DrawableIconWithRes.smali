.class public Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;
.source "QSTileImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableIconWithRes"
.end annotation


# instance fields
.field private final mId:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;

    iget v1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    iget v2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIconWithRes;->mId:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
