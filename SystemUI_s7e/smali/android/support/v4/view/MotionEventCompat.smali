.class public final Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;-><init>(Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;)V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    :goto_0
    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$GingerbreadMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$EclairMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    return v0
.end method

.method public static getSource(Landroid/view/MotionEvent;)I
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getSource(Landroid/view/MotionEvent;)I

    move-result v0

    return v0
.end method

.method public static getX(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getX(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/MotionEvent;I)F
    .locals 1

    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getY(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method
