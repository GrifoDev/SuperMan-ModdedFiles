.class public Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MetaKeyBoundsChecker"
.end annotation


# static fields
.field public static final sInvalidBounds:Landroid/graphics/Rect;

.field public static final sMinimizeBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInvalidBounds(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sInvalidBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isMinimizeBounds(Landroid/graphics/Rect;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$MetaKeyBoundsChecker;->sMinimizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
