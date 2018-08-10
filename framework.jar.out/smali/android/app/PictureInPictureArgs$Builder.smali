.class public Landroid/app/PictureInPictureArgs$Builder;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/PictureInPictureArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/app/PictureInPictureArgs;
    .locals 5

    new-instance v0, Landroid/app/PictureInPictureArgs;

    iget-object v1, p0, Landroid/app/PictureInPictureArgs$Builder;->mAspectRatio:Landroid/util/Rational;

    iget-object v2, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    iget-object v3, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs;)V

    return-object v0
.end method

.method public setActions(Ljava/util/List;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)",
            "Landroid/app/PictureInPictureArgs$Builder;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mUserActions:Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method public setAspectRatio(Landroid/util/Rational;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/PictureInPictureArgs$Builder;->mAspectRatio:Landroid/util/Rational;

    return-object p0
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)Landroid/app/PictureInPictureArgs$Builder;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs$Builder;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_0
.end method
