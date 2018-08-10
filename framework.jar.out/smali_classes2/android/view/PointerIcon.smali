.class public final Landroid/view/PointerIcon;
.super Ljava/lang/Object;
.source "PointerIcon.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/PointerIcon$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final CUSTOM_DEFAULT_ICON_ID:I = 0xff

.field public static final HOVERING_FLAG_ALWAYSSHOW:I = 0x1

.field public static final HOVERING_PENSELECT_POINTER_01:I = 0x4e35

.field public static final HOVERING_SCROLLICON_POINTER_01:I = 0x4e2b

.field public static final HOVERING_SCROLLICON_POINTER_02:I = 0x4e2c

.field public static final HOVERING_SCROLLICON_POINTER_03:I = 0x4e2d

.field public static final HOVERING_SCROLLICON_POINTER_04:I = 0x4e2e

.field public static final HOVERING_SCROLLICON_POINTER_05:I = 0x4e2f

.field public static final HOVERING_SCROLLICON_POINTER_06:I = 0x4e30

.field public static final HOVERING_SCROLLICON_POINTER_07:I = 0x4e31

.field public static final HOVERING_SCROLLICON_POINTER_08:I = 0x4e32

.field public static final HOVERING_SPENICON_CURSOR:I = 0x4e22

.field public static final HOVERING_SPENICON_CUSTOM:I = 0x4e20

.field public static final HOVERING_SPENICON_DEFAULT:I = 0x4e21

.field public static final HOVERING_SPENICON_DEFAULT_CUSTOM:I = 0x4e36

.field public static final HOVERING_SPENICON_DISABLE_DEFAULT_CUSTOM:I = 0x4e37

.field public static final HOVERING_SPENICON_HIDE:I = 0x4e33

.field public static final HOVERING_SPENICON_HOVERPOPUP_DEFAULT:I = 0x4e34

.field public static final HOVERING_SPENICON_MORE:I = 0x4e2a

.field public static final HOVERING_SPENICON_MOVE:I = 0x4e25

.field public static final HOVERING_SPENICON_RESIZE_01:I = 0x4e26

.field public static final HOVERING_SPENICON_RESIZE_02:I = 0x4e27

.field public static final HOVERING_SPENICON_RESIZE_03:I = 0x4e28

.field public static final HOVERING_SPENICON_RESIZE_04:I = 0x4e29

.field public static final HOVERING_SPENICON_SPLIT_01:I = 0x4e23

.field public static final HOVERING_SPENICON_SPLIT_02:I = 0x4e24

.field public static final MOUSEICON_CURSOR:I = 0x2776

.field public static final MOUSEICON_CUSTOM:I = 0x2774

.field public static final MOUSEICON_DEFAULT:I = 0x2775

.field public static final MOUSEICON_DEFAULT_KNOX_DESKTOP:I = 0x2789

.field public static final MOUSEICON_DEFAULT_KNOX_DESKTOP_LONG:I = 0x278e

.field public static final MOUSEICON_DRAWING:I = 0x2788

.field public static final MOUSEICON_MORE:I = 0x277e

.field public static final MOUSEICON_MOVE:I = 0x2779

.field public static final MOUSEICON_POINTER_01:I = 0x277f

.field public static final MOUSEICON_POINTER_02:I = 0x2780

.field public static final MOUSEICON_POINTER_03:I = 0x2781

.field public static final MOUSEICON_POINTER_04:I = 0x2782

.field public static final MOUSEICON_POINTER_05:I = 0x2783

.field public static final MOUSEICON_POINTER_06:I = 0x2784

.field public static final MOUSEICON_POINTER_07:I = 0x2785

.field public static final MOUSEICON_POINTER_08:I = 0x2786

.field public static final MOUSEICON_RESIZE_01:I = 0x277a

.field public static final MOUSEICON_RESIZE_01_KNOX_DESKTOP:I = 0x278a

.field public static final MOUSEICON_RESIZE_02:I = 0x277b

.field public static final MOUSEICON_RESIZE_02_KNOX_DESKTOP:I = 0x278b

.field public static final MOUSEICON_RESIZE_03:I = 0x277c

.field public static final MOUSEICON_RESIZE_03_KNOX_DESKTOP:I = 0x278c

.field public static final MOUSEICON_RESIZE_04:I = 0x277d

