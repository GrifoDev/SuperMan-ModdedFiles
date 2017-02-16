.class public final Landroid/view/SemPointerIcon;
.super Ljava/lang/Object;
.source "SemPointerIcon.java"


# static fields
.field public static final MOUSE_OVER_POINTER_DEFAULT:I = 0x2775

.field public static final MOUSE_OVER_POINTER_DEFAULT_SMALL:I = 0x2af8

.field public static final MOUSE_OVER_POINTER_NONE:I = 0x2787

.field public static final STYLUS_HOVER_POINTER_DEFAULT:I = 0x4e21

.field public static final STYLUS_HOVER_POINTER_HOVERPOPUP_DEFAULT:I = 0x4e34

.field public static final STYLUS_HOVER_POINTER_MORE:I = 0x4e2a

.field public static final STYLUS_HOVER_POINTER_MOVE:I = 0x4e25

.field public static final STYLUS_HOVER_POINTER_NONE:I = 0x4e33

.field public static final STYLUS_HOVER_POINTER_PEN_SELECT:I = 0x4e35

.field public static final STYLUS_HOVER_POINTER_RESIZE_VERTICAL:I = 0x4e27

.field public static final STYLUS_HOVER_POINTER_SCROLL_DOWN:I = 0x4e2f

.field public static final STYLUS_HOVER_POINTER_SCROLL_LEFT:I = 0x4e31

.field public static final STYLUS_HOVER_POINTER_SCROLL_RIGHT:I = 0x4e2d

.field public static final STYLUS_HOVER_POINTER_SCROLL_UP:I = 0x4e2b

.field public static final STYLUS_HOVER_POINTER_SPLIT_HORIZONTAL:I = 0x4e24

.field private static final TAG:Ljava/lang/String; = "SemPointerIcon"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setIcon(II)V
    .locals 0
    .param p0, "deviceType"    # I
    .param p1, "iconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public static setIcon(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Point;)V
    .locals 0
    .param p0, "deviceType"    # I
    .param p1, "customIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotSpotPoint"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    return-void
.end method
