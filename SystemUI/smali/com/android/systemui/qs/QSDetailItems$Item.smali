.class public Lcom/android/systemui/qs/QSDetailItems$Item;
.super Ljava/lang/Object;
.source "QSDetailItems.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSDetailItems;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field public canDisconnect:Z

.field public icon:I

.field public icon2:I

.field public iconBackground:Z

.field public isActive:Z

.field public isInProgress:Z

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public overlay:Landroid/graphics/drawable/Drawable;

.field public tag:Ljava/lang/Object;

.field public tint:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->iconBackground:Z

    iput v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->tint:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->icon2:I

    iput-boolean v1, p0, Lcom/android/systemui/qs/QSDetailItems$Item;->isInProgress:Z

    return-void
.end method