.field public static final MOUSEICON_RESIZE_04_KNOX_DESKTOP:I = 0x278d

.field public static final MOUSEICON_SPLIT_01:I = 0x2777

.field public static final MOUSEICON_SPLIT_02:I = 0x2778

.field public static final MOUSEICON_TRANSPARENT:I = 0x2787

.field public static final SEM_TYPE_STYLUS_CURSOR:I = 0x4e22

.field public static final SEM_TYPE_STYLUS_DEFAULT:I = 0x4e21

.field public static final SEM_TYPE_STYLUS_HOVERPOPUP_DEFAULT:I = 0x4e34

.field public static final SEM_TYPE_STYLUS_MORE:I = 0x4e2a

.field public static final SEM_TYPE_STYLUS_MOVE:I = 0x4e25

.field public static final SEM_TYPE_STYLUS_PEN_SELECT:I = 0x4e35

.field public static final SEM_TYPE_STYLUS_RESIZE_HEIGHT:I = 0x4e27

.field public static final SEM_TYPE_STYLUS_SCROLL_DOWN:I = 0x4e2f

.field public static final SEM_TYPE_STYLUS_SCROLL_LEFT:I = 0x4e31

.field public static final SEM_TYPE_STYLUS_SCROLL_RIGHT:I = 0x4e2d

.field public static final SEM_TYPE_STYLUS_SCROLL_UP:I = 0x4e2b

.field public static final SEM_TYPE_STYLUS_SPLIT_HORIZONTAL:I = 0x4e24

.field public static final SEM_TYPE_STYLUS_TRANSPARENT:I = 0x4e33

.field public static final STYLE_ARROW_BIG:I = 0x3e7

.field public static final STYLE_SPOT_FINGERHOVER:I = 0x2712

.field public static final STYLE_SPOT_HOVERING_SPEN:I = 0x4e20

.field private static final SUPPORT_DEX:Z = false

.field private static final TAG:Ljava/lang/String; = "PointerIcon"

.field public static final TYPE_ALIAS:I = 0x3f2

.field public static final TYPE_ALL_SCROLL:I = 0x3f5

.field public static final TYPE_ARROW:I = 0x3e8

.field public static final TYPE_CELL:I = 0x3ee

.field public static final TYPE_CONTEXT_MENU:I = 0x3e9

.field public static final TYPE_COPY:I = 0x3f3

.field public static final TYPE_CROSSHAIR:I = 0x3ef

.field public static final TYPE_CUSTOM:I = -0x1

.field public static final TYPE_DEFAULT:I = 0x3e8

.field public static final TYPE_GRAB:I = 0x3fc

.field public static final TYPE_GRABBING:I = 0x3fd

.field public static final TYPE_HAND:I = 0x3ea

.field public static final TYPE_HELP:I = 0x3eb

.field public static final TYPE_HORIZONTAL_DOUBLE_ARROW:I = 0x3f6

.field public static final TYPE_NOT_SPECIFIED:I = 0x1

.field public static final TYPE_NO_DROP:I = 0x3f4

.field public static final TYPE_NULL:I = 0x0

.field private static final TYPE_OEM_FIRST:I = 0x2710

.field public static final TYPE_SPOT_ANCHOR:I = 0x7d2

.field public static final TYPE_SPOT_HOVER:I = 0x7d0

.field public static final TYPE_SPOT_TOUCH:I = 0x7d1

.field public static final TYPE_TEXT:I = 0x3f0

.field public static final TYPE_TOP_LEFT_DIAGONAL_DOUBLE_ARROW:I = 0x3f9

.field public static final TYPE_TOP_RIGHT_DIAGONAL_DOUBLE_ARROW:I = 0x3f8

.field public static final TYPE_VERTICAL_DOUBLE_ARROW:I = 0x3f7

.field public static final TYPE_VERTICAL_TEXT:I = 0x3f1

.field public static final TYPE_WAIT:I = 0x3ec

.field public static final TYPE_ZOOM_IN:I = 0x3fa

.field public static final TYPE_ZOOM_OUT:I = 0x3fb

.field private static final gNullIcon:Landroid/view/PointerIcon;

.field private static final gSystemIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/PointerIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static mCurrentDensity:I

.field public static mResolutionChangedForMouseIcon:Z

.field public static mResolutionChangedForSpenIcon:Z

.field public static mThemeApplied:Z

.field public static sDexMode:Z

.field private static sInputManager:Landroid/hardware/input/IInputManager;

.field private static final sStaticInitInput:Ljava/lang/Object;

.field private static sUseLargeIcons:Z


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapFrames:[Landroid/graphics/Bitmap;

.field private mDurationPerFrame:I

.field private mHotSpotX:F

.field private mHotSpotY:F

.field private mSystemIconResourceId:I

.field private mType:I


# direct methods
.method static synthetic -set0(Landroid/view/PointerIcon;I)I
    .locals 0

    iput p1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/view/PointerIcon;->createDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->createSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    sput-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    sput-boolean v1, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    sput-boolean v1, Landroid/view/PointerIcon;->mThemeApplied:Z

    sput v1, Landroid/view/PointerIcon;->mCurrentDensity:I

    sput-boolean v1, Landroid/view/PointerIcon;->mResolutionChangedForSpenIcon:Z

    sput-boolean v1, Landroid/view/PointerIcon;->mResolutionChangedForMouseIcon:Z

    sput-boolean v1, Landroid/view/PointerIcon;->sDexMode:Z

    new-instance v0, Landroid/view/PointerIcon$1;

    invoke-direct {v0}, Landroid/view/PointerIcon$1;-><init>()V

    sput-object v0, Landroid/view/PointerIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/view/PointerIcon;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/PointerIcon;-><init>(I)V

    return-void
.end method

.method public static clearSystemIcons()V
    .locals 2

    const-string/jumbo v0, "PointerIcon"

    const-string/jumbo v1, "clearSystemIcons"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x2787

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    return-void
.end method

.method public static create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->createIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private static createDefaultIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Landroid/view/PointerIcon;->createIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private static createIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;
    .locals 3

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bitmap must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->validateHotSpot(Landroid/graphics/Bitmap;FF)V

    new-instance v0, Landroid/view/PointerIcon;

    invoke-direct {v0, p3}, Landroid/view/PointerIcon;-><init>(I)V

    iput-object p0, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iput p1, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    iput p2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    return-object v0
.end method

.method private static createSpenIcon(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;
    .locals 1

    const/16 v0, 0x4e20

    invoke-static {p0, p1, p2, v0}, Landroid/view/PointerIcon;->createIcon(Landroid/graphics/Bitmap;FFI)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 1

    const/16 v0, 0x3e8

    invoke-static {p0, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method private static getInputManager()Landroid/hardware/input/IInputManager;
    .locals 2

    sget-object v1, Landroid/view/PointerIcon;->sStaticInitInput:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "input"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v0

    sput-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;

    :cond_0
    sget-object v0, Landroid/view/PointerIcon;->sInputManager:Landroid/hardware/input/IInputManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNullIcon()Landroid/view/PointerIcon;
    .locals 1

    sget-object v0, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v0
.end method

.method public static getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;
    .locals 11

    const/16 v6, 0x2710

    const/16 v10, 0x3e8

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p0, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "context must not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-nez p1, :cond_1

    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    return-object v5

    :cond_1
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    if-eqz v2, :cond_2

    return-object v2

    :cond_2
    invoke-static {p1}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    if-ne v4, v8, :cond_3

    const/16 v5, 0x4e20

    if-lt p1, v5, :cond_4

    const/16 v5, 0x4e21

    invoke-static {v5}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    :cond_3
    :goto_0
    if-lt p1, v6, :cond_6

    sget-object v5, Lcom/android/internal/R$styleable;->DeviceDefault_Pointer:[I

    const v6, 0x1110147

    invoke-virtual {p0, v7, v5, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_1
    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ne v3, v8, :cond_9

    const-string/jumbo v5, "PointerIcon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Missing theme resources for pointer icon type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v10, :cond_8

    sget-object v5, Landroid/view/PointerIcon;->gNullIcon:Landroid/view/PointerIcon;

    :goto_2
    return-object v5

    :cond_4
    if-lt p1, v6, :cond_5

    const/16 v5, 0x2789

    invoke-static {v5}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    goto :goto_0

    :cond_5
    invoke-static {v10}, Landroid/view/PointerIcon;->getSystemIconTypeIndex(I)I

    move-result v4

    goto :goto_0

    :cond_6
    sget-boolean v5, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    if-eqz v5, :cond_7

    const v1, 0x103032a

    :goto_3
    sget-object v5, Lcom/android/internal/R$styleable;->Pointer:[I

    invoke-virtual {p0, v7, v5, v9, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_1

    :cond_7
    const v1, 0x103032e

    goto :goto_3

    :cond_8
    invoke-static {p0, v10}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v5

    goto :goto_2

    :cond_9
    new-instance v2, Landroid/view/PointerIcon;

    invoke-direct {v2, p1}, Landroid/view/PointerIcon;-><init>(I)V

    const/high16 v5, -0x1000000

    and-int/2addr v5, v3

    const/high16 v6, 0x1000000

    if-ne v5, v6, :cond_a

    iput v3, v2, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    :goto_4
    sget-object v5, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object v2

    :cond_a
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, p0, v5, v3}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    goto :goto_4
.end method

.method private static getSystemIconTypeIndex(I)I
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    return v2

    :sswitch_1
    const/16 v0, 0xe

    return v0

    :sswitch_2
    const/16 v0, 0xf

    return v0

    :sswitch_3
    const/16 v0, 0xd

    return v0

    :sswitch_4
    const/16 v0, 0x9

    return v0

    :sswitch_5
    return v4

    :sswitch_6
    const/16 v0, 0xa

    return v0

    :sswitch_7
    const/16 v0, 0x15

    return v0

    :sswitch_8
    return v3

    :sswitch_9
    const/4 v0, 0x6

    return v0

    :sswitch_a
    const/16 v0, 0x10

    return v0

    :sswitch_b
    const/16 v0, 0x14

    return v0

    :sswitch_c
    return v0

    :sswitch_d
    const/4 v0, 0x5

    return v0

    :sswitch_e
    return v1

    :sswitch_f
    const/16 v0, 0xc

    return v0

    :sswitch_10
    const/16 v0, 0xb

    return v0

    :sswitch_11
    const/16 v0, 0x13

    return v0

    :sswitch_12
    const/16 v0, 0x12

    return v0

    :sswitch_13
    const/16 v0, 0x11

    return v0

    :sswitch_14
    const/16 v0, 0x16

    return v0

    :sswitch_15
    const/16 v0, 0x17

    return v0

    :sswitch_16
    const/4 v0, 0x7

    return v0

    :sswitch_17
    const/16 v0, 0x8

    return v0

    :sswitch_18
    return v3

    :sswitch_19
    return v0

    :sswitch_1a
    const/16 v0, 0x20

    return v0

    :sswitch_1b
    const/16 v0, 0x21

    return v0

    :sswitch_1c
    const/4 v0, 0x6

    return v0

    :sswitch_1d
    const/16 v0, 0xc

    return v0

    :sswitch_1e
    const/16 v0, 0xd

    return v0

    :sswitch_1f
    const/16 v0, 0xe

    return v0

    :sswitch_20
    const/16 v0, 0xf

    return v0

    :sswitch_21
    const/4 v0, 0x5

    return v0

    :sswitch_22
    const/16 v0, 0x18

    return v0

    :sswitch_23
    const/16 v0, 0x19

    return v0

    :sswitch_24
    const/16 v0, 0x1a

    return v0

    :sswitch_25
    const/16 v0, 0x1b

    return v0

    :sswitch_26
    const/16 v0, 0x1c

    return v0

    :sswitch_27
    const/16 v0, 0x1d

    return v0

    :sswitch_28
    const/16 v0, 0x1e

    return v0

    :sswitch_29
    const/16 v0, 0x1f

    return v0

    :sswitch_2a
    const/16 v0, 0x2d

    return v0

    :sswitch_2b
    return v4

    :sswitch_2c
    return v1

    :sswitch_2d
    const/16 v0, 0x8

    return v0

    :sswitch_2e
    const/16 v0, 0x9

    return v0

    :sswitch_2f
    const/16 v0, 0xa

    return v0

    :sswitch_30
    const/16 v0, 0xb

    return v0

    :sswitch_31
    return v2

    :sswitch_32
    const/16 v0, 0x22

    return v0

    :sswitch_33
    const/16 v0, 0x23

    return v0

    :sswitch_34
    const/16 v0, 0x2b

    return v0

    :sswitch_35
    const/16 v0, 0x2c

    return v0

    :sswitch_36
    const/16 v0, 0x26

    return v0

    :sswitch_37
    const/16 v0, 0x27

    return v0

    :sswitch_38
    const/16 v0, 0x28

    return v0

    :sswitch_39
    const/16 v0, 0x29

    return v0

    :sswitch_3a
    const/16 v0, 0x2a

    return v0

    :sswitch_3b
    const/16 v0, 0x25

    return v0

    :sswitch_3c
    const/16 v0, 0x10

    return v0

    :sswitch_3d
    const/16 v0, 0x11

    return v0

    :sswitch_3e
    const/16 v0, 0x12

    return v0

    :sswitch_3f
    const/16 v0, 0x13

    return v0

    :sswitch_40
    const/16 v0, 0x14

    return v0

    :sswitch_41
    const/16 v0, 0x15

    return v0

    :sswitch_42
    const/16 v0, 0x16

    return v0

    :sswitch_43
    const/16 v0, 0x17

    return v0

    :sswitch_44
    const/16 v0, 0x24

    return v0

    :sswitch_45
    const/4 v0, 0x7

    return v0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_4
        0x3eb -> :sswitch_6
        0x3ec -> :sswitch_7
        0x3ee -> :sswitch_8
        0x3ef -> :sswitch_9
        0x3f0 -> :sswitch_a
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_c
        0x3f3 -> :sswitch_d
        0x3f4 -> :sswitch_f
        0x3f5 -> :sswitch_e
        0x3f6 -> :sswitch_10
        0x3f7 -> :sswitch_11
        0x3f8 -> :sswitch_12
        0x3f9 -> :sswitch_13
        0x3fa -> :sswitch_14
        0x3fb -> :sswitch_15
        0x3fc -> :sswitch_16
        0x3fd -> :sswitch_17
        0x7d0 -> :sswitch_1
        0x7d1 -> :sswitch_2
        0x7d2 -> :sswitch_3
        0x2775 -> :sswitch_18
        0x2776 -> :sswitch_19
        0x2777 -> :sswitch_1a
        0x2778 -> :sswitch_1b
        0x2779 -> :sswitch_1c
        0x277a -> :sswitch_1d
        0x277b -> :sswitch_1e
        0x277c -> :sswitch_1f
        0x277d -> :sswitch_20
        0x277e -> :sswitch_21
        0x277f -> :sswitch_22
        0x2780 -> :sswitch_23
        0x2781 -> :sswitch_24
        0x2782 -> :sswitch_25
        0x2783 -> :sswitch_26
        0x2784 -> :sswitch_27
        0x2785 -> :sswitch_28
        0x2786 -> :sswitch_29
        0x2787 -> :sswitch_2a
        0x2788 -> :sswitch_2b
        0x2789 -> :sswitch_2c
        0x278a -> :sswitch_2d
        0x278b -> :sswitch_2e
        0x278c -> :sswitch_2f
        0x278d -> :sswitch_30
        0x278e -> :sswitch_31
        0x4e21 -> :sswitch_32
        0x4e22 -> :sswitch_33
        0x4e23 -> :sswitch_34
        0x4e24 -> :sswitch_35
        0x4e25 -> :sswitch_36
        0x4e26 -> :sswitch_37
        0x4e27 -> :sswitch_38
        0x4e28 -> :sswitch_39
        0x4e29 -> :sswitch_3a
        0x4e2a -> :sswitch_3b
        0x4e2b -> :sswitch_3c
        0x4e2c -> :sswitch_3d
        0x4e2d -> :sswitch_3e
        0x4e2e -> :sswitch_3f
        0x4e2f -> :sswitch_40
        0x4e30 -> :sswitch_41
        0x4e31 -> :sswitch_42
        0x4e32 -> :sswitch_43
        0x4e33 -> :sswitch_44
        0x4e35 -> :sswitch_45
    .end sparse-switch
.end method

.method public static load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "resources must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Landroid/view/PointerIcon;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    invoke-direct {v0, v2, p0, p1}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method private loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V
    .locals 17

    invoke-virtual/range {p2 .. p3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    :try_start_0
    const-string/jumbo v14, "pointer-icon"

    invoke-static {v12, v14}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    sget-object v14, Lcom/android/internal/R$styleable;->PointerIcon:[I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v9

    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-virtual {v1, v15, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    if-nez v3, :cond_0

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "<pointer-icon> is missing bitmap attribute."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :catch_0
    move-exception v6

    :try_start_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Exception parsing pointer icon resource."

    invoke-direct {v14, v15, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v14

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    throw v14

    :cond_0
    if-nez p1, :cond_2

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v14}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_0
    instance-of v14, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v14, :cond_1

    move-object v2, v4

    check-cast v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v7

    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v14, 0x1

    if-ne v7, v14, :cond_3

    const-string/jumbo v14, "PointerIcon"

    const-string/jumbo v15, "Animation icon with single frame -- simply treating the first frame as a normal bitmap icon."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    instance-of v14, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_7

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "<pointer-icon> bitmap attribute must refer to a bitmap drawable."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/PointerIcon;->mDurationPerFrame:I

    add-int/lit8 v14, v7, -0x1

    new-array v14, v14, [Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    const/4 v11, 0x1

    :goto_1
    if-ge v11, v7, :cond_1

    invoke-virtual {v2, v11}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v14, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v14, :cond_4

    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "Frame of an animated pointer icon must refer to a bitmap drawable."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    if-ne v14, v13, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    if-eq v14, v8, :cond_6

    :cond_5
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The bitmap size of "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "-th frame "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "is different. All frames should have the exact same size and "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "share the same hotspot."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/PointerIcon;->mBitmapFrames:[Landroid/graphics/Bitmap;

    add-int/lit8 v15, v11, -0x1

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v16

    aput-object v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput v9, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    move-object/from16 v0, p0

    iput v10, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    return-void
.end method

.method public static semSetDefaultPointerIcon(ILandroid/view/PointerIcon;)V
    .locals 4

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetDefaultPointerIcon NULL , calling pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/hardware/input/IInputManager;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "PointerIcon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetDefaultPointerIcon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", calling pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    iget v1, p1, Landroid/view/PointerIcon;->mType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/16 v1, 0x4e20

    iput v1, p1, Landroid/view/PointerIcon;->mType:I

    :cond_1
    invoke-static {}, Landroid/view/PointerIcon;->getInputManager()Landroid/hardware/input/IInputManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setDefaultPointerIcon(Landroid/view/PointerIcon;)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public static setDexMode(Z)V
    .locals 0

    sput-boolean p0, Landroid/view/PointerIcon;->sDexMode:Z

    return-void
.end method

.method public static setUseLargeIcons(Z)V
    .locals 1

    sput-boolean p0, Landroid/view/PointerIcon;->sUseLargeIcons:Z

    sget-object v0, Landroid/view/PointerIcon;->gSystemIcons:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private static validateHotSpot(Landroid/graphics/Bitmap;FF)V
    .locals 2

    const/4 v1, 0x0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    cmpg-float v0, p2, v1

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "y hotspot lies outside of the bitmap area"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/view/PointerIcon;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    iget v2, v0, Landroid/view/PointerIcon;->mType:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iget v2, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eq v1, v2, :cond_4

    :cond_3
    return v3

    :cond_4
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v2, v0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-ne v1, v2, :cond_5

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotX:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    :cond_5
    return v3

    :cond_6
    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    iget v2, v0, Landroid/view/PointerIcon;->mHotSpotY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_5

    :cond_7
    return v4
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Landroid/view/PointerIcon;->mType:I

    return v0
.end method

.method public load(Landroid/content/Context;)Landroid/view/PointerIcon;
    .locals 3

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "context must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    :cond_1
    return-object p0

    :cond_2
    new-instance v0, Landroid/view/PointerIcon;

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-direct {v0, v1}, Landroid/view/PointerIcon;-><init>(I)V

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    iput v1, v0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-direct {v0, p1, v1, v2}, Landroid/view/PointerIcon;->loadResource(Landroid/content/Context;Landroid/content/res/Resources;I)V

    return-object v0
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Landroid/view/PointerIcon;->mType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    :try_start_0
    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/PointerIcon;->mType:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/PointerIcon;->mSystemIconResourceId:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/view/PointerIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotX:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/view/PointerIcon;->mHotSpotY:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
